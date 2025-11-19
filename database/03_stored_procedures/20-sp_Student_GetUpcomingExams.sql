/*
==========================================
🧾 Stored Procedure: sp_Student_GetUpcomingExams
------------------------------------------
📌 Purpose:
    Returns all upcoming and available exams for a specific student.
    Shows exam details, timing, and submission status.

✅ Functionality:
    1. Validates student exists
    2. Returns exams matching student's track/branch/intake
    3. Shows exam schedule (date, start time, end time)
    4. Indicates if student has already submitted
    5. Shows exam availability status (Upcoming, Available, Expired, Submitted)

📊 Web Application Use:
    - Student Dashboard: "My Exams" widget
    - Student Portal: Exam calendar view
    - Exam submission page: Available exams list

🔒 Permission Required:
    - User Type: Student
    - Can_View_Exams = 1

🕓 Usage Example:
    EXEC sp_Student_GetUpcomingExams
        @ST_ID = 5001;

==========================================
*/

-- Drop if exists
IF OBJECT_ID('dbo.sp_Student_GetUpcomingExams', 'P') IS NOT NULL
    DROP PROCEDURE dbo.sp_Student_GetUpcomingExams;
GO

CREATE PROCEDURE dbo.sp_Student_GetUpcomingExams
    @ST_ID INT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        DECLARE @Student_Track_ID INT;
        DECLARE @Student_Bran_ID INT;
        DECLARE @Student_Intake_ID INT;

        -- 1️⃣ Validate student exists and get their track/branch/intake
        IF NOT EXISTS (SELECT 1 FROM Student WHERE ST_ID = @ST_ID)
        BEGIN
            RAISERROR('❌ Student ID does not exist.', 16, 1);
            RETURN;
        END

        SELECT
            @Student_Track_ID = Track_id,
            @Student_Bran_ID = Bran_ID,
            @Student_Intake_ID = Intake_ID
        FROM Student
        WHERE ST_ID = @ST_ID;

        -- 2️⃣ Return all exams for this student's track/branch/intake
        SELECT
            e.Ex_ID,
            c.Crs_Name,
            c.Crs_Description,
            e.Date AS Exam_Date,
            e.start_time,
            e.End_time,
            CASE WHEN e.Corrective = 1 THEN 'Corrective' ELSE 'Normal' END AS Exam_Type,
            i.Inst_Name AS Instructor_Name,

            -- Time calculations
            DATEDIFF(DAY, GETDATE(), e.Date) AS Days_Until_Exam,
            DATEDIFF(HOUR, GETDATE(), CAST(e.Date AS DATETIME) + CAST(e.start_time AS DATETIME)) AS Hours_Until_Start,

            -- Submission status
            CASE
                WHEN g.ST_ID IS NOT NULL THEN 'Submitted'
                ELSE 'Not Submitted'
            END AS Submission_Status,

            -- If submitted, show grade info
            g.Percentage AS My_Score,
            g.Grade AS My_Grade,
            CASE WHEN g.Pass_Status = 1 THEN 'Pass' ELSE 'Fail' END AS Result,

            -- Exam availability status
            CASE
                WHEN g.ST_ID IS NOT NULL THEN '✅ Submitted'
                WHEN e.Date > GETDATE() THEN '📅 Upcoming'
                WHEN e.Date = CAST(GETDATE() AS DATE)
                     AND CAST(GETDATE() AS TIME) BETWEEN e.start_time AND e.End_time THEN '🟢 Available Now'
                WHEN e.Date < GETDATE()
                     OR (e.Date = CAST(GETDATE() AS DATE) AND CAST(GETDATE() AS TIME) > e.End_time) THEN '🔴 Expired'
                ELSE '⏳ Scheduled'
            END AS Availability_Status,

            -- Can take exam flag (for frontend logic)
            CASE
                WHEN g.ST_ID IS NOT NULL THEN 0  -- Already submitted
                WHEN e.Date = CAST(GETDATE() AS DATE)
                     AND CAST(GETDATE() AS TIME) BETWEEN e.start_time AND e.End_time THEN 1  -- Available now
                ELSE 0  -- Not available yet or expired
            END AS Can_Take_Exam

        FROM Exam e
        JOIN Course c ON e.Crs_ID = c.Crs_ID
        JOIN Instructor i ON e.Inst_ID = i.Inst_ID
        LEFT JOIN Student_Grades g ON g.Ex_ID = e.Ex_ID AND g.ST_ID = @ST_ID

        WHERE e.Track_ID = @Student_Track_ID
          AND e.Bran_ID = @Student_Bran_ID
          AND e.Intake_ID = @Student_Intake_ID

        ORDER BY
            CASE
                WHEN g.ST_ID IS NULL AND e.Date = CAST(GETDATE() AS DATE)
                     AND CAST(GETDATE() AS TIME) BETWEEN e.start_time AND e.End_time THEN 1  -- Available now (highest priority)
                WHEN g.ST_ID IS NULL AND e.Date > GETDATE() THEN 2  -- Upcoming
                WHEN g.ST_ID IS NULL THEN 3  -- Expired (not submitted)
                ELSE 4  -- Submitted
            END,
            e.Date ASC,
            e.start_time ASC;

    END TRY
    BEGIN CATCH
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        RAISERROR(@ErrorMessage, 16, 1);
    END CATCH
END;
GO
