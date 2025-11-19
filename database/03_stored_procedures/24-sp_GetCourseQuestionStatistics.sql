/*
==========================================
🧾 Stored Procedure: sp_GetCourseQuestionStatistics
------------------------------------------
📌 Purpose:
    Analyzes question pool quality for a specific course.
    Helps instructors identify problematic questions and
    improve question bank quality.

✅ Functionality:
    1. Shows all questions for a course
    2. Calculates usage frequency (how many exams used each question)
    3. Shows average accuracy rate per question across all exams
    4. Identifies questions that are too easy/hard
    5. Recommends questions for retirement or revision

📊 Web Application Use:
    - Instructor Dashboard: Question Bank Analytics
    - Course Quality Improvement tools
    - Question review and maintenance

🔒 Permission Required:
    - User Type: Instructor
    - Can_View_Exams = 1

🕓 Usage Example:
    EXEC sp_GetCourseQuestionStatistics
        @Crs_ID = 10;

==========================================
*/

-- Drop if exists
IF OBJECT_ID('dbo.sp_GetCourseQuestionStatistics', 'P') IS NOT NULL
    DROP PROCEDURE dbo.sp_GetCourseQuestionStatistics;
GO

CREATE PROCEDURE dbo.sp_GetCourseQuestionStatistics
    @Crs_ID INT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        -- 1️⃣ Validate course exists
        IF NOT EXISTS (SELECT 1 FROM Course WHERE Crs_ID = @Crs_ID)
        BEGIN
            RAISERROR('❌ Course ID does not exist.', 16, 1);
            RETURN;
        END

        -- 2️⃣ Course overview
        SELECT
            c.Crs_ID,
            c.Crs_Name,
            c.Crs_Description,

            -- Question pool stats
            COUNT(DISTINCT q.Qu_ID) AS Total_Questions_In_Pool,
            SUM(CASE WHEN q.Type = 'MCQ' THEN 1 ELSE 0 END)     AS MCQ_Count,
            SUM(CASE WHEN q.Type = 'T/F' THEN 1 ELSE 0 END)     AS TrueFalse_Count,

            -- Usage stats
            COUNT(DISTINCT e.Ex_ID)     AS Total_Exams_Created,
            COUNT(DISTINCT seq.ST_ID)   AS Total_Student_Answers_Recorded

        FROM Course c
        LEFT JOIN Qu_Pool     q   ON q.Crs_ID = c.Crs_ID
        LEFT JOIN Exam        e   ON e.Crs_ID = c.Crs_ID
        LEFT JOIN Exam_Qup    eq  ON eq.Ex_ID = e.Ex_ID
        LEFT JOIN Stu_Exam_Qup seq
            ON seq.Ex_ID = eq.Ex_ID AND seq.Qu_ID = eq.Qu_ID

        WHERE c.Crs_ID = @Crs_ID
        GROUP BY c.Crs_ID, c.Crs_Name, c.Crs_Description;

        -- 3️⃣ Question-by-question analysis
        SELECT
            q.Qu_ID,
            q.Type AS Question_Type,
            LEFT(q.Body, 100) AS Question_Text,
            q.model_answer AS Correct_Answer,

            -- Usage frequency
            COUNT(DISTINCT eq.Ex_ID)  AS Times_Used_In_Exams,
            COUNT(DISTINCT seq.ST_ID) AS Total_Student_Attempts,

            -- Performance metrics
            SUM(CASE WHEN c.Is_Correct = 1 THEN 1 ELSE 0 END) AS Correct_Answers,
            COUNT(seq.ST_ID)
              - SUM(CASE WHEN c.Is_Correct = 1 THEN 1 ELSE 0 END) AS Wrong_Answers,

            -- Accuracy rate
            CASE
                WHEN COUNT(seq.ST_ID) > 0 THEN
                    CAST(
                        SUM(CASE WHEN c.Is_Correct = 1 THEN 1 ELSE 0 END)
                        * 100.0 / COUNT(seq.ST_ID)
                        AS DECIMAL(5,2)
                    )
                ELSE NULL
            END AS Accuracy_Rate,

            -- Difficulty classification
            CASE
                WHEN COUNT(seq.ST_ID) = 0 THEN 'Never Used'
                WHEN CAST(
                        SUM(CASE WHEN c.Is_Correct = 1 THEN 1 ELSE 0 END)
                        * 100.0 / NULLIF(COUNT(seq.ST_ID), 0)
                        AS DECIMAL(5,2)
                     ) >= 90 THEN 'Too Easy'
                WHEN CAST(
                        SUM(CASE WHEN c.Is_Correct = 1 THEN 1 ELSE 0 END)
                        * 100.0 / NULLIF(COUNT(seq.ST_ID), 0)
                        AS DECIMAL(5,2)
                     ) >= 70 THEN 'Easy'
                WHEN CAST(
                        SUM(CASE WHEN c.Is_Correct = 1 THEN 1 ELSE 0 END)
                        * 100.0 / NULLIF(COUNT(seq.ST_ID), 0)
                        AS DECIMAL(5,2)
                     ) >= 50 THEN 'Medium'
                WHEN CAST(
                        SUM(CASE WHEN c.Is_Correct = 1 THEN 1 ELSE 0 END)
                        * 100.0 / NULLIF(COUNT(seq.ST_ID), 0)
                        AS DECIMAL(5,2)
                     ) >= 30 THEN 'Hard'
                ELSE 'Too Hard'
            END AS Difficulty_Level,

            -- Quality recommendation
            CASE
                WHEN COUNT(seq.ST_ID) = 0 THEN '⚠️ Never used - consider reviewing or removing'
                WHEN COUNT(seq.ST_ID) < 10 THEN 'ℹ️ Low usage - needs more data'
                WHEN CAST(
                        SUM(CASE WHEN c.Is_Correct = 1 THEN 1 ELSE 0 END)
                        * 100.0 / NULLIF(COUNT(seq.ST_ID), 0)
                        AS DECIMAL(5,2)
                     ) >= 95 THEN '🔴 Too easy - consider revising'
                WHEN CAST(
                        SUM(CASE WHEN c.Is_Correct = 1 THEN 1 ELSE 0 END)
                        * 100.0 / NULLIF(COUNT(seq.ST_ID), 0)
                        AS DECIMAL(5,2)
                     ) < 20 THEN '🔴 Too hard - may have errors, review urgently'
                WHEN CAST(
                        SUM(CASE WHEN c.Is_Correct = 1 THEN 1 ELSE 0 END)
                        * 100.0 / NULLIF(COUNT(seq.ST_ID), 0)
                        AS DECIMAL(5,2)
                     ) BETWEEN 40 AND 80 THEN '✅ Good quality'
                ELSE '⚠️ Review recommended'
            END AS Quality_Status

        FROM Qu_Pool q
        LEFT JOIN Exam_Qup     eq  ON eq.Qu_ID = q.Qu_ID
        LEFT JOIN Stu_Exam_Qup seq ON seq.Ex_ID = eq.Ex_ID AND seq.Qu_ID = eq.Qu_ID
        LEFT JOIN Choices      c   ON seq.Answer_Ch_ID = c.Choice_ID

        WHERE q.Crs_ID = @Crs_ID
        GROUP BY q.Qu_ID, q.Type, q.Body, q.model_answer
        ORDER BY
            CASE
                WHEN COUNT(seq.ST_ID) = 0 THEN 1  -- Never used first
                WHEN CAST(
                        SUM(CASE WHEN c.Is_Correct = 1 THEN 1 ELSE 0 END)
                        * 100.0 / NULLIF(COUNT(seq.ST_ID), 0)
                        AS DECIMAL(5,2)
                     ) >= 95 THEN 2  -- Too easy
                WHEN CAST(
                        SUM(CASE WHEN c.Is_Correct = 1 THEN 1 ELSE 0 END)
                        * 100.0 / NULLIF(COUNT(seq.ST_ID), 0)
                        AS DECIMAL(5,2)
                     ) < 20 THEN 2   -- Too hard
                ELSE 3              -- Good questions last
            END,
            q.Qu_ID;

        -- 4️⃣ Summary statistics by difficulty (fixed: no aggregates in GROUP BY)
        ;WITH QuestionDifficulty AS (
            SELECT
                q.Qu_ID,
                CASE
                    WHEN COUNT(seq.ST_ID) = 0 THEN 'Never Used'
                    WHEN CAST(
                            SUM(CASE WHEN c.Is_Correct = 1 THEN 1 ELSE 0 END)
                            * 100.0 / NULLIF(COUNT(seq.ST_ID), 0)
                            AS DECIMAL(5,2)
                         ) >= 90 THEN 'Too Easy'
                    WHEN CAST(
                            SUM(CASE WHEN c.Is_Correct = 1 THEN 1 ELSE 0 END)
                            * 100.0 / NULLIF(COUNT(seq.ST_ID), 0)
                            AS DECIMAL(5,2)
                         ) >= 70 THEN 'Easy'
                    WHEN CAST(
                            SUM(CASE WHEN c.Is_Correct = 1 THEN 1 ELSE 0 END)
                            * 100.0 / NULLIF(COUNT(seq.ST_ID), 0)
                            AS DECIMAL(5,2)
                         ) >= 50 THEN 'Medium'
                    WHEN CAST(
                            SUM(CASE WHEN c.Is_Correct = 1 THEN 1 ELSE 0 END)
                            * 100.0 / NULLIF(COUNT(seq.ST_ID), 0)
                            AS DECIMAL(5,2)
                         ) >= 30 THEN 'Hard'
                    ELSE 'Too Hard'
                END AS Difficulty_Category
            FROM Qu_Pool q
            LEFT JOIN Exam_Qup     eq  ON eq.Qu_ID = q.Qu_ID
            LEFT JOIN Stu_Exam_Qup seq ON seq.Ex_ID = eq.Ex_ID AND seq.Qu_ID = eq.Qu_ID
            LEFT JOIN Choices      c   ON seq.Answer_Ch_ID = c.Choice_ID
            WHERE q.Crs_ID = @Crs_ID
            GROUP BY q.Qu_ID
        )
        SELECT
            Difficulty_Category,
            COUNT(*) AS Question_Count,
            CAST(
                COUNT(*) * 100.0
                / (SELECT COUNT(*) FROM Qu_Pool WHERE Crs_ID = @Crs_ID)
                AS DECIMAL(5,2)
            ) AS Percentage_Of_Pool
        FROM QuestionDifficulty
        GROUP BY Difficulty_Category
        ORDER BY
            CASE Difficulty_Category
                WHEN 'Never Used' THEN 1
                WHEN 'Too Easy'   THEN 2
                WHEN 'Easy'       THEN 3
                WHEN 'Medium'     THEN 4
                WHEN 'Hard'       THEN 5
                ELSE 6
            END;

        -- 5️⃣ Most problematic questions (need review)
        SELECT TOP 10
            q.Qu_ID,
            q.Type,
            LEFT(q.Body, 100) AS Question_Text,
            COUNT(seq.ST_ID) AS Total_Attempts,
            CAST(
                SUM(CASE WHEN c.Is_Correct = 1 THEN 1 ELSE 0 END)
                * 100.0 / COUNT(seq.ST_ID)
                AS DECIMAL(5,2)
            ) AS Accuracy_Rate,
            'Review urgently - either too hard or has errors' AS Recommendation
        FROM Qu_Pool q
        JOIN Exam_Qup     eq  ON eq.Qu_ID = q.Qu_ID
        JOIN Stu_Exam_Qup seq ON seq.Ex_ID = eq.Ex_ID AND seq.Qu_ID = eq.Qu_ID
        LEFT JOIN Choices c   ON seq.Answer_Ch_ID = c.Choice_ID
        WHERE q.Crs_ID = @Crs_ID
        GROUP BY q.Qu_ID, q.Type, q.Body
        HAVING COUNT(seq.ST_ID) >= 10
           AND CAST(
                SUM(CASE WHEN c.Is_Correct = 1 THEN 1 ELSE 0 END)
                * 100.0 / COUNT(seq.ST_ID)
                AS DECIMAL(5,2)
           ) < 20
        ORDER BY Accuracy_Rate ASC;

    END TRY
    BEGIN CATCH
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        RAISERROR(@ErrorMessage, 16, 1);
    END CATCH
END;
GO
