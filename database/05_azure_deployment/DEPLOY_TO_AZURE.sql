-- ============================================================================
-- ITI EXAMINATION SYSTEM - AZURE SQL DATABASE DEPLOYMENT
-- ============================================================================
-- Purpose: Complete database deployment script for Azure SQL Server
-- Date: 2025-11-18
--
-- USAGE:
-- 1. Create Azure SQL Database first (via Azure Portal or Azure CLI)
-- 2. Connect to Azure SQL Database using SSMS or Azure Data Studio
-- 3. Execute this script
--
-- IMPORTANT:
-- - This script uses relative paths with :r command (SSMS only)
-- - If using Azure Data Studio, you'll need to execute scripts individually
-- - Execution time: ~5-10 minutes depending on data size
-- ============================================================================

USE master;
GO

PRINT '';
PRINT '============================================================================';
PRINT '            ITI EXAMINATION SYSTEM - AZURE DEPLOYMENT';
PRINT '============================================================================';
PRINT 'Started at: ' + CONVERT(VARCHAR, GETDATE(), 120);
PRINT '';
GO

-- ============================================================================
-- STEP 1: CREATE DATABASE (Skip if already created via Azure Portal)
-- ============================================================================
/*
-- Uncomment if you want to create DB via script instead of Azure Portal
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'ITI_Examination_System')
BEGIN
    CREATE DATABASE ITI_Examination_System
    (
        EDITION = 'Basic',              -- Basic, Standard, or Premium
        SERVICE_OBJECTIVE = 'Basic'     -- Adjust based on your needs
    );
    PRINT 'Database created successfully';
END
GO
*/

-- Switch to the database
USE ITI_Examination_System;
GO

PRINT '';
PRINT '============================================================================';
PRINT 'STEP 1/5: Creating Schema (Tables, Constraints, Relationships)';
PRINT '============================================================================';
PRINT '';
GO

-- Execute DDL script
:r ../01_schema/01_DDL_Schema.sql
GO

PRINT '';
PRINT 'STEP 1/5: Schema created successfully!';
PRINT '';
GO

-- ============================================================================
-- STEP 2: INSERT BASE DATA
-- ============================================================================

PRINT '';
PRINT '============================================================================';
PRINT 'STEP 2/5: Inserting Base Data';
PRINT '============================================================================';
PRINT '';
GO

PRINT 'Loading: Base Tables (Departments, Branches, Tracks, Courses, Intakes)...';
:r ../02_base_data/01_Base_Tables.sql
GO

PRINT 'Loading: People (Managers, Instructors, Students)...';
:r ../02_base_data/02_People.sql
GO

PRINT 'Loading: Questions and Choices...';
:r ../02_base_data/03_Questions_Choices.sql
GO

PRINT 'Loading: Mappings (Track-Branch, Instructor-Course, etc.)...';
:r ../02_base_data/04_Mappings.sql
GO

PRINT 'Loading: Exams...';
:r ../02_base_data/05_Exams.sql
GO

PRINT 'Loading: Student Exam Answers (Part 1)...';
:r ../02_base_data/06_Stu_Exam_Qup_Part1.sql
GO

PRINT 'Loading: Student Exam Answers (Part 2)...';
:r ../02_base_data/06_Stu_Exam_Qup_Part2.sql
GO

PRINT 'Loading: Student Grades...';
:r ../02_base_data/07_Student_Grades.sql
GO

PRINT 'Loading: Student Profiles...';
:r ../02_base_data/08_Student_Profiles.sql
GO

PRINT '';
PRINT 'STEP 2/5: Base data loaded successfully!';
PRINT '';
GO

-- ============================================================================
-- STEP 3: INSERT 2026 INTAKE DATA (OPTIONAL - for varied dashboards)
-- ============================================================================

PRINT '';
PRINT '============================================================================';
PRINT 'STEP 3/5: Inserting 2026 Intake Data (Optional)';
PRINT '============================================================================';
PRINT '';
PRINT 'This adds 1000+ students and 100 instructors for varied Power BI dashboards';
PRINT 'Execution time: ~2-3 minutes';
PRINT '';
GO

:r ../02_base_data/EXECUTE_2026_INTAKE.sql
GO

PRINT '';
PRINT 'STEP 3/5: 2026 Intake data loaded successfully!';
PRINT '';
GO

-- ============================================================================
-- STEP 4: CREATE STORED PROCEDURES
-- ============================================================================

PRINT '';
PRINT '============================================================================';
PRINT 'STEP 4/5: Creating Stored Procedures';
PRINT '============================================================================';
PRINT '';
GO

-- Execute all stored procedures in order
:r ../03_stored_procedures/1-sp_OpenNewIntake.sql
GO
:r ../03_stored_procedures/2-sp_insert_intake_branch_tracks.sql
GO
:r ../03_stored_procedures/3-sp_AssignInstructorToCourse.sql
GO
:r ../03_stored_procedures/4-sp_ShowInstructorCourseQuestions.sql
GO
:r ../03_stored_procedures/5-sp_CreateExam_FIXED.sql
GO
:r ../03_stored_procedures/6-sp_ViewAssignedExams.sql
GO
:r ../03_stored_procedures/7-sp_ViewExamPaper.sql
GO
:r ../03_stored_procedures/8-sp_StudentSubmitExam_FIXED.sql
GO
:r ../03_stored_procedures/9-sp_Grade_Unprocessed_Exams.sql
GO
:r ../03_stored_procedures/10-sp_ViewStudentGradesByEmail.sql
GO
:r ../03_stored_procedures/11-sp_ViewInstructorStudentsGrades.sql
GO
:r ../03_stored_procedures/12-sp_EnrollStudent.sql
GO
:r ../03_stored_procedures/13-sp_UpdateStudentStatus.sql
GO
:r ../03_stored_procedures/14-sp_GetStudentPerformanceSummary.sql
GO
:r ../03_stored_procedures/15-sp_Manager_AssignInstructorToBranch.sql
GO
:r ../03_stored_procedures/16-sp_Instructor_GetMyCourses.sql
GO
:r ../03_stored_procedures/17-sp_AuthenticateUser.sql
GO
:r ../03_stored_procedures/18-sp_GetExamStatistics.sql
GO
:r ../03_stored_procedures/19-sp_Instructor_GetMyExams.sql
GO
:r ../03_stored_procedures/20-sp_Student_GetUpcomingExams.sql
GO
:r ../03_stored_procedures/21-sp_Manager_GetSystemDashboard.sql
GO
:r ../03_stored_procedures/22-sp_Manager_AssignCourseToInstructor.sql
GO
:r ../03_stored_procedures/23-sp_CreateCorrectiveExamAutomatically.sql
GO
:r ../03_stored_procedures/24-sp_GetCourseQuestionStatistics.sql
GO
:r ../03_stored_procedures/25-sp_GetInstructorWorkloadReport.sql
GO

PRINT '';
PRINT 'STEP 4/5: All stored procedures created successfully!';
PRINT '';
GO

-- ============================================================================
-- STEP 5: VERIFICATION
-- ============================================================================

PRINT '';
PRINT '============================================================================';
PRINT 'STEP 5/5: Deployment Verification';
PRINT '============================================================================';
PRINT '';
GO

-- Verify tables
SELECT 'Tables Created' AS Verification, COUNT(*) AS Count
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';

-- Verify stored procedures
SELECT 'Stored Procedures Created' AS Verification, COUNT(*) AS Count
FROM INFORMATION_SCHEMA.ROUTINES
WHERE ROUTINE_TYPE = 'PROCEDURE';

-- Verify data
SELECT 'Departments' AS Entity, COUNT(*) AS Count FROM Department
UNION ALL
SELECT 'Branches', COUNT(*) FROM Branch
UNION ALL
SELECT 'Tracks', COUNT(*) FROM Track
UNION ALL
SELECT 'Courses', COUNT(*) FROM Course
UNION ALL
SELECT 'Intakes', COUNT(*) FROM Intake
UNION ALL
SELECT 'Managers', COUNT(*) FROM Manager
UNION ALL
SELECT 'Instructors', COUNT(*) FROM Instructor
UNION ALL
SELECT 'Students', COUNT(*) FROM Student
UNION ALL
SELECT 'Questions', COUNT(*) FROM Qu_Pool
UNION ALL
SELECT 'Exams', COUNT(*) FROM Exam
UNION ALL
SELECT 'Student Grades', COUNT(*) FROM Student_Grades;

-- Sample data check
SELECT TOP 5 * FROM Student ORDER BY ST_ID DESC;
SELECT TOP 5 * FROM Instructor ORDER BY Inst_ID DESC;
SELECT TOP 5 * FROM Course ORDER BY Crs_ID DESC;

PRINT '';
PRINT '============================================================================';
PRINT 'DEPLOYMENT COMPLETED SUCCESSFULLY!';
PRINT '============================================================================';
PRINT 'Completed at: ' + CONVERT(VARCHAR, GETDATE(), 120);
PRINT '';
PRINT 'Next Steps:';
PRINT '1. Test stored procedures';
PRINT '2. Configure firewall rules in Azure Portal';
PRINT '3. Note connection string for web application';
PRINT '4. Set up Azure AD authentication (optional)';
PRINT '';
PRINT 'Connection String Format:';
PRINT 'Server=tcp:<your-server>.database.windows.net,1433;';
PRINT 'Initial Catalog=ITI_Examination_System;';
PRINT 'Persist Security Info=False;';
PRINT 'User ID=<your-username>;Password=<your-password>;';
PRINT 'MultipleActiveResultSets=False;Encrypt=True;';
PRINT 'TrustServerCertificate=False;Connection Timeout=30;';
PRINT '';
PRINT '============================================================================';
PRINT '';
GO
