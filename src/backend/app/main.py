"""
ITI Examination System - FastAPI Application
Main entry point for the backend API
"""

from fastapi import FastAPI, Depends
from fastapi.middleware.cors import CORSMiddleware
from sqlalchemy.orm import Session

from .config import get_settings, get_db, test_connection

settings = get_settings()

# Create FastAPI application
app = FastAPI(
    title=settings.app_name,
    description="Backend API for ITI Examination System - Manage exams, students, courses, and grades",
    version="1.0.0",
    docs_url="/docs",  # Swagger UI
    redoc_url="/redoc",  # ReDoc
)

# Configure CORS
app.add_middleware(
    CORSMiddleware,
    allow_origins=settings.cors_origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)


# ============================================================================
# Health Check Endpoints
# ============================================================================

@app.get("/", tags=["Health"])
def root():
    """Root endpoint - API information"""
    return {
        "message": "Welcome to ITI Examination System API",
        "version": "1.0.0",
        "docs": "/docs",
    }


@app.get("/health", tags=["Health"])
def health_check():
    """Health check endpoint"""
    db_status = test_connection()
    return {
        "status": "healthy" if db_status else "unhealthy",
        "database": "connected" if db_status else "disconnected",
    }


# ============================================================================
# API Routes (to be added)
# ============================================================================

# TODO: Import and include routers
# from .api import auth, students, instructors, courses, exams, questions, grades
#
# app.include_router(auth.router, prefix="/api/auth", tags=["Authentication"])
# app.include_router(students.router, prefix="/api/students", tags=["Students"])
# app.include_router(instructors.router, prefix="/api/instructors", tags=["Instructors"])
# app.include_router(courses.router, prefix="/api/courses", tags=["Courses"])
# app.include_router(exams.router, prefix="/api/exams", tags=["Exams"])
# app.include_router(questions.router, prefix="/api/questions", tags=["Questions"])
# app.include_router(grades.router, prefix="/api/grades", tags=["Grades"])


# ============================================================================
# Example Endpoints (for testing)
# ============================================================================

@app.get("/api/test-db", tags=["Testing"])
def test_database(db: Session = Depends(get_db)):
    """Test database connection by querying a simple count"""
    try:
        from sqlalchemy import text
        result = db.execute(text("SELECT COUNT(*) FROM dbo.Student")).scalar()
        return {"status": "success", "student_count": result}
    except Exception as e:
        return {"status": "error", "message": str(e)}


# ============================================================================
# Run with Uvicorn
# ============================================================================

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(
        "app.main:app",
        host=settings.host,
        port=settings.port,
        reload=settings.debug,
    )
