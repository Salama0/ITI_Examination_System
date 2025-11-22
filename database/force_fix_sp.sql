-- ============================================================================
-- FORCE FIX: Drop and recreate sp_GetUserByID
-- Run this entire script in SSMS (highlight all and execute)
-- ============================================================================

-- First, drop the procedure if it exists
IF OBJECT_ID('dbo.sp_GetUserByID', 'P') IS NOT NULL
BEGIN
    DROP PROCEDURE dbo.sp_GetUserByID;
    PRINT 'Dropped existing sp_GetUserByID';
END
ELSE
BEGIN
    PRINT 'sp_GetUserByID did not exist';
END
GO

-- Now create the corrected version
CREATE PROCEDURE dbo.sp_GetUserByID
    @User_ID INT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        SELECT
            u.User_ID,
            u.Email,
            u.User_Type,
            u.Student_ID,
            u.Instructor_ID,
            u.Is_Active,
            u.Last_Login,

            -- Get user's full name based on type
            CASE
                WHEN u.User_Type = 'Student' THEN s.ST_Name
                WHEN u.User_Type = 'Instructor' THEN i.Inst_Name
                WHEN u.User_Type = 'Manager' THEN 'Training Manager'
                ELSE 'Unknown'
            END AS Full_Name,

            -- Get additional info
            s.Intake_ID,
            s.Track_id,
            s.Bran_ID,
            t.Track_Name,
            b.Bran_Name,
            i.Dep_ID,
            d.Dep_Name

        FROM Users u
        LEFT JOIN Student s ON u.Student_ID = s.ST_ID
        LEFT JOIN Track t ON s.Track_id = t.Track_ID
        LEFT JOIN Branch b ON s.Bran_ID = b.Bran_ID
        LEFT JOIN Instructor i ON u.Instructor_ID = i.Inst_ID
        LEFT JOIN Department d ON i.Dep_ID = d.Dep_ID

        WHERE u.User_ID = @User_ID AND u.Is_Active = 1;

    END TRY
    BEGIN CATCH
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        RAISERROR(@ErrorMessage, 16, 1);
    END CATCH
END;
GO

-- Grant permission to webapp_user
GRANT EXECUTE ON sp_GetUserByID TO webapp_user;
GO

-- Verify it was created successfully
SELECT
    name,
    type_desc,
    create_date,
    modify_date
FROM sys.objects
WHERE name = 'sp_GetUserByID';
GO

PRINT '✅ sp_GetUserByID has been recreated successfully';
PRINT 'Testing the procedure with user_id = 2 (instructor1)...';
GO

-- Test it
EXEC sp_GetUserByID @User_ID = 2;
GO
