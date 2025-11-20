/*
==========================================
🔐 AUTHENTICATION SYSTEM SETUP
------------------------------------------
This script creates the authentication infrastructure for the ITI Examination System.

Components:
1. Users table - Stores authentication credentials and links to user types
2. sp_CreateUser - Creates new user accounts
3. sp_AuthenticateUser - Validates login credentials
4. sp_UpdateLastLogin - Updates last login timestamp
5. Test user data - Sample accounts for testing

Run this script in your Azure SQL Database.
==========================================
*/

USE ITI_Examination_System;
GO

-- ============================================================================
-- 1️⃣ CREATE USERS TABLE
-- ============================================================================

IF OBJECT_ID('dbo.Users', 'U') IS NOT NULL
    DROP TABLE dbo.Users;
GO

CREATE TABLE dbo.Users (
    User_ID INT IDENTITY(1,1) NOT NULL,
    Email NVARCHAR(200) NOT NULL,
    Password_Hash NVARCHAR(255) NOT NULL,  -- Will store bcrypt hash from backend
    User_Type NVARCHAR(50) NOT NULL,  -- 'Manager', 'Instructor', 'Student'

    -- Foreign keys to link to specific user type
    Student_ID INT NULL,
    Instructor_ID INT NULL,
    -- Note: Manager table doesn't exist, so we'll identify managers by User_Type only

    -- Account status and metadata
    Is_Active BIT NOT NULL DEFAULT 1,
    Last_Login DATETIME NULL,
    Created_At DATETIME NOT NULL DEFAULT GETDATE(),
    Updated_At DATETIME NULL,

    -- Constraints
    CONSTRAINT PK_Users PRIMARY KEY (User_ID),
    CONSTRAINT UQ_Users_Email UNIQUE (Email),
    CONSTRAINT CK_Users_Type CHECK (User_Type IN ('Manager', 'Instructor', 'Student')),
    CONSTRAINT FK_Users_Student FOREIGN KEY (Student_ID) REFERENCES Student(ST_ID),
    CONSTRAINT FK_Users_Instructor FOREIGN KEY (Instructor_ID) REFERENCES Instructor(Inst_ID),

    -- Business rules
    CONSTRAINT CK_Users_StudentLink CHECK (
        (User_Type = 'Student' AND Student_ID IS NOT NULL AND Instructor_ID IS NULL) OR
        (User_Type = 'Instructor' AND Instructor_ID IS NOT NULL AND Student_ID IS NULL) OR
        (User_Type = 'Manager' AND Student_ID IS NULL AND Instructor_ID IS NULL)
    )
);
GO

-- Create indexes for performance
CREATE INDEX IX_Users_Email ON Users(Email);
CREATE INDEX IX_Users_Type ON Users(User_Type);
CREATE INDEX IX_Users_Active ON Users(Is_Active);
GO

PRINT '✅ Users table created successfully';
GO


-- ============================================================================
-- 2️⃣ STORED PROCEDURE: sp_CreateUser
-- ============================================================================
-- Purpose: Create a new user account
-- Parameters:
--   @Email - User's email address
--   @Password_Hash - Hashed password (from backend bcrypt)
--   @User_Type - 'Manager', 'Instructor', or 'Student'
--   @Student_ID - (Optional) Link to Student table
--   @Instructor_ID - (Optional) Link to Instructor table
-- Returns: User_ID if successful, error message if failed
-- ============================================================================

IF OBJECT_ID('dbo.sp_CreateUser', 'P') IS NOT NULL
    DROP PROCEDURE dbo.sp_CreateUser;
GO

CREATE PROCEDURE dbo.sp_CreateUser
    @Email NVARCHAR(200),
    @Password_Hash NVARCHAR(255),
    @User_Type NVARCHAR(50),
    @Student_ID INT = NULL,
    @Instructor_ID INT = NULL
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        -- Validate email doesn't already exist
        IF EXISTS (SELECT 1 FROM Users WHERE Email = @Email)
        BEGIN
            RAISERROR('Email already exists', 16, 1);
            RETURN -1;
        END

        -- Validate user type
        IF @User_Type NOT IN ('Manager', 'Instructor', 'Student')
        BEGIN
            RAISERROR('Invalid user type. Must be Manager, Instructor, or Student', 16, 1);
            RETURN -1;
        END

        -- Validate Student_ID exists if provided
        IF @Student_ID IS NOT NULL AND NOT EXISTS (SELECT 1 FROM Student WHERE ST_ID = @Student_ID)
        BEGIN
            RAISERROR('Student_ID does not exist', 16, 1);
            RETURN -1;
        END

        -- Validate Instructor_ID exists if provided
        IF @Instructor_ID IS NOT NULL AND NOT EXISTS (SELECT 1 FROM Instructor WHERE Inst_ID = @Instructor_ID)
        BEGIN
            RAISERROR('Instructor_ID does not exist', 16, 1);
            RETURN -1;
        END

        -- Insert new user
        INSERT INTO Users (Email, Password_Hash, User_Type, Student_ID, Instructor_ID, Is_Active, Created_At)
        VALUES (@Email, @Password_Hash, @User_Type, @Student_ID, @Instructor_ID, 1, GETDATE());

        DECLARE @NewUserID INT = SCOPE_IDENTITY();

        COMMIT TRANSACTION;

        -- Return the new User_ID
        SELECT @NewUserID AS User_ID, 'User created successfully' AS Message;

    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        RAISERROR(@ErrorMessage, 16, 1);
    END CATCH
END;
GO

PRINT '✅ sp_CreateUser procedure created successfully';
GO


-- ============================================================================
-- 3️⃣ STORED PROCEDURE: sp_AuthenticateUser
-- ============================================================================
-- Purpose: Retrieve user information for authentication
-- Note: Password verification will be done in the backend using bcrypt
-- This SP only returns user data for the backend to verify
-- Parameters:
--   @Email - User's email address
-- Returns: User information if email exists
-- ============================================================================

IF OBJECT_ID('dbo.sp_AuthenticateUser', 'P') IS NOT NULL
    DROP PROCEDURE dbo.sp_AuthenticateUser;
GO

CREATE PROCEDURE dbo.sp_AuthenticateUser
    @Email NVARCHAR(200)
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        -- Get user information
        SELECT
            u.User_ID,
            u.Email,
            u.Password_Hash,
            u.User_Type,
            u.Student_ID,
            u.Instructor_ID,
            u.Is_Active,
            u.Last_Login,

            -- Get user's full name based on type
            CASE
                WHEN u.User_Type = 'Student' THEN s.ST_Name
                WHEN u.User_Type = 'Instructor' THEN i.Inst_Name
                WHEN u.User_Type = 'Manager' THEN 'Training Manager'
                ELSE 'Unknown'
            END AS Full_Name,

            -- Get additional info for students
            s.Intake_ID,
            s.Track_id,
            s.Bran_ID,
            t.Track_Name,
            b.Bran_Name,

            -- Get additional info for instructors
            i.Dep_ID,
            d.Dep_Name

        FROM Users u
        LEFT JOIN Student s ON u.Student_ID = s.ST_ID
        LEFT JOIN Track t ON s.Track_id = t.Track_ID
        LEFT JOIN Branch b ON s.Bran_ID = b.Bran_ID
        LEFT JOIN Instructor i ON u.Instructor_ID = i.Inst_ID
        LEFT JOIN Department d ON i.Dep_ID = d.Dep_ID

        WHERE u.Email = @Email;

        -- Return message if user not found
        IF @@ROWCOUNT = 0
        BEGIN
            SELECT NULL AS User_ID, 'User not found' AS Message;
        END

    END TRY
    BEGIN CATCH
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        RAISERROR(@ErrorMessage, 16, 1);
    END CATCH
END;
GO

PRINT '✅ sp_AuthenticateUser procedure created successfully';
GO


-- ============================================================================
-- 4️⃣ STORED PROCEDURE: sp_UpdateLastLogin
-- ============================================================================
-- Purpose: Update last login timestamp when user logs in
-- Parameters:
--   @User_ID - User's ID
-- ============================================================================

IF OBJECT_ID('dbo.sp_UpdateLastLogin', 'P') IS NOT NULL
    DROP PROCEDURE dbo.sp_UpdateLastLogin;
GO

CREATE PROCEDURE dbo.sp_UpdateLastLogin
    @User_ID INT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        UPDATE Users
        SET Last_Login = GETDATE(),
            Updated_At = GETDATE()
        WHERE User_ID = @User_ID;

        SELECT 'Last login updated' AS Message;

    END TRY
    BEGIN CATCH
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        RAISERROR(@ErrorMessage, 16, 1);
    END CATCH
END;
GO

PRINT '✅ sp_UpdateLastLogin procedure created successfully';
GO


-- ============================================================================
-- 5️⃣ STORED PROCEDURE: sp_GetUserByID
-- ============================================================================
-- Purpose: Get user information by User_ID (for JWT token validation)
-- Parameters:
--   @User_ID - User's ID
-- ============================================================================

IF OBJECT_ID('dbo.sp_GetUserByID', 'P') IS NOT NULL
    DROP PROCEDURE dbo.sp_GetUserByID;
GO

CREATE PROCEDURE dbo.sp_GetUserByID
    @User_ID INT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        SELECT
            u.User_ID,
            u.Email,
            u.User_Type,
            u.Student_ID,
            u.Instructor_ID,
            u.Is_Active,
            u.Last_Login,

            -- Get user's full name based on type
            CASE
                WHEN u.User_Type = 'Student' THEN s.ST_Name
                WHEN u.User_Type = 'Instructor' THEN i.Inst_Name
                WHEN u.User_Type = 'Manager' THEN 'Training Manager'
                ELSE 'Unknown'
            END AS Full_Name,

            -- Get additional info
            s.Intake_ID,
            s.Track_id,
            s.Bran_ID,
            t.Track_Name,
            b.Bran_Name,
            i.Dep_ID,
            d.Dep_Name

        FROM Users u
        LEFT JOIN Student s ON u.Student_ID = s.ST_ID
        LEFT JOIN Track t ON s.Track_id = t.Track_ID
        LEFT JOIN Branch b ON s.Bran_ID = b.Bran_ID
        LEFT JOIN Instructor i ON u.Instructor_ID = i.Inst_ID
        LEFT JOIN Department d ON i.Dep_ID = d.Dep_ID

        WHERE u.User_ID = @User_ID AND u.Is_Active = 1;

    END TRY
    BEGIN CATCH
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        RAISERROR(@ErrorMessage, 16, 1);
    END CATCH
END;
GO

PRINT '✅ sp_GetUserByID procedure created successfully';
GO


-- ============================================================================
-- 6️⃣ TEST DATA - Sample Users
-- ============================================================================
-- Note: Password hashes will be generated by the backend using bcrypt
-- For testing, we'll use a placeholder hash '$2b$12$...'
-- The actual password will be set when you first create users via the API
--
-- For now, I'll create users with a temporary hash that represents 'password123'
-- You should change these passwords after first login!
-- ============================================================================

PRINT '';
PRINT '==========================================';
PRINT '📝 Creating test users...';
PRINT 'Note: Passwords will need to be set via the backend API';
PRINT 'Temporary password for all test users: password123';
PRINT '==========================================';
PRINT '';

-- The hash below is bcrypt hash of 'password123' with salt rounds = 12
-- Generated using: bcrypt.hashpw(b'password123', bcrypt.gensalt(12))
DECLARE @TempPasswordHash NVARCHAR(255) = '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewY5GyYvXq6MXHDa';

-- Get some sample Student IDs and Instructor IDs
DECLARE @Student1_ID INT, @Student2_ID INT, @Student3_ID INT;
DECLARE @Instructor1_ID INT, @Instructor2_ID INT;

-- Get sample students
SELECT TOP 1 @Student1_ID = ST_ID FROM Student WHERE ST_Name LIKE '%Ahmed%' ORDER BY ST_ID;
SELECT TOP 1 @Student2_ID = ST_ID FROM Student WHERE ST_Name LIKE '%Sara%' ORDER BY ST_ID;
SELECT TOP 1 @Student3_ID = ST_ID FROM Student WHERE ST_Name LIKE '%Mohamed%' ORDER BY ST_ID;

-- Get sample instructors
SELECT TOP 1 @Instructor1_ID = Inst_ID FROM Instructor WHERE Inst_Name LIKE '%Ahmed%' ORDER BY Inst_ID;
SELECT TOP 1 @Instructor2_ID = Inst_ID FROM Instructor WHERE Inst_Name LIKE '%Fatma%' ORDER BY Inst_ID;

-- Create Manager account
EXEC sp_CreateUser
    @Email = 'manager@iti.gov.eg',
    @Password_Hash = @TempPasswordHash,
    @User_Type = 'Manager';

PRINT '✅ Manager account created: manager@iti.gov.eg';

-- Create Instructor accounts (2 instructors)
IF @Instructor1_ID IS NOT NULL
BEGIN
    EXEC sp_CreateUser
        @Email = 'instructor1@iti.gov.eg',
        @Password_Hash = @TempPasswordHash,
        @User_Type = 'Instructor',
        @Instructor_ID = @Instructor1_ID;
    PRINT '✅ Instructor 1 account created: instructor1@iti.gov.eg';
END

IF @Instructor2_ID IS NOT NULL
BEGIN
    EXEC sp_CreateUser
        @Email = 'instructor2@iti.gov.eg',
        @Password_Hash = @TempPasswordHash,
        @User_Type = 'Instructor',
        @Instructor_ID = @Instructor2_ID;
    PRINT '✅ Instructor 2 account created: instructor2@iti.gov.eg';
END

-- Create Student accounts (3 students)
IF @Student1_ID IS NOT NULL
BEGIN
    EXEC sp_CreateUser
        @Email = 'student1@student.iti.gov.eg',
        @Password_Hash = @TempPasswordHash,
        @User_Type = 'Student',
        @Student_ID = @Student1_ID;
    PRINT '✅ Student 1 account created: student1@student.iti.gov.eg';
END

IF @Student2_ID IS NOT NULL
BEGIN
    EXEC sp_CreateUser
        @Email = 'student2@student.iti.gov.eg',
        @Password_Hash = @TempPasswordHash,
        @User_Type = 'Student',
        @Student_ID = @Student2_ID;
    PRINT '✅ Student 2 account created: student2@student.iti.gov.eg';
END

IF @Student3_ID IS NOT NULL
BEGIN
    EXEC sp_CreateUser
        @Email = 'student3@student.iti.gov.eg',
        @Password_Hash = @TempPasswordHash,
        @User_Type = 'Student',
        @Student_ID = @Student3_ID;
    PRINT '✅ Student 3 account created: student3@student.iti.gov.eg';
END

PRINT '';
PRINT '==========================================';
PRINT '✅ AUTHENTICATION SYSTEM SETUP COMPLETE!';
PRINT '==========================================';
PRINT '';
PRINT '📋 Test Accounts Created:';
PRINT '   Manager: manager@iti.gov.eg / password123';
PRINT '   Instructor 1: instructor1@iti.gov.eg / password123';
PRINT '   Instructor 2: instructor2@iti.gov.eg / password123';
PRINT '   Student 1: student1@student.iti.gov.eg / password123';
PRINT '   Student 2: student2@student.iti.gov.eg / password123';
PRINT '   Student 3: student3@student.iti.gov.eg / password123';
PRINT '';
PRINT '⚠️  IMPORTANT: Change these passwords after first login!';
PRINT '';
PRINT 'Next Steps:';
PRINT '1. Run this script in Azure SQL Database';
PRINT '2. Verify Users table exists: SELECT * FROM Users';
PRINT '3. Test authentication: EXEC sp_AuthenticateUser @Email = ''manager@iti.gov.eg''';
PRINT '4. Continue with backend JWT implementation';
PRINT '';
GO
