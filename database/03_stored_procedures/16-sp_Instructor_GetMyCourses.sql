/*
==========================================
🧾 Stored Procedure: sp_Instructor_GetMyCourses
------------------------------------------
📌 Purpose:
    Returns all courses assigned to an instructor in the current intake.
    Grouped by Branch and Track for easy navigation.

✅ Functionality:
    1. Validates instructor exists
    2. Gets all course assignments for current intake
    3. Returns courses organized by branch/track
    4. Shows how many exams created for each course

📊 Web Application Use:
    - Instructor Dashboard: "My Courses" widget
    - Course selection dropdown for exam creation

🕓 Usage Example:
    EXEC sp_Instructor_GetMyCourses
        @Inst_ID = 20;

==========================================
*/

-- Drop if exists
IF OBJECT_ID('dbo.sp_Instructor_GetMyCourses', 'P') IS NOT NULL
    DROP PROCEDURE dbo.sp_Instructor_GetMyCourses;
GO

CREATE PROCEDURE dbo.sp_Instructor_GetMyCourses
    @Inst_ID INT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        DECLARE @MaxIntakeID INT;

        -- 1️⃣ Validate instructor exists
        IF NOT EXISTS (SELECT 1 FROM Instructor WHERE Inst_ID = @Inst_ID)
        BEGIN
            RAISERROR('❌ Instructor ID does not exist.', 16, 1);
            RETURN;
        END

        -- 2️⃣ Get latest intake
        SELECT @MaxIntakeID = MAX(Intake_ID) FROM Intake;

        -- 3️⃣ Return instructor's courses
        SELECT
            c.Crs_ID,
            c.Crs_Name,
            c.Crs_Description,
            t.Track_ID,
            t.Track_Name,
            b.Bran_ID,
            b.Bran_Name,
            i.Intake_Year,
            d.Dep_Name AS Department,

            -- Exam statistics
            COUNT(DISTINCT e.Ex_ID) AS Exams_Created,
            SUM(CASE WHEN e.Corrective = 0 THEN 1 ELSE 0 END) AS Normal_Exams,
            SUM(CASE WHEN e.Corrective = 1 THEN 1 ELSE 0 END) AS Corrective_Exams,

            -- Student count
            COUNT(DISTINCT s.ST_ID) AS Total_Students_In_Track

        FROM Crs_Inst_Track_Branch_Intake cit
        JOIN Course c ON cit.Crs_ID = c.Crs_ID
        JOIN Track t ON cit.Track_ID = t.Track_ID
        JOIN Branch b ON cit.Bran_ID = b.Bran_ID
        JOIN Intake i ON cit.Intake_ID = i.Intake_ID
        LEFT JOIN Department d ON cit.Dep_ID = d.Dep_ID
        LEFT JOIN Exam e ON e.Crs_ID = c.Crs_ID
                        AND e.Inst_ID = @Inst_ID
                        AND e.Track_ID = t.Track_ID
                        AND e.Bran_ID = b.Bran_ID
                        AND e.Intake_ID = @MaxIntakeID
        LEFT JOIN Student s ON s.Intake_ID = @MaxIntakeID
                           AND s.Track_id = t.Track_ID
                           AND s.Bran_ID = b.Bran_ID

        WHERE cit.Inst_ID = @Inst_ID
          AND cit.Intake_ID = @MaxIntakeID

        GROUP BY
            c.Crs_ID, c.Crs_Name, c.Crs_Description,
            t.Track_ID, t.Track_Name,
            b.Bran_ID, b.Bran_Name,
            i.Intake_Year, d.Dep_Name

        ORDER BY b.Bran_Name, t.Track_Name, c.Crs_Name;

    END TRY
    BEGIN CATCH
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        RAISERROR(@ErrorMessage, 16, 1);
    END CATCH
END;
GO
