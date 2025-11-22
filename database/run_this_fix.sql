-- ============================================================================
-- FIX: Re-create sp_GetUserByID with correct column structure
-- ============================================================================

IF OBJECT_ID('dbo.sp_GetUserByID', 'P') IS NOT NULL
    DROP PROCEDURE dbo.sp_GetUserByID;
GO

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

-- Grant permission
GRANT EXECUTE ON sp_GetUserByID TO webapp_user;
GO

PRINT '✅ sp_GetUserByID created and permission granted successfully';
GO
