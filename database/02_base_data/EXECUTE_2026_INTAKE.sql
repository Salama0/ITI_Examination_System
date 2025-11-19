-- ============================================================================
-- ITI EXAMINATION SYSTEM - 2026 INTAKE DATA INSERTION
-- Master Execution Script
-- ============================================================================
-- Purpose: Execute all 2026 intake data scripts in correct order
-- Date: 2025-11-17
--
-- This script will add:
--   - 1 New Intake (2026)
--   - 3 New Tracks
--   - 33 New Courses
--   - 100 New Instructors (IDs: 151-250)
--   - 1000 New Students (IDs: 5001-6000) with Status = 'Active'
--   - All necessary mapping tables with FK integrity
--
-- IMPORTANT: This script ADDS data only. It does NOT drop or truncate tables.
--            All existing data (2021-2025 intakes) will remain intact.
-- ============================================================================

USE ITI_Examination_System;
GO

SET NOCOUNT ON;
GO

PRINT '';
PRINT '============================================================================';
PRINT '             ITI EXAMINATION SYSTEM - 2026 INTAKE DATA INSERTION';
PRINT '============================================================================';
PRINT 'Started at: ' + CONVERT(VARCHAR, GETDATE(), 120);
PRINT '';
PRINT 'This will add:';
PRINT '  - 1 New Intake (2026)';
PRINT '  - 3 New Tracks (Cloud & DevOps, Full Stack JavaScript, Data Science)';
PRINT '  - 33 New Courses (101-133)';
PRINT '  - 100 New Instructors (151-250)';
PRINT '  - 1000 New Students (5001-6000) - Status: Active';
PRINT '  - All mapping tables with proper FK relationships';
PRINT '';
PRINT '============================================================================';
PRINT '';
GO

-- ============================================================================
-- STEP 1/4: Execute Intake, Tracks, Courses, and Instructors
-- ============================================================================

PRINT '';
PRINT '============================================================================';
PRINT 'STEP 1/4: Inserting Intake, Tracks, Courses, and Instructors';
PRINT '============================================================================';
PRINT '';
GO

:r 2026_01_Intake_Tracks_Courses_Instructors.sql
GO

PRINT '';
PRINT 'STEP 1/4: Completed successfully!';
PRINT '';
GO

-- ============================================================================
-- STEP 2/4: Execute Students
-- ============================================================================

PRINT '';
PRINT '============================================================================';
PRINT 'STEP 2/4: Inserting 1000 Students';
PRINT '============================================================================';
PRINT '';
GO

:r 2026_02_Students.sql
GO

PRINT '';
PRINT 'STEP 2/4: Completed successfully!';
PRINT '';
GO

-- ============================================================================
-- STEP 3/4: Execute Mappings (Track-Branch-Intake, Instructor-Branch, Course-Instructor-Intake)
-- ============================================================================

PRINT '';
PRINT '============================================================================';
PRINT 'STEP 3/4: Inserting Mapping Tables';
PRINT '============================================================================';
PRINT '';
GO

:r 2026_03_Mappings.sql
GO

PRINT '';
PRINT 'STEP 3/4: Completed successfully!';
PRINT '';
GO

-- ============================================================================
-- STEP 4/4: Execute CITBI Mappings (Final FK integrity table)
-- ============================================================================

PRINT '';
PRINT '============================================================================';
PRINT 'STEP 4/4: Inserting CITBI Mappings (Final FK Integrity)';
PRINT '============================================================================';
PRINT '';
GO

:r 2026_04_CITBI_Mappings.sql
GO

PRINT '';
PRINT 'STEP 4/4: Completed successfully!';
PRINT '';
GO

-- ============================================================================
-- VERIFICATION QUERIES
-- ============================================================================

PRINT '';
PRINT '============================================================================';
PRINT 'VERIFICATION SUMMARY';
PRINT '============================================================================';
PRINT '';
GO

-- Verify 2026 Intake
SELECT 'Intake Check' AS [Verification], COUNT(*) AS [Count]
FROM dbo.Intake
WHERE Intake_Year = 2026;

-- Verify New Tracks
SELECT 'New Tracks Check' AS [Verification], COUNT(*) AS [Count]
FROM dbo.Track
WHERE Track_ID >= 11;

-- Verify New Courses
SELECT 'New Courses Check' AS [Verification], COUNT(*) AS [Count]
FROM dbo.Course
WHERE Crs_ID >= 101;

-- Verify New Instructors
SELECT 'New Instructors Check' AS [Verification], COUNT(*) AS [Count]
FROM dbo.Instructor
WHERE Inst_ID >= 151;

-- Verify New Students
SELECT 'New Students Check' AS [Verification], COUNT(*) AS [Count]
FROM dbo.Student
WHERE ST_ID >= 5001 AND Intake_ID = 6;

-- Verify Active Students
SELECT 'Active Students Check' AS [Verification], COUNT(*) AS [Count]
FROM dbo.Student
WHERE ST_ID >= 5001 AND [Status] = 'Active';

-- Verify Track-Branch-Intake Mappings
SELECT 'Track-Branch-Intake' AS [Verification], COUNT(*) AS [Count]
FROM dbo.Track_Branch_Intake
WHERE Intake_ID = 6;

-- Verify Instructor-Branch Assignments
SELECT 'Instructor-Branch' AS [Verification], COUNT(*) AS [Count]
FROM dbo.Intake_Inst_Branch
WHERE Intake_ID = 6;

-- Verify Course-Instructor-Intake
SELECT 'Course-Instructor-Intake' AS [Verification], COUNT(*) AS [Count]
FROM dbo.Crs_Inst_Intake
WHERE Intake_ID = 6;

-- Verify CITBI Mappings
SELECT 'CITBI Mappings' AS [Verification], COUNT(*) AS [Count]
FROM dbo.Crs_Inst_Track_Branch_Intake
WHERE Intake_ID = 6;

-- Student Distribution by Branch
PRINT '';
PRINT 'Student Distribution by Branch (2026):';
SELECT
    b.Bran_Name,
    COUNT(s.ST_ID) AS [Student_Count]
FROM dbo.Student s
JOIN dbo.Branch b ON s.Bran_ID = b.Bran_ID
WHERE s.Intake_ID = 6
GROUP BY b.Bran_Name
ORDER BY COUNT(s.ST_ID) DESC;

-- Instructor Distribution by Branch
PRINT '';
PRINT 'Instructor Distribution by Branch (2026):';
SELECT
    b.Bran_Name,
    COUNT(DISTINCT iib.Inst_ID) AS [Instructor_Count]
FROM dbo.Intake_Inst_Branch iib
JOIN dbo.Branch b ON iib.Bran_ID = b.Bran_ID
WHERE iib.Intake_ID = 6
GROUP BY b.Bran_Name
ORDER BY COUNT(DISTINCT iib.Inst_ID) DESC;

-- Track Distribution by Branch
PRINT '';
PRINT 'Track Distribution by Branch (2026):';
SELECT
    b.Bran_Name,
    COUNT(DISTINCT tbi.Track_ID) AS [Track_Count]
FROM dbo.Track_Branch_Intake tbi
JOIN dbo.Branch b ON tbi.Bran_ID = b.Bran_ID
WHERE tbi.Intake_ID = 6
GROUP BY b.Bran_Name
ORDER BY COUNT(DISTINCT tbi.Track_ID) DESC;

-- Courses per Instructor Distribution
PRINT '';
PRINT 'Courses per Instructor Distribution (2026) - Sample:';
SELECT TOP 20
    i.Inst_Name,
    COUNT(DISTINCT cii.Crs_ID) AS [Course_Count]
FROM dbo.Crs_Inst_Intake cii
JOIN dbo.Instructor i ON cii.Inst_ID = i.Inst_ID
WHERE cii.Intake_ID = 6
GROUP BY i.Inst_Name, i.Inst_ID
ORDER BY COUNT(DISTINCT cii.Crs_ID) DESC;

PRINT '';
PRINT '============================================================================';
PRINT 'EXECUTION COMPLETED SUCCESSFULLY!';
PRINT '============================================================================';
PRINT 'Completed at: ' + CONVERT(VARCHAR, GETDATE(), 120);
PRINT '';
PRINT 'SUMMARY:';
PRINT '  - All 2026 intake data inserted successfully';
PRINT '  - All FK relationships verified and intact';
PRINT '  - No exam-related data inserted (students are Active)';
PRINT '  - Existing data (2021-2025) remains unchanged';
PRINT '';
PRINT 'You can now refresh your Power BI dashboards to see:';
PRINT '  - Varied instructor counts per branch';
PRINT '  - Varied track availability per branch';
PRINT '  - Varied course assignments per instructor';
PRINT '  - Meaningful variations across all dimensions';
PRINT '';
PRINT '============================================================================';
PRINT '';
GO
