"""
API Routers for ITI Examination System
"""

from .dashboard import router as dashboard_router
from .auth_api import router as auth_router

__all__ = ["dashboard_router", "auth_router"]
