-- ======================================================================
-- ITI Examination System - Data Generation (Part 1)
-- Generated: 2025-11-16 03:36:58
-- Base Lookup Tables: Branch, Department, Intake, Track, Course
-- ======================================================================

USE ITI_Examination_System;
GO

-- Disable constraints for bulk insert
EXEC sp_MSforeachtable 'ALTER TABLE ? NOCHECK CONSTRAINT ALL';
GO

-- ======================================================================
-- Table: Branch (10 rows)
-- ======================================================================

SET IDENTITY_INSERT dbo.Branch ON;
GO

INSERT INTO dbo.Branch ([Bran_ID], [Bran_Name], [Location])
VALUES (1, N'Cairo', N'Cairo');
INSERT INTO dbo.Branch ([Bran_ID], [Bran_Name], [Location])
VALUES (2, N'Alexandria', N'Alexandria');
INSERT INTO dbo.Branch ([Bran_ID], [Bran_Name], [Location])
VALUES (3, N'Giza', N'Giza');
INSERT INTO dbo.Branch ([Bran_ID], [Bran_Name], [Location])
VALUES (4, N'Mansoura', N'Dakahlia');
INSERT INTO dbo.Branch ([Bran_ID], [Bran_Name], [Location])
VALUES (5, N'Damanhur', N'Beheira');
INSERT INTO dbo.Branch ([Bran_ID], [Bran_Name], [Location])
VALUES (6, N'Tanta', N'Gharbia');
INSERT INTO dbo.Branch ([Bran_ID], [Bran_Name], [Location])
VALUES (7, N'Asyut', N'Asyut');
INSERT INTO dbo.Branch ([Bran_ID], [Bran_Name], [Location])
VALUES (8, N'Ismailia', N'Ismailia');
INSERT INTO dbo.Branch ([Bran_ID], [Bran_Name], [Location])
VALUES (9, N'Port Said', N'Port Said');
INSERT INTO dbo.Branch ([Bran_ID], [Bran_Name], [Location])
VALUES (10, N'Minya', N'Minya');

SET IDENTITY_INSERT dbo.Branch OFF;
GO

-- ======================================================================
-- Table: Department (3 rows)
-- ======================================================================

SET IDENTITY_INSERT dbo.Department ON;
GO

INSERT INTO dbo.Department ([Dep_ID], [Dep_Name])
VALUES (1, N'Information Technology');
INSERT INTO dbo.Department ([Dep_ID], [Dep_Name])
VALUES (2, N'Business Intelligence');
INSERT INTO dbo.Department ([Dep_ID], [Dep_Name])
VALUES (3, N'Networks & Security');

SET IDENTITY_INSERT dbo.Department OFF;
GO

-- ======================================================================
-- Table: Intake (5 rows)
-- ======================================================================

SET IDENTITY_INSERT dbo.Intake ON;
GO

INSERT INTO dbo.Intake ([Intake_ID], [Intake_Year])
VALUES (1, 2021);
INSERT INTO dbo.Intake ([Intake_ID], [Intake_Year])
VALUES (2, 2022);
INSERT INTO dbo.Intake ([Intake_ID], [Intake_Year])
VALUES (3, 2023);
INSERT INTO dbo.Intake ([Intake_ID], [Intake_Year])
VALUES (4, 2024);
INSERT INTO dbo.Intake ([Intake_ID], [Intake_Year])
VALUES (5, 2025);

SET IDENTITY_INSERT dbo.Intake OFF;
GO

-- ======================================================================
-- Table: Track (10 rows)
-- ======================================================================

SET IDENTITY_INSERT dbo.Track ON;
GO

INSERT INTO dbo.Track ([Track_ID], [Track_Name], [No_Cources], [Dep_ID])
VALUES (1, N'Power BI Development', 10, 2);
INSERT INTO dbo.Track ([Track_ID], [Track_Name], [No_Cources], [Dep_ID])
VALUES (2, N'.NET Full-Stack Web', 10, 1);
INSERT INTO dbo.Track ([Track_ID], [Track_Name], [No_Cources], [Dep_ID])
VALUES (3, N'System Administration', 10, 3);
INSERT INTO dbo.Track ([Track_ID], [Track_Name], [No_Cources], [Dep_ID])
VALUES (4, N'Frontend Development', 10, 1);
INSERT INTO dbo.Track ([Track_ID], [Track_Name], [No_Cources], [Dep_ID])
VALUES (5, N'Backend Development', 10, 1);
INSERT INTO dbo.Track ([Track_ID], [Track_Name], [No_Cources], [Dep_ID])
VALUES (6, N'Data Engineering', 10, 2);
INSERT INTO dbo.Track ([Track_ID], [Track_Name], [No_Cources], [Dep_ID])
VALUES (7, N'DevOps Engineering', 10, 3);
INSERT INTO dbo.Track ([Track_ID], [Track_Name], [No_Cources], [Dep_ID])
VALUES (8, N'Cybersecurity', 10, 3);
INSERT INTO dbo.Track ([Track_ID], [Track_Name], [No_Cources], [Dep_ID])
VALUES (9, N'Mobile Development (Flutter)', 10, 1);
INSERT INTO dbo.Track ([Track_ID], [Track_Name], [No_Cources], [Dep_ID])
VALUES (10, N'AI / Machine Learning', 10, 2);

SET IDENTITY_INSERT dbo.Track OFF;
GO

-- ======================================================================
-- Table: Course (100 rows)
-- ======================================================================

SET IDENTITY_INSERT dbo.Course ON;
GO

INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (1, N'Power BI Fundamentals', N'Comprehensive course covering Power BI Fundamentals', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (2, N'DAX Advanced', N'Comprehensive course covering DAX Advanced', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (3, N'Data Modeling', N'Comprehensive course covering Data Modeling', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (4, N'Power Query', N'Comprehensive course covering Power Query', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (5, N'Report Design', N'Comprehensive course covering Report Design', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (6, N'Power BI Service', N'Comprehensive course covering Power BI Service', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (7, N'Paginated Reports', N'Comprehensive course covering Paginated Reports', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (8, N'Power BI Embedded', N'Comprehensive course covering Power BI Embedded', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (9, N'Advanced Analytics', N'Comprehensive course covering Advanced Analytics', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (10, N'Power BI Admin', N'Comprehensive course covering Power BI Admin', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (11, N'.NET Fundamentals', N'Comprehensive course covering .NET Fundamentals', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (12, N'C# Programming', N'Comprehensive course covering C# Programming', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (13, N'ASP.NET Core', N'Comprehensive course covering ASP.NET Core', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (14, N'Entity Framework', N'Comprehensive course covering Entity Framework', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (15, N'Web API Development', N'Comprehensive course covering Web API Development', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (16, N'Frontend with Razor', N'Comprehensive course covering Frontend with Razor', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (17, N'Blazor', N'Comprehensive course covering Blazor', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (18, N'SignalR', N'Comprehensive course covering SignalR', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (19, N'Microservices', N'Comprehensive course covering Microservices', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (20, N'Deployment & DevOps', N'Comprehensive course covering Deployment & DevOps', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (21, N'Linux Administration', N'Comprehensive course covering Linux Administration', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (22, N'Windows Server', N'Comprehensive course covering Windows Server', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (23, N'Active Directory', N'Comprehensive course covering Active Directory', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (24, N'PowerShell', N'Comprehensive course covering PowerShell', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (25, N'System Monitoring', N'Comprehensive course covering System Monitoring', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (26, N'Backup & Recovery', N'Comprehensive course covering Backup & Recovery', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (27, N'Virtualization', N'Comprehensive course covering Virtualization', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (28, N'Cloud Infrastructure', N'Comprehensive course covering Cloud Infrastructure', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (29, N'System Security', N'Comprehensive course covering System Security', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (30, N'Automation', N'Comprehensive course covering Automation', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (31, N'HTML/CSS Fundamentals', N'Comprehensive course covering HTML/CSS Fundamentals', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (32, N'JavaScript ES6+', N'Comprehensive course covering JavaScript ES6+', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (33, N'React.js', N'Comprehensive course covering React.js', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (34, N'Vue.js', N'Comprehensive course covering Vue.js', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (35, N'TypeScript', N'Comprehensive course covering TypeScript', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (36, N'Responsive Design', N'Comprehensive course covering Responsive Design', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (37, N'State Management', N'Comprehensive course covering State Management', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (38, N'Testing', N'Comprehensive course covering Testing', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (39, N'Build Tools', N'Comprehensive course covering Build Tools', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (40, N'Performance Optimization', N'Comprehensive course covering Performance Optimization', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (41, N'Python Programming', N'Comprehensive course covering Python Programming', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (42, N'Node.js', N'Comprehensive course covering Node.js', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (43, N'Database Design', N'Comprehensive course covering Database Design', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (44, N'REST APIs', N'Comprehensive course covering REST APIs', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (45, N'GraphQL', N'Comprehensive course covering GraphQL', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (46, N'Message Queues', N'Comprehensive course covering Message Queues', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (47, N'Caching Strategies', N'Comprehensive course covering Caching Strategies', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (48, N'Authentication', N'Comprehensive course covering Authentication', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (49, N'Docker', N'Comprehensive course covering Docker', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (50, N'Kubernetes', N'Comprehensive course covering Kubernetes', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (51, N'SQL Advanced', N'Comprehensive course covering SQL Advanced', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (52, N'ETL Processes', N'Comprehensive course covering ETL Processes', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (53, N'Apache Spark', N'Comprehensive course covering Apache Spark', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (54, N'Data Warehousing', N'Comprehensive course covering Data Warehousing', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (55, N'Azure Data Factory', N'Comprehensive course covering Azure Data Factory', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (56, N'Data Lake', N'Comprehensive course covering Data Lake', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (57, N'Stream Processing', N'Comprehensive course covering Stream Processing', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (58, N'Data Quality', N'Comprehensive course covering Data Quality', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (59, N'Big Data Tools', N'Comprehensive course covering Big Data Tools', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (60, N'Cloud Data Solutions', N'Comprehensive course covering Cloud Data Solutions', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (61, N'Git & Version Control', N'Comprehensive course covering Git & Version Control', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (62, N'CI/CD Pipelines', N'Comprehensive course covering CI/CD Pipelines', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (63, N'Jenkins', N'Comprehensive course covering Jenkins', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (64, N'Azure DevOps', N'Comprehensive course covering Azure DevOps', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (65, N'Infrastructure as Code', N'Comprehensive course covering Infrastructure as Code', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (66, N'Terraform', N'Comprehensive course covering Terraform', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (67, N'Ansible', N'Comprehensive course covering Ansible', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (68, N'Monitoring & Logging', N'Comprehensive course covering Monitoring & Logging', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (69, N'Container Orchestration', N'Comprehensive course covering Container Orchestration', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (70, N'Cloud Platforms', N'Comprehensive course covering Cloud Platforms', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (71, N'Network Security', N'Comprehensive course covering Network Security', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (72, N'Penetration Testing', N'Comprehensive course covering Penetration Testing', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (73, N'Cryptography', N'Comprehensive course covering Cryptography', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (74, N'Security Operations', N'Comprehensive course covering Security Operations', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (75, N'Incident Response', N'Comprehensive course covering Incident Response', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (76, N'Web Security', N'Comprehensive course covering Web Security', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (77, N'Malware Analysis', N'Comprehensive course covering Malware Analysis', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (78, N'Security Compliance', N'Comprehensive course covering Security Compliance', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (79, N'Threat Intelligence', N'Comprehensive course covering Threat Intelligence', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (80, N'Ethical Hacking', N'Comprehensive course covering Ethical Hacking', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (81, N'Dart Programming', N'Comprehensive course covering Dart Programming', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (82, N'Flutter Widgets', N'Comprehensive course covering Flutter Widgets', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (83, N'State Management (Flutter)', N'Comprehensive course covering State Management (Flutter)', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (84, N'Animations', N'Comprehensive course covering Animations', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (85, N'Navigation', N'Comprehensive course covering Navigation', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (86, N'Firebase Integration', N'Comprehensive course covering Firebase Integration', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (87, N'REST API Integration', N'Comprehensive course covering REST API Integration', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (88, N'Local Storage', N'Comprehensive course covering Local Storage', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (89, N'Testing Flutter Apps', N'Comprehensive course covering Testing Flutter Apps', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (90, N'App Deployment', N'Comprehensive course covering App Deployment', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (91, N'Python for ML', N'Comprehensive course covering Python for ML', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (92, N'Machine Learning Basics', N'Comprehensive course covering Machine Learning Basics', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (93, N'Deep Learning', N'Comprehensive course covering Deep Learning', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (94, N'TensorFlow', N'Comprehensive course covering TensorFlow', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (95, N'PyTorch', N'Comprehensive course covering PyTorch', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (96, N'NLP', N'Comprehensive course covering NLP', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (97, N'Computer Vision', N'Comprehensive course covering Computer Vision', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (98, N'Model Deployment', N'Comprehensive course covering Model Deployment', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (99, N'MLOps', N'Comprehensive course covering MLOps', 60, 100);
INSERT INTO dbo.Course ([Crs_ID], [Crs_Name], [Crs_Description], [Min_Degree], [Max_Degree])
VALUES (100, N'AI Ethics', N'Comprehensive course covering AI Ethics', 60, 100);

SET IDENTITY_INSERT dbo.Course OFF;
GO

-- Re-enable constraints
EXEC sp_MSforeachtable 'ALTER TABLE ? WITH CHECK CHECK CONSTRAINT ALL';
GO

PRINT 'Part 1 completed successfully!';
GO
