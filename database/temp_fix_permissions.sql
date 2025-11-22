-- =============================================
-- Fix Missing EXECUTE Permission on sp_GetUserByID
-- This is required for JWT token validation to work
-- =============================================

-- First, check current permissions on sp_GetUserByID for webapp_user
SELECT
    OBJECT_NAME(major_id) AS ObjectName,
    USER_NAME(grantee_principal_id) AS UserName,
    permission_name,
    state_desc
FROM sys.database_permissions
WHERE OBJECT_NAME(major_id) = 'sp_GetUserByID'
    AND USER_NAME(grantee_principal_id) = 'webapp_user';

-- Grant EXECUTE permission on sp_GetUserByID to webapp_user
GRANT EXECUTE ON sp_GetUserByID TO webapp_user;
GO

-- Verify the permission was granted
SELECT
    OBJECT_NAME(major_id) AS ObjectName,
    USER_NAME(grantee_principal_id) AS UserName,
    permission_name,
    state_desc
FROM sys.database_permissions
WHERE OBJECT_NAME(major_id) = 'sp_GetUserByID'
    AND USER_NAME(grantee_principal_id) = 'webapp_user';
GO
