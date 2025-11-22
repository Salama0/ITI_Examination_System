"""
API Routers for ITI Examination System
"""

from .dashboard import router as dashboard_router
from .auth_api import router as auth_router
from .instructor_api import router as instructor_router
from .student_api import router as student_router

__all__ = ["dashboard_router", "auth_router", "instructor_router", "student_router"]
