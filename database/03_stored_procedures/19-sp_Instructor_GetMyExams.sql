/*
==========================================
🧾 Stored Procedure: sp_Instructor_GetMyExams
------------------------------------------
📌 Purpose:
    Returns all exams created by a specific instructor with submission statistics.
    Essential for instructor dashboard and exam management.

✅ Functionality:
    1. Validates instructor exists
    2. Returns all exams created by instructor (current and past intakes)
    3. Shows submission statistics for each exam
    4. Groups by course and exam type (Normal/Corrective)
    5. Shows grading status

📊 Web Application Use:
    - Instructor Dashboard: "My Exams" widget
    - Exam Management Page: List of all created exams
    - Grading Interface: Shows which exams need grading

🔒 Permission Required:
    - User Type: Instructor
    - Can_View_Exams = 1

🕓 Usage Example:
    EXEC sp_Instructor_GetMyExams
        @Inst_ID = 20;

==========================================
*/

-- Drop if exists
IF OBJECT_ID('dbo.sp_Instructor_GetMyExams', 'P') IS NOT NULL
    DROP PROCEDURE dbo.sp_Instructor_GetMyExams;
GO

CREATE PROCEDURE dbo.sp_Instructor_GetMyExams
    @Inst_ID INT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        -- 1️⃣ Validate instructor exists
        IF NOT EXISTS (SELECT 1 FROM Instructor WHERE Inst_ID = @Inst_ID)
        BEGIN
            RAISERROR('❌ Instructor ID does not exist.', 16, 1);
            RETURN;
        END

        -- 2️⃣ Return all exams created by this instructor
        SELECT
            e.Ex_ID,
            c.Crs_Name,
            e.Date AS Exam_Date,
            e.start_time,
            e.End_time,
            CASE WHEN e.Corrective = 1 THEN 'Corrective' ELSE 'Normal' END AS Exam_Type,
            t.Track_Name,
            b.Bran_Name,
            i.Intake_Year,

            -- Student counts
            COUNT(DISTINCT s.ST_ID) AS Total_Students_In_Track,
            COUNT(DISTINCT g.ST_ID) AS Students_Who_Submitted,
            COUNT(DISTINCT s.ST_ID) - COUNT(DISTINCT g.ST_ID) AS Students_Not_Submitted,

            -- Grading status
            SUM(CASE WHEN g.ST_ID IS NOT NULL THEN 1 ELSE 0 END) AS Total_Submissions,
            SUM(CASE WHEN g.Pass_Status = 1 THEN 1 ELSE 0 END) AS Passed_Count,
            SUM(CASE WHEN g.Pass_Status = 0 THEN 1 ELSE 0 END) AS Failed_Count,

            -- Submission rate
            CASE
                WHEN COUNT(DISTINCT s.ST_ID) > 0 THEN
                    CAST(COUNT(DISTINCT g.ST_ID) * 100.0 / COUNT(DISTINCT s.ST_ID) AS DECIMAL(5,2))
                ELSE 0
            END AS Submission_Rate_Percentage,

            -- Average score
            AVG(g.Percentage) AS Average_Score,

            -- Status
            CASE
                WHEN e.Date > GETDATE() THEN 'Scheduled'
                WHEN e.Date = CAST(GETDATE() AS DATE) AND e.End_time > CAST(GETDATE() AS TIME) THEN 'In Progress'
                WHEN COUNT(DISTINCT g.ST_ID) = 0 THEN 'No Submissions'
                WHEN COUNT(DISTINCT g.ST_ID) < COUNT(DISTINCT s.ST_ID) THEN 'Partial Submissions'
                ELSE 'Completed'
            END AS Exam_Status

        FROM Exam e
        JOIN Course c ON e.Crs_ID = c.Crs_ID
        JOIN Track t ON e.Track_ID = t.Track_ID
        JOIN Branch b ON e.Bran_ID = b.Bran_ID
        JOIN Intake i ON e.Intake_ID = i.Intake_ID
        LEFT JOIN Student s ON s.Intake_ID = e.Intake_ID
                           AND s.Track_id = e.Track_ID
                           AND s.Bran_ID = e.Bran_ID
        LEFT JOIN Student_Grades g ON g.Ex_ID = e.Ex_ID AND g.ST_ID = s.ST_ID

        WHERE e.Inst_ID = @Inst_ID

        GROUP BY
            e.Ex_ID, c.Crs_Name, e.Date, e.start_time, e.End_time, e.Corrective,
            t.Track_Name, b.Bran_Name, i.Intake_Year

        ORDER BY e.Date DESC, e.start_time DESC;

    END TRY
    BEGIN CATCH
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        RAISERROR(@ErrorMessage, 16, 1);
    END CATCH
END;
GO
