/*
==========================================
🧾 Stored Procedure: sp_CreateCorrectiveExamAutomatically
------------------------------------------
📌 Purpose:
    Automatically creates corrective exams for students who failed
    a specific exam. Uses same course and question pool.

✅ Functionality:
    1. Validates original exam exists and is not already corrective
    2. Creates new exam with Corrective = 1
    3. Sets exam date to 7 days after original exam
    4. Copies same questions from original exam
    5. Only students who failed will be eligible

📊 Web Application Use:
    - Instructor Dashboard: "Create Corrective Exam" button
    - Automated workflow after grading completion
    - Batch processing for failed students

🔒 Permission Required:
    - User Type: Instructor
    - Can_Create_Exams = 1
    - Must be the instructor who created original exam

⚠️ Prerequisites:
    - Original exam must exist and be graded
    - At least one student must have failed

🕓 Usage Example:
    EXEC sp_CreateCorrectiveExamAutomatically
        @Original_Ex_ID = 2800,
        @Inst_ID = 20,
        @Corrective_Date = '2025-02-01';

==========================================
*/

-- Drop if exists
IF OBJECT_ID('dbo.sp_CreateCorrectiveExamAutomatically', 'P') IS NOT NULL
    DROP PROCEDURE dbo.sp_CreateCorrectiveExamAutomatically;
GO

CREATE PROCEDURE dbo.sp_CreateCorrectiveExamAutomatically
    @Original_Ex_ID INT,
    @Inst_ID INT,
    @Corrective_Date DATE = NULL  -- If NULL, defaults to 7 days after original exam
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        DECLARE @Crs_ID INT;
        DECLARE @Track_ID INT;
        DECLARE @Bran_ID INT;
        DECLARE @Intake_ID INT;
        DECLARE @Original_Inst_ID INT;
        DECLARE @Start_Time TIME;
        DECLARE @End_Time TIME;
        DECLARE @New_Ex_ID INT;
        DECLARE @Failed_Students_Count INT;

        -- 1️⃣ Validate original exam exists
        IF NOT EXISTS (SELECT 1 FROM Exam WHERE Ex_ID = @Original_Ex_ID)
        BEGIN
            RAISERROR('❌ Original exam ID does not exist.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- 2️⃣ Get original exam details
        SELECT
            @Crs_ID = Crs_ID,
            @Track_ID = Track_ID,
            @Bran_ID = Bran_ID,
            @Intake_ID = Intake_ID,
            @Original_Inst_ID = Inst_ID,
            @Start_Time = start_time,
            @End_Time = End_time
        FROM Exam
        WHERE Ex_ID = @Original_Ex_ID;

        -- 3️⃣ Validate instructor is the one who created original exam
        IF @Original_Inst_ID != @Inst_ID
        BEGIN
            RAISERROR('❌ Only the instructor who created the original exam can create corrective exam.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- 4️⃣ Check if original exam is already a corrective exam
        IF EXISTS (SELECT 1 FROM Exam WHERE Ex_ID = @Original_Ex_ID AND Corrective = 1)
        BEGIN
            RAISERROR('❌ Cannot create corrective exam for an exam that is already corrective.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- 5️⃣ Check if there are students who failed
        SELECT @Failed_Students_Count = COUNT(*)
        FROM Student_Grades
        WHERE Ex_ID = @Original_Ex_ID
          AND Pass_Status = 0;

        IF @Failed_Students_Count = 0
        BEGIN
            RAISERROR('ℹ️ No students failed this exam. Corrective exam not needed.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- 6️⃣ Set corrective exam date (default: 7 days after original)
        IF @Corrective_Date IS NULL
        BEGIN
            SELECT @Corrective_Date = DATEADD(DAY, 7, Date)
            FROM Exam
            WHERE Ex_ID = @Original_Ex_ID;
        END

        -- Validate corrective date is in the future
        IF @Corrective_Date < GETDATE()
        BEGIN
            RAISERROR('❌ Corrective exam date must be in the future.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- 7️⃣ Check if corrective exam already exists for this original exam
        IF EXISTS (
            SELECT 1 FROM Exam
            WHERE Crs_ID = @Crs_ID
              AND Track_ID = @Track_ID
              AND Bran_ID = @Bran_ID
              AND Intake_ID = @Intake_ID
              AND Inst_ID = @Inst_ID
              AND Corrective = 1
              AND Date = @Corrective_Date
        )
        BEGIN
            RAISERROR('⚠️ A corrective exam already exists for this course/track/branch on this date.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- 8️⃣ Create new corrective exam
        INSERT INTO Exam (Crs_ID, Inst_ID, Date, start_time, End_time, Corrective, Track_ID, Bran_ID, Intake_ID)
        VALUES (@Crs_ID, @Inst_ID, @Corrective_Date, @Start_Time, @End_Time, 1, @Track_ID, @Bran_ID, @Intake_ID);

        SET @New_Ex_ID = SCOPE_IDENTITY();

        -- 9️⃣ Copy questions from original exam
        INSERT INTO Exam_Qup (Ex_ID, Qu_ID, Question_Order)
        SELECT @New_Ex_ID, Qu_ID, Question_Order
        FROM Exam_Qup
        WHERE Ex_ID = @Original_Ex_ID;

        COMMIT TRANSACTION;

        -- ✅ Return success with details
        SELECT
            @New_Ex_ID AS New_Corrective_Ex_ID,
            @Original_Ex_ID AS Original_Ex_ID,
            c.Crs_Name,
            @Corrective_Date AS Corrective_Exam_Date,
            @Start_Time AS Start_Time,
            @End_Time AS End_Time,
            t.Track_Name,
            b.Bran_Name,
            i.Intake_Year,
            @Failed_Students_Count AS Students_Who_Failed,
            (SELECT COUNT(*) FROM Exam_Qup WHERE Ex_ID = @New_Ex_ID) AS Questions_Copied,
            '✅ Corrective exam created successfully for students who failed' AS Message
        FROM Course c
        JOIN Track t ON t.Track_ID = @Track_ID
        JOIN Branch b ON b.Bran_ID = @Bran_ID
        JOIN Intake i ON i.Intake_ID = @Intake_ID
        WHERE c.Crs_ID = @Crs_ID;

        -- Return list of students who failed (eligible for corrective)
        SELECT
            s.ST_ID,
            s.ST_Name,
            s.Email,
            g.Percentage AS Original_Score,
            g.Grade AS Original_Grade,
            'Eligible for Corrective Exam' AS Status
        FROM Student_Grades g
        JOIN Student s ON g.ST_ID = s.ST_ID
        WHERE g.Ex_ID = @Original_Ex_ID
          AND g.Pass_Status = 0
        ORDER BY g.Percentage ASC;

    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        RAISERROR(@ErrorMessage, 16, 1);
    END CATCH
END;
GO
