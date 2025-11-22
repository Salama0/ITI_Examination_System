-- =============================================
-- DEBUG QUERIES - Run these in SSMS
-- =============================================

-- 1. Check if sp_GetUserByID exists
SELECT
    OBJECT_ID('dbo.sp_GetUserByID') AS ObjectID,
    CASE
        WHEN OBJECT_ID('dbo.sp_GetUserByID') IS NULL THEN 'DOES NOT EXIST'
        ELSE 'EXISTS'
    END AS Status;

-- 2. Check permissions on sp_GetUserByID
SELECT
    OBJECT_NAME(major_id) AS ObjectName,
    USER_NAME(grantee_principal_id) AS UserName,
    permission_name,
    state_desc
FROM sys.database_permissions
WHERE OBJECT_NAME(major_id) = 'sp_GetUserByID';

-- 3. Test the stored procedure manually (as webapp_user)
EXECUTE AS USER = 'webapp_user';
GO
EXEC sp_GetUserByID @User_ID = 2;  -- instructor1
GO
REVERT;
GO

-- 4. Check what user the connection string uses
SELECT CURRENT_USER AS CurrentUser;

-- 5. List all stored procedures and their permissions for webapp_user
SELECT
    p.name AS ProcedureName,
    dp.permission_name,
    dp.state_desc
FROM sys.procedures p
LEFT JOIN sys.database_permissions dp ON p.object_id = dp.major_id
LEFT JOIN sys.database_principals pr ON dp.grantee_principal_id = pr.principal_id
WHERE pr.name = 'webapp_user' OR dp.grantee_principal_id IS NULL
ORDER BY p.name;
