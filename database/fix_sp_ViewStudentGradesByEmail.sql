-- ============================================================================
-- FIX: sp_ViewStudentGradesByEmail - Fix email lookup and result set
-- ============================================================================

IF OBJECT_ID('dbo.sp_ViewStudentGradesByEmail', 'P') IS NOT NULL
    DROP PROCEDURE dbo.sp_ViewStudentGradesByEmail;
GO

CREATE PROCEDURE dbo.sp_ViewStudentGradesByEmail
    @Email NVARCHAR(255)
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        DECLARE @StudentID INT;

        -- 1. Get Student_ID from Users table (NOT from Student table)
        SELECT @StudentID = Student_ID
        FROM Users
        WHERE Email = @Email AND User_Type = 'Student' AND Is_Active = 1;

        -- 2. Always return a SELECT result set (even if empty)
        --    This ensures SQLAlchemy doesn't fail
        SELECT
            s.ST_Name AS Student_Name,
            c.Crs_Name,
            CASE
                WHEN e.Corrective = 1 THEN 'Corrective'
                ELSE 'Normal'
            END AS Exam_Type,
            e.Date AS Exam_Date,
            g.Grade,
            CASE
                WHEN g.Pass_Status = 1 THEN 'Pass'
                ELSE 'Fail'
            END AS Status,
            i.Intake_Year,
            t.Track_Name,
            b.Bran_Name
        FROM Student_Grades g
        INNER JOIN Exam e ON g.Ex_ID = e.Ex_ID
        INNER JOIN Course c ON e.Crs_ID = c.Crs_ID
        INNER JOIN Student s ON g.ST_ID = s.ST_ID
        INNER JOIN Intake i ON s.Intake_ID = i.Intake_ID
        LEFT JOIN Track t ON s.Track_ID = t.Track_ID
        LEFT JOIN Branch b ON s.Bran_ID = b.Bran_ID
        WHERE s.ST_ID = @StudentID  -- Will return empty set if @StudentID is NULL
        ORDER BY i.Intake_Year DESC, e.Date DESC;

    END TRY
    BEGIN CATCH
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        RAISERROR(@ErrorMessage, 16, 1);
    END CATCH
END;
GO

-- Grant permission
GRANT EXECUTE ON sp_ViewStudentGradesByEmail TO webapp_user;
GO

PRINT '✅ sp_ViewStudentGradesByEmail has been fixed successfully';
PRINT 'Testing with student1@student.iti.gov.eg...';
GO

-- Test it
EXEC sp_ViewStudentGradesByEmail @Email = 'student1@student.iti.gov.eg';
GO
