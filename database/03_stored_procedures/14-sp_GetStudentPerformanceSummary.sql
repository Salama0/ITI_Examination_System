/*
==========================================
🧾 Stored Procedure: sp_GetStudentPerformanceSummary
------------------------------------------
📌 Purpose:
    Provides comprehensive performance summary for a student.
    Essential for student dashboard and academic advising.

✅ Functionality:
    1. Total exams taken and average score
    2. Pass/Fail counts and rates
    3. List of failed exams (corrective needed)
    4. GPA calculation
    5. Current status and progress

📊 Web Application Use:
    - Student Dashboard: Main performance widget
    - Student Portal: View academic progress
    - Manager/Instructor: Student advising

🕓 Usage Example:
    EXEC sp_GetStudentPerformanceSummary
        @ST_ID = 5001;

==========================================
*/

-- Drop if exists
IF OBJECT_ID('dbo.sp_GetStudentPerformanceSummary', 'P') IS NOT NULL
    DROP PROCEDURE dbo.sp_GetStudentPerformanceSummary;
GO

CREATE PROCEDURE dbo.sp_GetStudentPerformanceSummary
    @ST_ID INT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        -- 1️⃣ Validate student exists
        IF NOT EXISTS (SELECT 1 FROM Student WHERE ST_ID = @ST_ID)
        BEGIN
            RAISERROR('❌ Student ID does not exist.', 16, 1);
            RETURN;
        END

        -- 2️⃣ Get student basic info and overall stats
        SELECT
            s.ST_ID,
            s.ST_Name,
            s.Email,
            s.[Status],
            i.Intake_Year,
            t.Track_Name,
            b.Bran_Name,

            -- Exam Statistics
            COUNT(DISTINCT g.Ex_ID) AS Total_Exams_Taken,
            AVG(g.Percentage) AS Average_Score,
            MIN(g.Percentage) AS Lowest_Score,
            MAX(g.Percentage) AS Highest_Score,

            -- Pass/Fail Counts
            SUM(CASE WHEN g.Pass_Status = 1 THEN 1 ELSE 0 END) AS Exams_Passed,
            SUM(CASE WHEN g.Pass_Status = 0 THEN 1 ELSE 0 END) AS Exams_Failed,

            -- Pass Rate
            CASE
                WHEN COUNT(g.Ex_ID) > 0 THEN
                    CAST(SUM(CASE WHEN g.Pass_Status = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(g.Ex_ID) AS DECIMAL(5,2))
                ELSE 0
            END AS Pass_Rate_Percentage,

            -- GPA Calculation (4.0 scale)
            CASE
                WHEN COUNT(g.Ex_ID) > 0 THEN
                    AVG(CASE g.Grade
                        WHEN 'A' THEN 4.0
                        WHEN 'B' THEN 3.0
                        WHEN 'C' THEN 2.0
                        WHEN 'D' THEN 1.0
                        ELSE 0.0
                    END)
                ELSE 0
            END AS GPA,

            -- Grade Distribution
            SUM(CASE WHEN g.Grade = 'A' THEN 1 ELSE 0 END) AS Grade_A_Count,
            SUM(CASE WHEN g.Grade = 'B' THEN 1 ELSE 0 END) AS Grade_B_Count,
            SUM(CASE WHEN g.Grade = 'C' THEN 1 ELSE 0 END) AS Grade_C_Count,
            SUM(CASE WHEN g.Grade = 'D' THEN 1 ELSE 0 END) AS Grade_D_Count,
            SUM(CASE WHEN g.Grade = 'F' THEN 1 ELSE 0 END) AS Grade_F_Count

        FROM Student s
        LEFT JOIN Student_Grades g ON s.ST_ID = g.ST_ID
        LEFT JOIN Intake i ON s.Intake_ID = i.Intake_ID
        LEFT JOIN Track t ON s.Track_id = t.Track_ID
        LEFT JOIN Branch b ON s.Bran_ID = b.Bran_ID
        WHERE s.ST_ID = @ST_ID
        GROUP BY
            s.ST_ID, s.ST_Name, s.Email, s.[Status],
            i.Intake_Year, t.Track_Name, b.Bran_Name;

        -- 3️⃣ Get list of failed exams (need corrective)
        SELECT
            e.Ex_ID,
            c.Crs_Name,
            e.Date AS Exam_Date,
            g.Percentage,
            g.Grade,
            'Failed - Corrective Exam Needed' AS Recommendation
        FROM Student_Grades g
        JOIN Exam e ON g.Ex_ID = e.Ex_ID
        JOIN Course c ON e.Crs_ID = c.Crs_ID
        WHERE g.ST_ID = @ST_ID
          AND g.Pass_Status = 0
          AND e.Corrective = 0  -- Only show original failed exams
        ORDER BY e.Date DESC;

        -- 4️⃣ Get recent exam history (last 10 exams)
        SELECT TOP 10
            e.Ex_ID,
            c.Crs_Name,
            e.Date AS Exam_Date,
            CASE WHEN e.Corrective = 1 THEN 'Corrective' ELSE 'Normal' END AS Exam_Type,
            g.Percentage,
            g.Grade,
            CASE WHEN g.Pass_Status = 1 THEN 'Pass' ELSE 'Fail' END AS Result
        FROM Student_Grades g
        JOIN Exam e ON g.Ex_ID = e.Ex_ID
        JOIN Course c ON e.Crs_ID = c.Crs_ID
        WHERE g.ST_ID = @ST_ID
        ORDER BY e.Date DESC;

        -- 5️⃣ Get course-wise performance
        SELECT
            c.Crs_Name,
            COUNT(g.Ex_ID) AS Exams_Taken_In_Course,
            AVG(g.Percentage) AS Avg_Score_In_Course,
            SUM(CASE WHEN g.Pass_Status = 1 THEN 1 ELSE 0 END) AS Passed,
            SUM(CASE WHEN g.Pass_Status = 0 THEN 1 ELSE 0 END) AS Failed,
            MAX(g.Percentage) AS Best_Score,
            MIN(g.Percentage) AS Worst_Score
        FROM Student_Grades g
        JOIN Exam e ON g.Ex_ID = e.Ex_ID
        JOIN Course c ON e.Crs_ID = c.Crs_ID
        WHERE g.ST_ID = @ST_ID
        GROUP BY c.Crs_ID, c.Crs_Name
        ORDER BY AVG(g.Percentage) DESC;

    END TRY
    BEGIN CATCH
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        RAISERROR(@ErrorMessage, 16, 1);
    END CATCH
END;
GO
