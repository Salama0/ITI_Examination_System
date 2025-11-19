# Azure SQL Database - Manual Deployment Guide

## Overview
This guide provides step-by-step instructions for deploying the ITI Examination System database to Azure SQL Server.

## Prerequisites
- Azure subscription (free tier available)
- SQL Server Management Studio (SSMS) OR Azure Data Studio
- Basic understanding of Azure Portal

---

## OPTION 1: Using SSMS (Recommended for beginners)

### Step 1: Create Azure SQL Database

1. **Login to Azure Portal**: https://portal.azure.com
2. **Create SQL Database**:
   - Click "+ Create a resource"
   - Search for "SQL Database"
   - Click "Create"

3. **Configure Database**:
   ```
   Subscription: (Your subscription)
   Resource Group: Create new → "ITI-ExamSystem-RG"
   Database Name: ITI_Examination_System
   Server: Create new
   ```

4. **Create SQL Server**:
   ```
   Server name: iti-exam-server-[yourname]
   Location: (Choose nearest: e.g., East US)
   Authentication: SQL authentication
   Server admin login: iti_admin
   Password: [Create strong password - SAVE THIS!]
   ```

5. **Compute + Storage**:
   ```
   Service tier: Basic (5 DTU, 2GB) - cheapest option
   OR
   Service tier: Standard S0 (10 DTU, 250GB) - for better performance
   ```

6. **Networking**:
   ```
   Connectivity: Public endpoint
   Firewall rules:
   ✅ Allow Azure services to access this server
   ✅ Add current client IP address
   ```

7. **Review + Create** → Wait for deployment (~2-5 minutes)

### Step 2: Connect via SSMS

1. **Open SSMS**
2. **Connection Details**:
   ```
   Server type: Database Engine
   Server name: iti-exam-server-[yourname].database.windows.net
   Authentication: SQL Server Authentication
   Login: iti_admin
   Password: [Your password]
   ```
3. Click **Connect**

### Step 3: Execute Deployment Script

1. **Open** `DEPLOY_TO_AZURE.sql` from the `05_azure_deployment` folder
2. **IMPORTANT**: Make sure SQLCMD mode is enabled:
   - Menu → Query → SQLCMD Mode (check the box)
3. **Execute** (F5 or click Execute button)
4. **Wait**: ~5-10 minutes for complete deployment
5. **Verify**: Check Messages tab for "DEPLOYMENT COMPLETED SUCCESSFULLY!"

---

## OPTION 2: Using Azure Data Studio (Alternative)

### Step 1-2: Same as SSMS (Create database and connect)

### Step 3: Execute Scripts Manually (in order)

Since Azure Data Studio doesn't support `:r` command, execute scripts one by one:

#### 3.1 Schema
```sql
-- Execute: 01_schema/01_DDL_Schema.sql
```

#### 3.2 Base Data (execute in order)
```sql
-- 1. Execute: 02_base_data/01_Base_Tables.sql
-- 2. Execute: 02_base_data/02_People.sql
-- 3. Execute: 02_base_data/03_Questions_Choices.sql
-- 4. Execute: 02_base_data/04_Mappings.sql
-- 5. Execute: 02_base_data/05_Exams.sql
-- 6. Execute: 02_base_data/06_Stu_Exam_Qup_Part1.sql
-- 7. Execute: 02_base_data/06_Stu_Exam_Qup_Part2.sql
-- 8. Execute: 02_base_data/07_Student_Grades.sql
-- 9. Execute: 02_base_data/08_Student_Profiles.sql
```

#### 3.3 2026 Intake Data (Optional)
```sql
-- Execute: 02_base_data/EXECUTE_2026_INTAKE.sql
-- OR execute individual 2026 files if that fails
```

#### 3.4 Stored Procedures (execute all in order)
```sql
-- Execute each file in 03_stored_procedures/ folder
-- From 1-sp_OpenNewIntake.sql to 25-sp_GetInstructorWorkloadReport.sql
```

---

## OPTION 3: Using Azure CLI + sqlcmd (For advanced users)

### Prerequisites
```bash
# Install Azure CLI
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

# Install sqlcmd
sudo apt-get install mssql-tools
```

### Create Database
```bash
# Login to Azure
az login

# Create resource group
az group create --name ITI-ExamSystem-RG --location eastus

# Create SQL Server
az sql server create \
  --name iti-exam-server-yourname \
  --resource-group ITI-ExamSystem-RG \
  --location eastus \
  --admin-user iti_admin \
  --admin-password 'YourStrongPassword123!'

# Configure firewall
az sql server firewall-rule create \
  --resource-group ITI-ExamSystem-RG \
  --server iti-exam-server-yourname \
  --name AllowMyIP \
  --start-ip-address YOUR_IP \
  --end-ip-address YOUR_IP

# Create database
az sql db create \
  --resource-group ITI-ExamSystem-RG \
  --server iti-exam-server-yourname \
  --name ITI_Examination_System \
  --service-objective Basic
```

### Deploy Database
```bash
# Navigate to project folder
cd /home/mahmoud/Projects/ITI_Examination_System/corrected_data/WebApp_Development/database

# Execute schema
sqlcmd -S iti-exam-server-yourname.database.windows.net \
  -U iti_admin \
  -P 'YourStrongPassword123!' \
  -d ITI_Examination_System \
  -i 01_schema/01_DDL_Schema.sql

# Execute base data (one by one)
sqlcmd -S iti-exam-server-yourname.database.windows.net \
  -U iti_admin \
  -P 'YourStrongPassword123!' \
  -d ITI_Examination_System \
  -i 02_base_data/01_Base_Tables.sql

# ... repeat for all scripts
```

---

## Cost Estimation

### Free Tier Option
- **Database**: Basic tier (5 DTU, 2GB)
- **Cost**: ~$5/month
- **Good for**: Development, testing, small projects

### Recommended for Production
- **Database**: Standard S0 (10 DTU, 250GB)
- **Cost**: ~$15/month
- **Good for**: Small production workloads

### How to Minimize Costs
1. Use Basic tier during development
2. Delete database when not in use
3. Use Azure free credits ($200 for first 30 days)
4. Scale up only when needed

---

## Connection String

After deployment, your connection string will be:

```
Server=tcp:iti-exam-server-yourname.database.windows.net,1433;Initial Catalog=ITI_Examination_System;Persist Security Info=False;User ID=iti_admin;Password={your_password};MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;
```

**Save this connection string** - you'll need it for the web application!

---

## Troubleshooting

### Error: "Cannot open server"
**Solution**: Add your IP address to firewall rules
- Azure Portal → SQL Server → Firewalls and virtual networks → Add client IP

### Error: "Login failed"
**Solution**: Check username/password, ensure SQL authentication is enabled

### Error: "Database not found"
**Solution**: Make sure database is created first, check database name spelling

### Error: Script timeout
**Solution**: Increase timeout in connection settings or execute scripts in smaller batches

---

## Verification Queries

After deployment, run these to verify:

```sql
-- Check all tables created
SELECT COUNT(*) AS Total_Tables
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';
-- Expected: 20+ tables

-- Check stored procedures
SELECT COUNT(*) AS Total_Procedures
FROM INFORMATION_SCHEMA.ROUTINES
WHERE ROUTINE_TYPE = 'PROCEDURE';
-- Expected: 25 procedures

-- Check data loaded
SELECT 'Students' AS Entity, COUNT(*) AS Count FROM Student
UNION ALL
SELECT 'Instructors', COUNT(*) FROM Instructor
UNION ALL
SELECT 'Courses', COUNT(*) FROM Course;
-- Expected: Thousands of students, hundreds of instructors, 100+ courses
```

---

## Next Steps

1. ✅ Database deployed to Azure
2. ⏭️ Test connection from local machine
3. ⏭️ Set up web application
4. ⏭️ Configure connection string in app
5. ⏭️ Deploy web app to Azure App Service

---

## Security Best Practices

1. **Never commit passwords to Git** - use environment variables
2. **Use Azure Key Vault** for production
3. **Enable Azure AD authentication** for better security
4. **Restrict firewall** to only necessary IPs
5. **Regular backups** - Azure SQL has automatic backups, but test restore!

---

**Created**: 2025-11-18
**For**: ITI Examination System Web Application
