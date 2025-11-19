/*
==========================================
🧾 Stored Procedure: sp_EnrollStudent
------------------------------------------
📌 Purpose:
    Enrolls a new student in the latest intake with proper validation.
    Used by Manager role when registering new students.

✅ Functionality:
    1. Validates latest intake exists
    2. Validates track and branch combination exists in Track_Branch_Intake
    3. Generates username from email
    4. Sets Status = 'Student' (active enrollment)
    5. Inserts into Student table

📊 Web Application Use:
    - Manager Dashboard: Student Registration Form
    - Auto-enrollment during admission process

🕓 Usage Example:
    EXEC sp_EnrollStudent
        @ST_Name = 'Ahmed Mohamed',
        @Email = 'ahmed.mohamed@iti.edu.eg',
        @Date_of_Birth = '2000-05-15',
        @Gender = 'Male',
        @Track_ID = 1,
        @Bran_ID = 1,
        @College = 'Engineering',
        @University = 'Cairo University',
        @Address = '12 Tahrir Street, Cairo';

==========================================
*/

-- Drop if exists
IF OBJECT_ID('dbo.sp_EnrollStudent', 'P') IS NOT NULL
    DROP PROCEDURE dbo.sp_EnrollStudent;
GO

CREATE PROCEDURE dbo.sp_EnrollStudent
    @ST_Name NVARCHAR(200),
    @Email NVARCHAR(200),
    @Date_of_Birth DATE,
    @Gender NVARCHAR(10),
    @Track_ID INT,
    @Bran_ID INT,
    @College NVARCHAR(100) = NULL,
    @University NVARCHAR(200) = NULL,
    @Address NVARCHAR(500) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        DECLARE @MaxIntakeID INT, @Username NVARCHAR(100), @NewStudentID INT;

        -- 1️⃣ Get latest intake
        SELECT @MaxIntakeID = MAX(Intake_ID) FROM Intake;

        IF @MaxIntakeID IS NULL
        BEGIN
            RAISERROR('❌ No intake exists in the system. Please create an intake first.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- 2️⃣ Validate email format
        IF @Email NOT LIKE '%@%'
        BEGIN
            RAISERROR('❌ Invalid email format. Email must contain @ symbol.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- 3️⃣ Check for duplicate email
        IF EXISTS (SELECT 1 FROM Student WHERE Email = @Email)
        BEGIN
            RAISERROR('❌ A student with this email already exists.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- 4️⃣ Validate Branch exists
        IF NOT EXISTS (SELECT 1 FROM Branch WHERE Bran_ID = @Bran_ID)
        BEGIN
            RAISERROR('❌ Branch ID does not exist.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- 5️⃣ Validate Track exists
        IF NOT EXISTS (SELECT 1 FROM Track WHERE Track_ID = @Track_ID)
        BEGIN
            RAISERROR('❌ Track ID does not exist.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- 6️⃣ Validate Track is opened for this Branch in latest Intake
        IF NOT EXISTS (
            SELECT 1 FROM Track_Branch_Intake
            WHERE Intake_ID = @MaxIntakeID
              AND Bran_ID = @Bran_ID
              AND Track_ID = @Track_ID
        )
        BEGIN
            RAISERROR('❌ This track is not available for the selected branch in the current intake.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- 7️⃣ Generate username from email (part before @)
        SET @Username = LEFT(@Email, CHARINDEX('@', @Email) - 1);

        -- 8️⃣ Validate age (must be at least 18 years old)
        IF DATEDIFF(YEAR, @Date_of_Birth, GETDATE()) < 18
        BEGIN
            RAISERROR('❌ Student must be at least 18 years old to enroll.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- 9️⃣ Insert new student
        INSERT INTO Student (
            ST_Name, Email, user_Name, Date_of_Birth, Gender,
            [Address], College, University, Intake_ID, Track_id,
            Bran_ID, [Status]
        )
        VALUES (
            @ST_Name, @Email, @Username, @Date_of_Birth, @Gender,
            @Address, @College, @University, @MaxIntakeID, @Track_ID,
            @Bran_ID, 'Student'  -- Active enrollment status
        );

        -- 🔟 Get newly created Student ID
        SET @NewStudentID = SCOPE_IDENTITY();

        COMMIT TRANSACTION;

        -- ✅ Return success with new student details
        SELECT
            @NewStudentID AS ST_ID,
            @ST_Name AS ST_Name,
            @Email AS Email,
            @Username AS Username,
            @MaxIntakeID AS Intake_ID,
            @Track_ID AS Track_ID,
            @Bran_ID AS Bran_ID,
            'Student' AS Status,
            '✅ Student enrolled successfully' AS Message;

    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        RAISERROR(@ErrorMessage, 16, 1);
    END CATCH
END;
GO
