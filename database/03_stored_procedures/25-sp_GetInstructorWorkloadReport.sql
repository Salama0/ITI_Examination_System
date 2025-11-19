/*
==========================================
🧾 Stored Procedure: sp_GetInstructorWorkloadReport
------------------------------------------
📌 Purpose:
    Generates comprehensive workload report for an instructor.
    Shows teaching assignments, exam creation, grading workload,
    and time allocation across courses/branches/tracks.

✅ Functionality:
    1. Shows all course assignments
    2. Exam creation statistics
    3. Grading workload (how many exams to grade)
    4. Student count per assignment
    5. Time distribution analysis
    6. Workload comparison to department average

📊 Web Application Use:
    - Instructor Dashboard: Personal workload view
    - Manager Dashboard: Instructor workload balancing
    - Academic planning and resource allocation

🔒 Permission Required:
    - User Type: Instructor (own report) or Manager (all instructors)
    - Can_View_Exams = 1

🕓 Usage Example:
    EXEC sp_GetInstructorWorkloadReport
        @Inst_ID = 20;

==========================================
*/

-- Drop if exists
IF OBJECT_ID('dbo.sp_GetInstructorWorkloadReport', 'P') IS NOT NULL
    DROP PROCEDURE dbo.sp_GetInstructorWorkloadReport;
GO

CREATE PROCEDURE dbo.sp_GetInstructorWorkloadReport
    @Inst_ID INT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        DECLARE @MaxIntakeID INT;
        DECLARE @Dep_ID INT;

        -- 1️⃣ Validate instructor exists
        IF NOT EXISTS (SELECT 1 FROM Instructor WHERE Inst_ID = @Inst_ID)
        BEGIN
            RAISERROR('❌ Instructor ID does not exist.', 16, 1);
            RETURN;
        END

        -- Get latest intake and department
        SELECT @MaxIntakeID = MAX(Intake_ID) FROM Intake;
        SELECT @Dep_ID = Dep_ID FROM Instructor WHERE Inst_ID = @Inst_ID;

        -- 2️⃣ Instructor overview
        SELECT
            i.Inst_ID,
            i.Inst_Name,
            i.Email,
            d.Dep_Name,

            -- Current intake assignments
            COUNT(DISTINCT cit.Crs_ID)   AS Courses_Assigned_Current_Intake,
            COUNT(DISTINCT cit.Track_ID) AS Tracks_Teaching,
            COUNT(DISTINCT cit.Bran_ID)  AS Branches_Teaching,

            -- Exam workload
            COUNT(DISTINCT e.Ex_ID) AS Total_Exams_Created,
            COUNT(DISTINCT CASE WHEN e.Intake_ID = @MaxIntakeID THEN e.Ex_ID END)
                AS Current_Intake_Exams,
            SUM(CASE WHEN e.Corrective = 0 THEN 1 ELSE 0 END) AS Normal_Exams,
            SUM(CASE WHEN e.Corrective = 1 THEN 1 ELSE 0 END) AS Corrective_Exams,

            -- Grading workload
            COUNT(DISTINCT g.ST_ID) AS Total_Students_Graded,
            -- ✅ FIX: no subquery in COUNT argument, use joined Exam alias instead
            COUNT(DISTINCT CASE WHEN e.Intake_ID = @MaxIntakeID THEN g.ST_ID END)
                AS Current_Intake_Students_Graded,

            -- Student reach
            (SELECT COUNT(DISTINCT s.ST_ID)
             FROM Student s
             JOIN Crs_Inst_Track_Branch_Intake cit2
               ON cit2.Track_ID  = s.Track_id
              AND cit2.Bran_ID   = s.Bran_ID
              AND cit2.Intake_ID = s.Intake_ID
             WHERE cit2.Inst_ID  = @Inst_ID
               AND s.Intake_ID   = @MaxIntakeID) AS Total_Students_Teaching

        FROM Instructor i
        LEFT JOIN Department d ON i.Dep_ID = d.Dep_ID
        LEFT JOIN Crs_Inst_Track_Branch_Intake cit
               ON cit.Inst_ID   = i.Inst_ID
              AND cit.Intake_ID = @MaxIntakeID
        LEFT JOIN Exam e  ON e.Inst_ID = i.Inst_ID
        LEFT JOIN Student_Grades g ON g.Ex_ID = e.Ex_ID

        WHERE i.Inst_ID = @Inst_ID
        GROUP BY i.Inst_ID, i.Inst_Name, i.Email, d.Dep_Name;

        -- 3️⃣ Course assignments breakdown (current intake)
        SELECT
            c.Crs_Name,
            t.Track_Name,
            b.Bran_Name,

            -- Student count
            COUNT(DISTINCT s.ST_ID) AS Students_In_Track,

            -- Exam statistics
            COUNT(DISTINCT e.Ex_ID) AS Exams_Created_For_This_Assignment,
            SUM(CASE WHEN e.Corrective = 0 THEN 1 ELSE 0 END) AS Normal_Exams,
            SUM(CASE WHEN e.Corrective = 1 THEN 1 ELSE 0 END) AS Corrective_Exams,

            -- Grading workload
            COUNT(DISTINCT g.ST_ID) AS Students_Graded,
            COUNT(DISTINCT s.ST_ID) - COUNT(DISTINCT g.ST_ID) AS Students_Not_Yet_Graded,

            -- Performance metrics
            AVG(g.Percentage) AS Average_Score,
            CASE
                WHEN COUNT(g.ST_ID) > 0 THEN
                    CAST(
                        SUM(CASE WHEN g.Pass_Status = 1 THEN 1 ELSE 0 END)
                        * 100.0 / COUNT(g.ST_ID)
                        AS DECIMAL(5,2)
                    )
                ELSE NULL
            END AS Pass_Rate

        FROM Crs_Inst_Track_Branch_Intake cit
        JOIN Course c ON cit.Crs_ID = c.Crs_ID
        JOIN Track t  ON cit.Track_ID = t.Track_ID
        JOIN Branch b ON cit.Bran_ID = b.Bran_ID
        LEFT JOIN Student s
               ON s.Track_id  = t.Track_ID
              AND s.Bran_ID   = b.Bran_ID
              AND s.Intake_ID = @MaxIntakeID
        LEFT JOIN Exam e
               ON e.Crs_ID    = c.Crs_ID
              AND e.Track_ID  = t.Track_ID
              AND e.Bran_ID   = b.Bran_ID
              AND e.Inst_ID   = @Inst_ID
              AND e.Intake_ID = @MaxIntakeID
        LEFT JOIN Student_Grades g ON g.Ex_ID = e.Ex_ID

        WHERE cit.Inst_ID   = @Inst_ID
          AND cit.Intake_ID = @MaxIntakeID

        GROUP BY c.Crs_Name, t.Track_Name, b.Bran_Name
        ORDER BY c.Crs_Name, t.Track_Name, b.Bran_Name;

        -- 4️⃣ Upcoming and recent exams
        SELECT
            e.Ex_ID,
            c.Crs_Name,
            e.Date       AS Exam_Date,
            e.start_time,
            e.End_time,
            CASE WHEN e.Corrective = 1 THEN 'Corrective' ELSE 'Normal' END AS Exam_Type,
            t.Track_Name,
            b.Bran_Name,

            -- Submission status
            COUNT(DISTINCT s.ST_ID) AS Expected_Students,
            COUNT(DISTINCT g.ST_ID) AS Students_Submitted,
            COUNT(DISTINCT s.ST_ID) - COUNT(DISTINCT g.ST_ID) AS Students_Not_Submitted,

            -- Status
            CASE
                WHEN e.Date > GETDATE() THEN '📅 Upcoming'
                WHEN e.Date = CAST(GETDATE() AS DATE)
                     AND e.End_time > CAST(GETDATE() AS TIME) THEN '🟢 In Progress'
                WHEN COUNT(DISTINCT g.ST_ID) = COUNT(DISTINCT s.ST_ID) THEN '✅ Completed'
                ELSE '⏳ Pending Submissions'
            END AS Exam_Status

        FROM Exam e
        JOIN Course c ON e.Crs_ID = c.Crs_ID
        JOIN Track  t ON e.Track_ID = t.Track_ID
        JOIN Branch b ON e.Bran_ID = b.Bran_ID
        LEFT JOIN Student s
               ON s.Track_id  = e.Track_ID
              AND s.Bran_ID   = e.Bran_ID
              AND s.Intake_ID = e.Intake_ID
        LEFT JOIN Student_Grades g
               ON g.Ex_ID = e.Ex_ID
              AND g.ST_ID = s.ST_ID

        WHERE e.Inst_ID = @Inst_ID
          AND e.Date >= DATEADD(DAY, -30, GETDATE())  -- Last 30 days and future

        GROUP BY e.Ex_ID, c.Crs_Name, e.Date,
                 e.start_time, e.End_time, e.Corrective,
                 t.Track_Name, b.Bran_Name
        ORDER BY e.Date DESC;

        -- 5️⃣ Workload comparison to department average
        SELECT
            'This Instructor' AS Comparison,
            (SELECT COUNT(DISTINCT cit.Crs_ID)
             FROM Crs_Inst_Track_Branch_Intake cit
             WHERE cit.Inst_ID   = @Inst_ID
               AND cit.Intake_ID = @MaxIntakeID) AS Courses_Assigned,

            (SELECT COUNT(DISTINCT e.Ex_ID)
             FROM Exam e
             WHERE e.Inst_ID   = @Inst_ID
               AND e.Intake_ID = @MaxIntakeID) AS Exams_Created,

            (SELECT COUNT(DISTINCT g.ST_ID)
             FROM Student_Grades g
             JOIN Exam e ON g.Ex_ID = e.Ex_ID
             WHERE e.Inst_ID   = @Inst_ID
               AND e.Intake_ID = @MaxIntakeID) AS Students_Graded

        UNION ALL

        SELECT
            'Department Average' AS Comparison,
            AVG(CAST(course_count  AS FLOAT)) AS Courses_Assigned,
            AVG(CAST(exam_count    AS FLOAT)) AS Exams_Created,
            AVG(CAST(student_count AS FLOAT)) AS Students_Graded
        FROM (
            SELECT
                i.Inst_ID,
                COUNT(DISTINCT cit.Crs_ID) AS course_count,
                COUNT(DISTINCT e.Ex_ID)    AS exam_count,
                COUNT(DISTINCT g.ST_ID)    AS student_count
            FROM Instructor i
            LEFT JOIN Crs_Inst_Track_Branch_Intake cit
                   ON cit.Inst_ID   = i.Inst_ID
                  AND cit.Intake_ID = @MaxIntakeID
            LEFT JOIN Exam e
                   ON e.Inst_ID   = i.Inst_ID
                  AND e.Intake_ID = @MaxIntakeID
            LEFT JOIN Student_Grades g ON g.Ex_ID = e.Ex_ID
            WHERE i.Dep_ID = @Dep_ID
            GROUP BY i.Inst_ID
        ) sub;

        -- 6️⃣ Workload health indicator
        SELECT
            CASE
                WHEN (SELECT COUNT(DISTINCT cit.Crs_ID)
                      FROM Crs_Inst_Track_Branch_Intake cit
                      WHERE cit.Inst_ID   = @Inst_ID
                        AND cit.Intake_ID = @MaxIntakeID) = 0
                    THEN '⚠️ No course assignments'
                WHEN (SELECT COUNT(DISTINCT cit.Crs_ID)
                      FROM Crs_Inst_Track_Branch_Intake cit
                      WHERE cit.Inst_ID   = @Inst_ID
                        AND cit.Intake_ID = @MaxIntakeID) > 5
                    THEN '🔴 High workload - consider redistribution'
                WHEN (SELECT COUNT(DISTINCT cit.Crs_ID)
                      FROM Crs_Inst_Track_Branch_Intake cit
                      WHERE cit.Inst_ID   = @Inst_ID
                        AND cit.Intake_ID = @MaxIntakeID) BETWEEN 3 AND 5
                    THEN '✅ Balanced workload'
                ELSE '🟢 Light workload'
            END AS Workload_Status,

            CASE
                WHEN (SELECT COUNT(DISTINCT e.Ex_ID)
                      FROM Exam e
                      WHERE e.Inst_ID = @Inst_ID
                        AND e.Date BETWEEN GETDATE() AND DATEADD(DAY, 7, GETDATE())) > 3
                    THEN '⚠️ Multiple exams scheduled in next 7 days'
                ELSE '✅ Manageable exam schedule'
            END AS Upcoming_Exam_Load;

    END TRY
    BEGIN CATCH
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        RAISERROR(@ErrorMessage, 16, 1);
    END CATCH
END;
GO

