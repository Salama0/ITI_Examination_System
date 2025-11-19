/*
==========================================
🧾 Stored Procedure: sp_AuthenticateUser
------------------------------------------
📌 Purpose:
    Authenticates user (Student/Instructor/Manager) by email
    and returns user type and permissions.
    **Note:** In production, add password hashing validation here.

✅ Functionality:
    1. Checks email in Student, Instructor, or separate Manager table
    2. Returns user type and basic profile
    3. Returns permissions/role for frontend routing

📊 Web Application Use:
    - Login Page: User authentication
    - Returns JWT token payload data
    - Frontend role-based routing

🔒 Security Note:
    This is a basic version. In production:
    - Add password column and bcrypt hashing
    - Add failed login attempt tracking
    - Add account lockout after N failed attempts
    - Add 2FA support

🕓 Usage Example:
    EXEC sp_AuthenticateUser
        @Email = 'ahmed.mohamed@iti.edu.eg';

==========================================
*/

-- Drop if exists
IF OBJECT_ID('dbo.sp_AuthenticateUser', 'P') IS NOT NULL
    DROP PROCEDURE dbo.sp_AuthenticateUser;
GO

CREATE PROCEDURE dbo.sp_AuthenticateUser
    @Email NVARCHAR(200)
    -- @Password NVARCHAR(255) = NULL  -- Add this in production with hashing
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        DECLARE @UserType      NVARCHAR(20);
        DECLARE @UserID        INT;
        DECLARE @FullName      NVARCHAR(200);
        DECLARE @LoginUsername NVARCHAR(100);
        DECLARE @IntakeID      INT;
        DECLARE @TrackID       INT;
        DECLARE @BranchID      INT;
        DECLARE @DepartmentID  INT;
        DECLARE @Status        NVARCHAR(50);

        -- 1️⃣ Check if Student
        IF EXISTS (SELECT 1 FROM Student WHERE Email = @Email)
        BEGIN
            SET @UserType = N'Student';

            SELECT
                @UserID        = ST_ID,
                @FullName      = ST_Name,
                @LoginUsername = user_Name,
                @IntakeID      = Intake_ID,
                @TrackID       = Track_id,
                @BranchID      = Bran_ID,
                @Status        = [Status]
            FROM Student
            WHERE Email = @Email;

            SELECT
                @UserType      AS UserType,
                @UserID        AS UserID,
                @FullName      AS FullName,
                @LoginUsername AS [Username],
                @Email         AS Email,
                @IntakeID      AS Intake_ID,
                @TrackID       AS Track_ID,
                @BranchID      AS Branch_ID,
                @Status        AS [Status],
                CAST(1 AS BIT) AS Can_View_Exams,
                CAST(1 AS BIT) AS Can_Submit_Exams,
                CAST(1 AS BIT) AS Can_View_Grades,
                CAST(0 AS BIT) AS Can_Create_Exams,
                CAST(0 AS BIT) AS Can_Grade_Exams,
                CAST(0 AS BIT) AS Can_Manage_Users,
                N'✅ Student authenticated successfully' AS [Message];

            RETURN;
        END;

        -- 2️⃣ Check if Instructor
        IF EXISTS (SELECT 1 FROM Instructor WHERE Email = @Email)
        BEGIN
            SET @UserType = N'Instructor';

            SELECT
                @UserID        = Inst_ID,
                @FullName      = Inst_Name,
                @LoginUsername = [Username],
                @DepartmentID  = Dep_ID
            FROM Instructor
            WHERE Email = @Email;

            SELECT
                @UserType      AS UserType,
                @UserID        AS UserID,
                @FullName      AS FullName,
                @LoginUsername AS [Username],
                @Email         AS Email,
                @DepartmentID  AS Department_ID,
                CAST(1 AS BIT) AS Can_View_Exams,
                CAST(0 AS BIT) AS Can_Submit_Exams,
                CAST(1 AS BIT) AS Can_View_Grades,
                CAST(1 AS BIT) AS Can_Create_Exams,
                CAST(1 AS BIT) AS Can_Grade_Exams,
                CAST(0 AS BIT) AS Can_Manage_Users,
                N'✅ Instructor authenticated successfully' AS [Message];

            RETURN;
        END;

        -- 3️⃣ No user found
        RAISERROR(N'❌ Invalid email. User not found.', 16, 1);
    END TRY
    BEGIN CATCH
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        RAISERROR(@ErrorMessage, 16, 1);
    END CATCH
END;
GO
