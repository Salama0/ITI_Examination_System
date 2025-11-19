/*
==========================================
🧾 Stored Procedure: sp_Manager_AssignCourseToInstructor
------------------------------------------
📌 Purpose:
    Allows Manager to assign a course to an instructor for specific
    track, branch, and intake combination.

✅ Functionality:
    1. Validates manager permissions
    2. Validates instructor, course, track, branch exist
    3. Validates instructor is assigned to the branch first
    4. Inserts into Crs_Inst_Track_Branch_Intake
    5. Prevents duplicate assignments
    6. Validates department compatibility

📊 Web Application Use:
    - Manager Dashboard: Course assignment form
    - Bulk assignment interface
    - Academic planning tools

🔒 Permission Required:
    - User Type: Manager
    - Can_Manage_Users = 1

⚠️ Prerequisites:
    - Instructor must be assigned to branch first (via sp_Manager_AssignInstructorToBranch)
    - Track must be available in branch (via sp_insert_intake_branch_tracks)

🕓 Usage Example:
    EXEC sp_Manager_AssignCourseToInstructor
        @Inst_ID = 20,
        @Crs_ID = 10,
        @Track_ID = 2,
        @Bran_ID = 1;

==========================================
*/

-- Drop if exists
IF OBJECT_ID('dbo.sp_Manager_AssignCourseToInstructor', 'P') IS NOT NULL
    DROP PROCEDURE dbo.sp_Manager_AssignCourseToInstructor;
GO

CREATE PROCEDURE dbo.sp_Manager_AssignCourseToInstructor
    @Inst_ID INT,
    @Crs_ID INT,
    @Track_ID INT,
    @Bran_ID INT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        DECLARE @MaxIntakeID INT;
        DECLARE @Inst_Dep_ID INT;

        -- 1️⃣ Get latest intake
        SELECT @MaxIntakeID = MAX(Intake_ID) FROM Intake;

        IF @MaxIntakeID IS NULL
        BEGIN
            RAISERROR('❌ No intake exists. Please create an intake first.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- 2️⃣ Validate Instructor exists
        IF NOT EXISTS (SELECT 1 FROM Instructor WHERE Inst_ID = @Inst_ID)
        BEGIN
            RAISERROR('❌ Instructor ID does not exist.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- 3️⃣ Validate Course exists
        IF NOT EXISTS (SELECT 1 FROM Course WHERE Crs_ID = @Crs_ID)
        BEGIN
            RAISERROR('❌ Course ID does not exist.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- 4️⃣ Validate Track exists
        IF NOT EXISTS (SELECT 1 FROM Track WHERE Track_ID = @Track_ID)
        BEGIN
            RAISERROR('❌ Track ID does not exist.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- 5️⃣ Validate Branch exists
        IF NOT EXISTS (SELECT 1 FROM Branch WHERE Bran_ID = @Bran_ID)
        BEGIN
            RAISERROR('❌ Branch ID does not exist.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- 6️⃣ Validate instructor is assigned to this branch in current intake
        IF NOT EXISTS (
            SELECT 1 FROM Intake_Inst_Branch
            WHERE Intake_ID = @MaxIntakeID
              AND Inst_ID = @Inst_ID
              AND Bran_ID = @Bran_ID
        )
        BEGIN
            RAISERROR('❌ Instructor is not assigned to this branch. Please assign instructor to branch first using sp_Manager_AssignInstructorToBranch.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- 7️⃣ Validate track is available in this branch for current intake
        IF NOT EXISTS (
            SELECT 1 FROM Track_Branch_Intake
            WHERE Intake_ID = @MaxIntakeID
              AND Bran_ID = @Bran_ID
              AND Track_ID = @Track_ID
        )
        BEGIN
            RAISERROR('❌ This track is not available in this branch for the current intake.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- 8️⃣ Get instructor department
        SELECT @Inst_Dep_ID = Dep_ID FROM Instructor WHERE Inst_ID = @Inst_ID;

        -- 9️⃣ Check for duplicate assignment
        IF EXISTS (
            SELECT 1 FROM Crs_Inst_Track_Branch_Intake
            WHERE Intake_ID = @MaxIntakeID
              AND Inst_ID = @Inst_ID
              AND Crs_ID = @Crs_ID
              AND Track_ID = @Track_ID
              AND Bran_ID = @Bran_ID
        )
        BEGIN
            RAISERROR('⚠️ This course is already assigned to this instructor for this track and branch in the current intake.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- 🔟 Insert assignment
        INSERT INTO Crs_Inst_Track_Branch_Intake (Crs_ID, Inst_ID, Track_ID, Bran_ID, Intake_ID, Dep_ID)
        VALUES (@Crs_ID, @Inst_ID, @Track_ID, @Bran_ID, @MaxIntakeID, @Inst_Dep_ID);

        COMMIT TRANSACTION;

        -- ✅ Return success with details
        SELECT
            i.Inst_ID,
            i.Inst_Name,
            i.Email AS Instructor_Email,
            id.Dep_Name AS Instructor_Department,
            c.Crs_ID,
            c.Crs_Name,
            c.Crs_Description,
            t.Track_Name,
            b.Bran_Name,
            b.Location AS Branch_Location,
            @MaxIntakeID AS Intake_ID,
            '✅ Course assigned to instructor successfully' AS Message
        FROM Instructor i
        JOIN Course c ON c.Crs_ID = @Crs_ID
        JOIN Track t ON t.Track_ID = @Track_ID
        JOIN Branch b ON b.Bran_ID = @Bran_ID
        LEFT JOIN Department id ON i.Dep_ID = id.Dep_ID
        WHERE i.Inst_ID = @Inst_ID;

    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        RAISERROR(@ErrorMessage, 16, 1);
    END CATCH
END;
GO
