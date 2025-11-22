-- =============================================
-- FIX: Update sp_GetUserByID to use correct table name 'Users' instead of 'User'
-- =============================================

CREATE OR ALTER PROCEDURE [dbo].[sp_GetUserByID]
    @User_ID INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        u.User_ID,
        u.Email,
        u.Password_Hash,
        u.User_Type,
        u.ST_ID,
        u.Inst_ID,
        u.Is_Active,
        u.Last_Login,
        -- Full name based on user type
        CASE
            WHEN u.User_Type = 'Student' THEN s.ST_Name
            WHEN u.User_Type = 'Instructor' THEN i.Inst_Name
            WHEN u.User_Type = 'Manager' THEN tm.TManager_Name
            ELSE 'User'
        END AS Full_Name,
        -- Student specific fields
        s.Intake_ID,
        s.Track_id,
        s.Bran_id,
        t.Track_Name,
        b.Bran_Name,
        -- Instructor specific fields
        i.Dept_ID,
        d.Dept_Name
    FROM Users u  -- FIXED: Changed from [User] to Users
    LEFT JOIN Student s ON u.ST_ID = s.ST_ID
    LEFT JOIN Instructor i ON u.Inst_ID = i.Inst_ID
    LEFT JOIN Training_Manager tm ON u.TManager_ID = tm.TManager_ID
    LEFT JOIN Track t ON s.Track_id = t.Track_ID
    LEFT JOIN Branch b ON s.Bran_id = b.Bran_ID
    LEFT JOIN Department d ON i.Dept_ID = d.Dept_ID
    WHERE u.User_ID = @User_ID;
END;
GO

-- Grant execute permission to webapp_user
GRANT EXECUTE ON sp_GetUserByID TO webapp_user;
GO
