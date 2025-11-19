# Architecture Documentation

## System Overview

The ITI Examination System is a three-tier application consisting of a React frontend, FastAPI backend, and SQL Server database.

```
┌─────────────────┐         ┌─────────────────┐         ┌─────────────────┐
│    Frontend     │  HTTP   │     Backend     │   SQL   │    Database     │
│  React + Vite   │ ◄─────► │    FastAPI      │ ◄─────► │   SQL Server    │
│  Port: 5173     │         │   Port: 8000    │         │   Port: 1433    │
└─────────────────┘         └─────────────────┘         └─────────────────┘
```

## Technology Stack

### Backend
- **Framework:** FastAPI (Python 3.12)
- **ORM:** SQLAlchemy 2.0
- **Database Driver:** pyodbc with ODBC Driver 18
- **Authentication:** JWT (python-jose)
- **Validation:** Pydantic

### Frontend
- **Library:** React 18
- **Language:** TypeScript
- **Build Tool:** Vite
- **Styling:** TailwindCSS
- **HTTP Client:** Axios
- **State Management:** TanStack Query

### Database
- **Engine:** SQL Server 2019+ / Azure SQL Database

## Project Structure

```
WebApp_Development/
├── src/
│   ├── backend/
│   │   ├── app/
│   │   │   ├── main.py          # Application entry point
│   │   │   ├── config/          # Settings and database connection
│   │   │   ├── models/          # SQLAlchemy ORM models
│   │   │   ├── schemas/         # Pydantic validation schemas
│   │   │   ├── api/             # Route handlers
│   │   │   └── services/        # Business logic
│   │   ├── tests/
│   │   └── requirements.txt
│   │
│   └── frontend/
│       ├── src/
│       │   ├── components/      # Reusable UI components
│       │   ├── pages/           # Route pages
│       │   ├── services/        # API client
│       │   └── types/           # TypeScript definitions
│       └── package.json
│
├── database/
│   ├── 01_schema/               # Table definitions (DDL)
│   ├── 02_base_data/            # Initial data (DML)
│   ├── 03_stored_procedures/    # Business logic
│   └── 04_views/                # Database views
│
└── docs/                        # Documentation
```

## Database Schema

### Core Entities

| Entity | Description |
|--------|-------------|
| Student | Student information and enrollment status |
| Instructor | Instructor profiles and department assignments |
| Course | Course details and degree ranges |
| Exam | Exam scheduling and configuration |
| Qu_Pool | Question bank (MCQ, True/False) |
| Choices | Answer options for questions |
| Student_Grades | Exam results and calculated grades |
| Branch | Physical locations |
| Track | Specialization tracks |
| Intake | Yearly student cohorts |

### Relationships

- Students belong to Intake, Track, and Branch
- Instructors are assigned to Courses within specific Intakes
- Exams contain Questions from Qu_Pool
- Student_Grades link Students to Exam results

## API Structure

### Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/` | API information |
| GET | `/health` | Database connection status |
| GET | `/api/test-db` | Database query test |
| POST | `/api/auth/login` | User authentication |
| GET | `/api/students` | List students |
| GET | `/api/courses` | List courses |
| GET | `/api/exams` | List exams |
| POST | `/api/exams/{id}/submit` | Submit exam answers |
| GET | `/api/grades/{student_id}` | Student grades |

## Configuration

### Environment Variables

| Variable | Description |
|----------|-------------|
| DB_SERVER | Database server address |
| DB_NAME | Database name |
| DB_USER | Database username |
| DB_PASSWORD | Database password |
| JWT_SECRET | Token signing key |
| CORS_ORIGINS | Allowed frontend origins |

### Security Considerations

- Environment variables for sensitive configuration
- JWT tokens for API authentication
- Parameterized queries via ORM
- CORS configuration for frontend access
- HTTPS for production environments

## Development

### Backend
```bash
cd src/backend
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
uvicorn app.main:app --reload
```

### Frontend
```bash
cd src/frontend
npm install
npm run dev
```

## Testing

### Backend
```bash
cd src/backend
pytest
```

### Frontend
```bash
cd src/frontend
npm test
```
