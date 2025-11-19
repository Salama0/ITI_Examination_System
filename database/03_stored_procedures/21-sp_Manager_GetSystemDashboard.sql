/*
==========================================
🧾 Stored Procedure: sp_Manager_GetSystemDashboard
------------------------------------------
📌 Purpose:
    Returns comprehensive system-wide statistics for manager dashboard.
    Provides high-level overview of entire ITI examination system.

✅ Functionality:
    1. Overall system statistics (students, instructors, courses, exams)
    2. Current intake statistics
    3. Branch-wise breakdown
    4. Track-wise breakdown
    5. Recent activity summary
    6. System health indicators

📊 Web Application Use:
    - Manager Dashboard: Main overview page
    - System Analytics: High-level KPIs
    - Administrative reports

🔒 Permission Required:
    - User Type: Manager
    - Can_Manage_Users = 1

🕓 Usage Example:
    EXEC sp_Manager_GetSystemDashboard;

==========================================
*/

-- Drop if exists
IF OBJECT_ID('dbo.sp_Manager_GetSystemDashboard', 'P') IS NOT NULL
    DROP PROCEDURE dbo.sp_Manager_GetSystemDashboard;
GO

CREATE PROCEDURE dbo.sp_Manager_GetSystemDashboard
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        DECLARE @MaxIntakeID INT;

        -- Get latest intake
        SELECT @MaxIntakeID = MAX(Intake_ID) FROM Intake;

        -- 1️⃣ Overall system statistics
        SELECT
            -- Entity counts
            (SELECT COUNT(*) FROM Student) AS Total_Students,
            (SELECT COUNT(*) FROM Student WHERE Intake_ID = @MaxIntakeID) AS Current_Intake_Students,
            (SELECT COUNT(*) FROM Instructor) AS Total_Instructors,
            (SELECT COUNT(*) FROM Course) AS Total_Courses,
            (SELECT COUNT(*) FROM Branch) AS Total_Branches,
            (SELECT COUNT(*) FROM Track) AS Total_Tracks,
            (SELECT COUNT(*) FROM Intake) AS Total_Intakes,

            -- Exam statistics
            (SELECT COUNT(*) FROM Exam) AS Total_Exams_Created,
            (SELECT COUNT(*) FROM Exam WHERE Intake_ID = @MaxIntakeID) AS Current_Intake_Exams,
            (SELECT COUNT(*) FROM Exam WHERE Corrective = 0) AS Normal_Exams,
            (SELECT COUNT(*) FROM Exam WHERE Corrective = 1) AS Corrective_Exams,

            -- Question bank
            (SELECT COUNT(*) FROM Qu_Pool) AS Total_Questions_In_Pool,
            (SELECT COUNT(*) FROM Qu_Pool WHERE Type = 'MCQ') AS MCQ_Questions,
            (SELECT COUNT(*) FROM Qu_Pool WHERE Type = 'T/F') AS TrueFalse_Questions,

            -- Student grades
            (SELECT COUNT(*) FROM Student_Grades) AS Total_Exam_Submissions,
            (SELECT AVG(Percentage) FROM Student_Grades) AS Overall_Average_Score,
            (SELECT COUNT(*) FROM Student_Grades WHERE Pass_Status = 1) AS Total_Passes,
            (SELECT COUNT(*) FROM Student_Grades WHERE Pass_Status = 0) AS Total_Failures,

            -- Pass rate
            CASE
                WHEN (SELECT COUNT(*) FROM Student_Grades) > 0 THEN
                    CAST((SELECT COUNT(*) FROM Student_Grades WHERE Pass_Status = 1) * 100.0 /
                         (SELECT COUNT(*) FROM Student_Grades) AS DECIMAL(5,2))
                ELSE 0
            END AS Overall_Pass_Rate,

            -- Student status distribution
            (SELECT COUNT(*) FROM Student WHERE Status = 'Student') AS Active_Students,
            (SELECT COUNT(*) FROM Student WHERE Status = 'Graduated') AS Graduated_Students,
            (SELECT COUNT(*) FROM Student WHERE Status = 'Withdrawn') AS Withdrawn_Students,

            -- Latest intake info
            (SELECT Intake_Year FROM Intake WHERE Intake_ID = @MaxIntakeID) AS Current_Intake_Year;

        -- 2️⃣ Branch-wise statistics for current intake
        SELECT
            b.Bran_ID,
            b.Bran_Name,
            b.Location,

            -- Student counts
            COUNT(DISTINCT s.ST_ID) AS Total_Students,
            SUM(CASE WHEN s.Status = 'Student' THEN 1 ELSE 0 END) AS Active_Students,
            SUM(CASE WHEN s.Status = 'Graduated' THEN 1 ELSE 0 END) AS Graduated_Students,

            -- Exam counts
            COUNT(DISTINCT e.Ex_ID) AS Total_Exams,
            COUNT(DISTINCT g.ST_ID) AS Students_Who_Took_Exams,

            -- Performance
            AVG(g.Percentage) AS Average_Score,
            CASE
                WHEN COUNT(g.ST_ID) > 0 THEN
                    CAST(SUM(CASE WHEN g.Pass_Status = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(g.ST_ID) AS DECIMAL(5,2))
                ELSE 0
            END AS Pass_Rate

        FROM Branch b
        LEFT JOIN Student s ON s.Bran_ID = b.Bran_ID AND s.Intake_ID = @MaxIntakeID
        LEFT JOIN Exam e ON e.Bran_ID = b.Bran_ID AND e.Intake_ID = @MaxIntakeID
        LEFT JOIN Student_Grades g ON g.Ex_ID = e.Ex_ID

        GROUP BY b.Bran_ID, b.Bran_Name, b.Location
        ORDER BY b.Bran_Name;

        -- 3️⃣ Track-wise statistics for current intake
        SELECT
            t.Track_ID,
            t.Track_Name,

            -- Student counts per branch
            COUNT(DISTINCT s.ST_ID) AS Total_Students,
            COUNT(DISTINCT s.Bran_ID) AS Branches_Offering_Track,

            -- Exam counts
            COUNT(DISTINCT e.Ex_ID) AS Total_Exams,
            COUNT(DISTINCT e.Crs_ID) AS Courses_With_Exams,

            -- Performance
            AVG(g.Percentage) AS Average_Score,
            CASE
                WHEN COUNT(g.ST_ID) > 0 THEN
                    CAST(SUM(CASE WHEN g.Pass_Status = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(g.ST_ID) AS DECIMAL(5,2))
                ELSE 0
            END AS Pass_Rate

        FROM Track t
        LEFT JOIN Student s ON s.Track_id = t.Track_ID AND s.Intake_ID = @MaxIntakeID
        LEFT JOIN Exam e ON e.Track_ID = t.Track_ID AND e.Intake_ID = @MaxIntakeID
        LEFT JOIN Student_Grades g ON g.Ex_ID = e.Ex_ID

        GROUP BY t.Track_ID, t.Track_Name
        ORDER BY t.Track_Name;

        -- 4️⃣ Recent exam activity (last 30 days)
        SELECT
            e.Ex_ID,
            c.Crs_Name,
            e.Date AS Exam_Date,
            i.Inst_Name,
            t.Track_Name,
            b.Bran_Name,
            CASE WHEN e.Corrective = 1 THEN 'Corrective' ELSE 'Normal' END AS Exam_Type,

            -- Submission stats
            COUNT(DISTINCT g.ST_ID) AS Submissions,
            AVG(g.Percentage) AS Average_Score,
            SUM(CASE WHEN g.Pass_Status = 1 THEN 1 ELSE 0 END) AS Passed,
            SUM(CASE WHEN g.Pass_Status = 0 THEN 1 ELSE 0 END) AS Failed

        FROM Exam e
        JOIN Course c ON e.Crs_ID = c.Crs_ID
        JOIN Instructor i ON e.Inst_ID = i.Inst_ID
        JOIN Track t ON e.Track_ID = t.Track_ID
        JOIN Branch b ON e.Bran_ID = b.Bran_ID
        LEFT JOIN Student_Grades g ON g.Ex_ID = e.Ex_ID

        WHERE e.Date >= DATEADD(DAY, -30, GETDATE())

        GROUP BY e.Ex_ID, c.Crs_Name, e.Date, i.Inst_Name, t.Track_Name, b.Bran_Name, e.Corrective
        ORDER BY e.Date DESC;

        -- 5️⃣ Instructor workload summary
        SELECT TOP 10
            i.Inst_ID,
            i.Inst_Name,
            d.Dep_Name,

            -- Course assignments
            COUNT(DISTINCT cit.Crs_ID) AS Courses_Assigned,
            COUNT(DISTINCT cit.Track_ID) AS Tracks_Teaching,
            COUNT(DISTINCT cit.Bran_ID) AS Branches_Teaching,

            -- Exam creation
            COUNT(DISTINCT e.Ex_ID) AS Exams_Created,
            COUNT(DISTINCT CASE WHEN e.Intake_ID = @MaxIntakeID THEN e.Ex_ID END) AS Current_Intake_Exams,

            -- Students graded
            COUNT(DISTINCT g.ST_ID) AS Students_Graded

        FROM Instructor i
        LEFT JOIN Department d ON i.Dep_ID = d.Dep_ID
        LEFT JOIN Crs_Inst_Track_Branch_Intake cit ON cit.Inst_ID = i.Inst_ID AND cit.Intake_ID = @MaxIntakeID
        LEFT JOIN Exam e ON e.Inst_ID = i.Inst_ID
        LEFT JOIN Student_Grades g ON g.Ex_ID = e.Ex_ID

        GROUP BY i.Inst_ID, i.Inst_Name, d.Dep_Name
        ORDER BY COUNT(DISTINCT e.Ex_ID) DESC;

        -- 6️⃣ System health indicators
        SELECT
            -- Students needing corrective exams
            (SELECT COUNT(DISTINCT g.ST_ID)
             FROM Student_Grades g
             JOIN Exam e ON g.Ex_ID = e.Ex_ID
             WHERE g.Pass_Status = 0
               AND e.Corrective = 0
               AND e.Intake_ID = @MaxIntakeID) AS Students_Needing_Corrective,

            -- Exams with low pass rates (< 60%)
            (SELECT COUNT(*)
             FROM (
                 SELECT e.Ex_ID,
                        CAST(SUM(CASE WHEN g.Pass_Status = 1 THEN 1 ELSE 0 END) * 100.0 / NULLIF(COUNT(g.ST_ID), 0) AS DECIMAL(5,2)) AS Pass_Rate
                 FROM Exam e
                 JOIN Student_Grades g ON g.Ex_ID = e.Ex_ID
                 WHERE e.Intake_ID = @MaxIntakeID
                 GROUP BY e.Ex_ID
             ) sub
             WHERE sub.Pass_Rate < 60) AS Exams_With_Low_Pass_Rate,

            -- Upcoming exams (next 7 days)
            (SELECT COUNT(*)
             FROM Exam
             WHERE Date BETWEEN GETDATE() AND DATEADD(DAY, 7, GETDATE())) AS Upcoming_Exams_Next_7_Days,

            -- Students with no exam submissions
            (SELECT COUNT(*)
             FROM Student s
             LEFT JOIN Student_Grades g ON g.ST_ID = s.ST_ID
             WHERE s.Intake_ID = @MaxIntakeID
               AND g.ST_ID IS NULL) AS Students_With_No_Submissions;

    END TRY
    BEGIN CATCH
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        RAISERROR(@ErrorMessage, 16, 1);
    END CATCH
END;
GO
