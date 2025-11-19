# ITI Examination System

A comprehensive examination management system for educational institutions, supporting student enrollment, exam creation, automated grading, and performance analytics.

## 📋 Overview

The ITI Examination System manages:
- Student enrollment and performance tracking
- Instructor course assignments
- Automated exam creation and grading
- Multi-branch, multi-track, multi-intake operations
- Reporting and analytics

## 🏗️ Architecture

```
ITI_Examination_System/
├── database/                    # SQL Server database scripts
│   ├── 01_schema/              # DDL (tables, constraints, indexes)
│   ├── 02_base_data/           # Initial and sample data
│   ├── 03_stored_procedures/   # Business logic procedures
│   └── 04_views/               # Database views
├── src/
│   ├── backend/                # FastAPI Python application
│   └── frontend/               # React TypeScript application
├── docs/                       # Documentation
└── .github/                    # GitHub workflows
```

## 🛠️ Technology Stack

### Backend
- Python 3.12 with FastAPI
- SQLAlchemy ORM
- JWT Authentication

### Frontend
- React 18 with TypeScript
- Vite build tool
- TailwindCSS

### Database
- SQL Server / Azure SQL Database

## 🗄️ Database Schema

### Core Entities
- **Student**: 6000+ records with enrollment and performance data
- **Instructor**: 250 instructors with course assignments
- **Course**: 133 courses across departments
- **Exam**: Automated generation from question pool
- **Question Pool**: 500+ questions (MCQ, True/False)
- **Branch**: 10 branches nationwide
- **Track**: 13 specialization tracks
- **Intake**: Yearly cohorts (2021-2026)

### Key Features
- Multi-dimensional mapping (Courses, Instructors, Tracks, Branches, Intakes)
- Automated exam grading via stored procedures
- Student performance summaries and GPA calculations
- Corrective exam generation for failed students

## 🚀 Getting Started

### Prerequisites
- Python 3.12+
- Node.js 18+
- SQL Server 2019+ or Azure SQL Database
- ODBC Driver 18 for SQL Server

### Backend Setup
```bash
cd src/backend
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt

# Configure environment
cp .env.example .env
# Edit .env with database credentials

# Run server
uvicorn app.main:app --reload
```

### Frontend Setup
```bash
cd src/frontend
npm install
npm run dev
```

### Database Setup
Execute scripts in order:
1. `database/01_schema/01_DDL_Schema.sql`
2. `database/02_base_data/*.sql`
3. `database/03_stored_procedures/*.sql`

## 📊 Stored Procedures

| Procedure | Description |
|-----------|-------------|
| `sp_EnrollStudent` | Register student in intake/track/branch |
| `sp_CreateExam_FIXED` | Generate randomized exam from question pool |
| `sp_StudentSubmitExam_FIXED` | Submit and auto-grade exam |
| `sp_GetStudentPerformanceSummary` | Calculate GPA and grade statistics |
| `sp_AuthenticateUser` | User authentication |
| `sp_GetExamStatistics` | Exam performance analytics |

## 🔒 Security

- Parameterized stored procedures (SQL injection protection)
- JWT token authentication
- Role-based authorization (Manager, Instructor, Student)
- Environment-based configuration

## 🛣️ Development Roadmap

### ✅ Completed
- Database schema design
- Sample data generation
- Stored procedures
- Backend API foundation
- Frontend project setup

### ⏳ In Progress
- RESTful API endpoints
- Authentication system
- User dashboards

### 📅 Planned
- Exam interface
- Reporting dashboards
- CI/CD pipeline

## 🤝 Contributing

1. Fork the repository
2. Create feature branch (`git checkout -b feature/NewFeature`)
3. Commit changes (`git commit -m 'Add NewFeature'`)
4. Push to branch (`git push origin feature/NewFeature`)
5. Open Pull Request

## 📝 License

Developed for educational purposes as part of ITI training program.

## 👥 Authors

ITI Examination System Team
