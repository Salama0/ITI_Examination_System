/*
==========================================
🧾 Stored Procedure: sp_GetExamStatistics
------------------------------------------
📌 Purpose:
    Returns comprehensive statistics for a specific exam.
    Used by instructors to analyze exam effectiveness.

✅ Functionality:
    1. Overall exam statistics (avg, min, max scores)
    2. Grade distribution
    3. Question-wise performance analysis
    4. Student submission status

📊 Web Application Use:
    - Instructor Dashboard: Exam Analytics
    - Exam Review Page
    - Quality assurance reports

🕓 Usage Example:
    EXEC sp_GetExamStatistics
        @Ex_ID = 2800;

==========================================
*/

-- Drop if exists
IF OBJECT_ID('dbo.sp_GetExamStatistics', 'P') IS NOT NULL
    DROP PROCEDURE dbo.sp_GetExamStatistics;
GO

CREATE PROCEDURE dbo.sp_GetExamStatistics
    @Ex_ID INT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        -- 1️⃣ Validate exam exists
        IF NOT EXISTS (SELECT 1 FROM Exam WHERE Ex_ID = @Ex_ID)
        BEGIN
            RAISERROR('❌ Exam ID does not exist.', 16, 1);
            RETURN;
        END

        -- 2️⃣ Get overall exam information and statistics
        SELECT
            e.Ex_ID,
            c.Crs_Name,
            e.Date AS Exam_Date,
            e.start_time,
            e.End_time,
            CASE WHEN e.Corrective = 1 THEN 'Corrective' ELSE 'Normal' END AS Exam_Type,
            i.Inst_Name AS Instructor_Name,
            t.Track_Name,
            b.Bran_Name,
            int.Intake_Year,

            -- Student counts
            COUNT(DISTINCT s.ST_ID) AS Total_Students_In_Track,
            COUNT(DISTINCT g.ST_ID) AS Students_Who_Took_Exam,
            COUNT(DISTINCT s.ST_ID) - COUNT(DISTINCT g.ST_ID) AS Students_Not_Taken,

            -- Score statistics
            AVG(g.Percentage) AS Average_Score,
            MIN(g.Percentage) AS Lowest_Score,
            MAX(g.Percentage) AS Highest_Score,
            STDEV(g.Percentage) AS Standard_Deviation,

            -- Pass/Fail statistics
            SUM(CASE WHEN g.Pass_Status = 1 THEN 1 ELSE 0 END) AS Students_Passed,
            SUM(CASE WHEN g.Pass_Status = 0 THEN 1 ELSE 0 END) AS Students_Failed,
            CASE
                WHEN COUNT(g.ST_ID) > 0 THEN
                    CAST(SUM(CASE WHEN g.Pass_Status = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(g.ST_ID) AS DECIMAL(5,2))
                ELSE 0
            END AS Pass_Rate_Percentage

        FROM Exam e
        JOIN Course c ON e.Crs_ID = c.Crs_ID
        JOIN Instructor i ON e.Inst_ID = i.Inst_ID
        JOIN Track t ON e.Track_ID = t.Track_ID
        JOIN Branch b ON e.Bran_ID = b.Bran_ID
        JOIN Intake int ON e.Intake_ID = int.Intake_ID
        LEFT JOIN Student s ON s.Intake_ID = e.Intake_ID
                           AND s.Track_id = e.Track_ID
                           AND s.Bran_ID = e.Bran_ID
        LEFT JOIN Student_Grades g ON g.Ex_ID = e.Ex_ID AND g.ST_ID = s.ST_ID
        WHERE e.Ex_ID = @Ex_ID
        GROUP BY
            e.Ex_ID, c.Crs_Name, e.Date, e.start_time, e.End_time, e.Corrective,
            i.Inst_Name, t.Track_Name, b.Bran_Name, int.Intake_Year;

        -- 3️⃣ Grade distribution
        SELECT
            g.Grade,
            COUNT(*) AS Student_Count,
            CAST(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER() AS DECIMAL(5,2)) AS Percentage
        FROM Student_Grades g
        WHERE g.Ex_ID = @Ex_ID
        GROUP BY g.Grade
        ORDER BY
            CASE g.Grade
                WHEN 'A' THEN 1
                WHEN 'B' THEN 2
                WHEN 'C' THEN 3
                WHEN 'D' THEN 4
                WHEN 'F' THEN 5
            END;

        -- 4️⃣ Question-wise performance analysis
        SELECT
            eq.Question_Order,
            q.Qu_ID,
            LEFT(q.Body, 100) AS Question_Text,
            q.[Type] AS Question_Type,
            q.model_answer,

            -- Answer statistics
            COUNT(DISTINCT seq.ST_ID) AS Students_Answered,
            SUM(CASE WHEN c.Is_Correct = 1 THEN 1 ELSE 0 END) AS Correct_Answers,
            COUNT(seq.ST_ID) - SUM(CASE WHEN c.Is_Correct = 1 THEN 1 ELSE 0 END) AS Wrong_Answers,

            -- Accuracy rate
            CASE
                WHEN COUNT(seq.ST_ID) > 0 THEN
                    CAST(SUM(CASE WHEN c.Is_Correct = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(seq.ST_ID) AS DECIMAL(5,2))
                ELSE 0
            END AS Accuracy_Rate,

            -- Difficulty classification
            CASE
                WHEN CAST(SUM(CASE WHEN c.Is_Correct = 1 THEN 1 ELSE 0 END) * 100.0 / NULLIF(COUNT(seq.ST_ID), 0) AS DECIMAL(5,2)) >= 85 THEN 'Easy'
                WHEN CAST(SUM(CASE WHEN c.Is_Correct = 1 THEN 1 ELSE 0 END) * 100.0 / NULLIF(COUNT(seq.ST_ID), 0) AS DECIMAL(5,2)) >= 60 THEN 'Medium'
                WHEN CAST(SUM(CASE WHEN c.Is_Correct = 1 THEN 1 ELSE 0 END) * 100.0 / NULLIF(COUNT(seq.ST_ID), 0) AS DECIMAL(5,2)) >= 40 THEN 'Hard'
                ELSE 'Very Hard'
            END AS Difficulty_Level

        FROM Exam_Qup eq
        JOIN Qu_Pool q ON eq.Qu_ID = q.Qu_ID
        LEFT JOIN Stu_Exam_Qup seq ON seq.Ex_ID = eq.Ex_ID AND seq.Qu_ID = eq.Qu_ID
        LEFT JOIN Choices c ON seq.Answer_Ch_ID = c.Choice_ID
        WHERE eq.Ex_ID = @Ex_ID
        GROUP BY eq.Question_Order, q.Qu_ID, q.Body, q.[Type], q.model_answer
        ORDER BY eq.Question_Order;

        -- 5️⃣ Top performers
        SELECT TOP 10
            s.ST_Name,
            s.Email,
            g.Percentage,
            g.Grade,
            g.Total_Score
        FROM Student_Grades g
        JOIN Student s ON g.ST_ID = s.ST_ID
        WHERE g.Ex_ID = @Ex_ID
        ORDER BY g.Percentage DESC;

        -- 6️⃣ Students who failed (need attention)
        SELECT
            s.ST_Name,
            s.Email,
            g.Percentage,
            g.Grade,
            'Needs Corrective Exam' AS Recommendation
        FROM Student_Grades g
        JOIN Student s ON g.ST_ID = s.ST_ID
        WHERE g.Ex_ID = @Ex_ID
          AND g.Pass_Status = 0
        ORDER BY g.Percentage ASC;

    END TRY
    BEGIN CATCH
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        RAISERROR(@ErrorMessage, 16, 1);
    END CATCH
END;
GO
