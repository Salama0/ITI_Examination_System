"""
Authentication API endpoints
Handles login, logout, and user session management
"""

from fastapi import APIRouter, Depends, HTTPException, status
from fastapi.security import OAuth2PasswordBearer, OAuth2PasswordRequestForm
from sqlalchemy.orm import Session
from sqlalchemy import text
from pydantic import BaseModel, EmailStr
from typing import Optional
from datetime import timedelta

from ..config import get_db
from ..auth import (
    verify_password,
    create_access_token,
    decode_access_token,
    UserInDB,
    Token,
    ACCESS_TOKEN_EXPIRE_MINUTES
)

router = APIRouter()

# OAuth2 scheme for token extraction
oauth2_scheme = OAuth2PasswordBearer(tokenUrl="/api/auth/login")


# ============================================================================
# Pydantic Models
# ============================================================================

class LoginRequest(BaseModel):
    email: EmailStr
    password: str


class UserResponse(BaseModel):
    user_id: int
    email: str
    user_type: str
    full_name: str
    student_id: Optional[int] = None
    instructor_id: Optional[int] = None
    intake_id: Optional[int] = None
    track_id: Optional[int] = None
    branch_id: Optional[int] = None
    track_name: Optional[str] = None
    branch_name: Optional[str] = None
    department_id: Optional[int] = None
    department_name: Optional[str] = None


class LoginResponse(BaseModel):
    access_token: str
    token_type: str
    user: UserResponse


# ============================================================================
# Helper Functions
# ============================================================================

def get_user_from_db(email: str, db: Session) -> Optional[UserInDB]:
    """Fetch user from database using stored procedure"""
    try:
        result = db.execute(
            text("EXEC sp_AuthenticateUser @Email = :email"),
            {"email": email}
        )
        row = result.fetchone()

        if not row or row[0] is None:  # row[0] is User_ID
            return None

        return UserInDB(
            user_id=row[0],
            email=row[1],
            password_hash=row[2],
            user_type=row[3],
            student_id=row[4],
            instructor_id=row[5],
            is_active=bool(row[6]),
            full_name=row[8] if row[8] else "User",
            intake_id=row[9],
            track_id=row[10],
            branch_id=row[11],
            track_name=row[12],
            branch_name=row[13],
            department_id=row[14],
            department_name=row[15]
        )
    except Exception as e:
        print(f"Error fetching user: {e}")
        return None


def authenticate_user(email: str, password: str, db: Session) -> Optional[UserInDB]:
    """Authenticate user credentials"""
    user = get_user_from_db(email, db)
    if not user:
        return None
    if not verify_password(password, user.password_hash):
        return None
    if not user.is_active:
        return None
    return user


async def get_current_user(
    token: str = Depends(oauth2_scheme),
    db: Session = Depends(get_db)
) -> UserInDB:
    """Get current user from JWT token"""
    credentials_exception = HTTPException(
        status_code=status.HTTP_401_UNAUTHORIZED,
        detail="Could not validate credentials",
        headers={"WWW-Authenticate": "Bearer"},
    )

    token_data = decode_access_token(token)
    if token_data is None or token_data.user_id is None:
        raise credentials_exception

    # Fetch user from database
    try:
        result = db.execute(
            text("EXEC sp_GetUserByID @User_ID = :user_id"),
            {"user_id": token_data.user_id}
        )
        row = result.fetchone()

        if not row or row[0] is None:
            raise credentials_exception

        user = UserInDB(
            user_id=row[0],
            email=row[1],
            password_hash="",  # Don't return password hash
            user_type=row[2],
            student_id=row[3],
            instructor_id=row[4],
            is_active=bool(row[5]),
            full_name=row[7] if row[7] else "User",
            intake_id=row[8],
            track_id=row[9],
            branch_id=row[10],
            track_name=row[11],
            branch_name=row[12],
            department_id=row[13],
            department_name=row[14]
        )

        if not user.is_active:
            raise credentials_exception

        return user

    except HTTPException:
        raise
    except Exception as e:
        print(f"Error in get_current_user: {e}")
        raise credentials_exception


def require_role(allowed_roles: list[str]):
    """Dependency to check if user has required role"""
    async def role_checker(current_user: UserInDB = Depends(get_current_user)):
        if current_user.user_type not in allowed_roles:
            raise HTTPException(
                status_code=status.HTTP_403_FORBIDDEN,
                detail=f"Access denied. Required role: {', '.join(allowed_roles)}"
            )
        return current_user
    return role_checker


# ============================================================================
# Authentication Endpoints
# ============================================================================

@router.post("/login", response_model=LoginResponse)
async def login(login_data: LoginRequest, db: Session = Depends(get_db)):
    """
    Login endpoint - validates credentials and returns JWT token
    """
    # Authenticate user
    user = authenticate_user(login_data.email, login_data.password, db)

    if not user:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Incorrect email or password",
            headers={"WWW-Authenticate": "Bearer"},
        )

    # Create access token
    access_token_expires = timedelta(minutes=ACCESS_TOKEN_EXPIRE_MINUTES)
    access_token = create_access_token(
        data={
            "sub": user.user_id,
            "email": user.email,
            "user_type": user.user_type
        },
        expires_delta=access_token_expires
    )

    # Update last login timestamp
    try:
        db.execute(
            text("EXEC sp_UpdateLastLogin @User_ID = :user_id"),
            {"user_id": user.user_id}
        )
        db.commit()
    except Exception as e:
        print(f"Warning: Could not update last login: {e}")

    # Return token and user info
    return LoginResponse(
        access_token=access_token,
        token_type="bearer",
        user=UserResponse(
            user_id=user.user_id,
            email=user.email,
            user_type=user.user_type,
            full_name=user.full_name,
            student_id=user.student_id,
            instructor_id=user.instructor_id,
            intake_id=user.intake_id,
            track_id=user.track_id,
            branch_id=user.branch_id,
            track_name=user.track_name,
            branch_name=user.branch_name,
            department_id=user.department_id,
            department_name=user.department_name
        )
    )


@router.post("/login-form", response_model=LoginResponse)
async def login_form(
    form_data: OAuth2PasswordRequestForm = Depends(),
    db: Session = Depends(get_db)
):
    """
    Login endpoint using OAuth2 form (for compatibility with OAuth2PasswordRequestForm)
    Username field will contain the email
    """
    # Authenticate user
    user = authenticate_user(form_data.username, form_data.password, db)

    if not user:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Incorrect email or password",
            headers={"WWW-Authenticate": "Bearer"},
        )

    # Create access token
    access_token_expires = timedelta(minutes=ACCESS_TOKEN_EXPIRE_MINUTES)
    access_token = create_access_token(
        data={
            "sub": user.user_id,
            "email": user.email,
            "user_type": user.user_type
        },
        expires_delta=access_token_expires
    )

    # Update last login timestamp
    try:
        db.execute(
            text("EXEC sp_UpdateLastLogin @User_ID = :user_id"),
            {"user_id": user.user_id}
        )
        db.commit()
    except Exception as e:
        print(f"Warning: Could not update last login: {e}")

    # Return token and user info
    return LoginResponse(
        access_token=access_token,
        token_type="bearer",
        user=UserResponse(
            user_id=user.user_id,
            email=user.email,
            user_type=user.user_type,
            full_name=user.full_name,
            student_id=user.student_id,
            instructor_id=user.instructor_id,
            intake_id=user.intake_id,
            track_id=user.track_id,
            branch_id=user.branch_id,
            track_name=user.track_name,
            branch_name=user.branch_name,
            department_id=user.department_id,
            department_name=user.department_name
        )
    )


@router.get("/me", response_model=UserResponse)
async def get_current_user_info(current_user: UserInDB = Depends(get_current_user)):
    """
    Get current logged-in user information
    Requires valid JWT token in Authorization header
    """
    return UserResponse(
        user_id=current_user.user_id,
        email=current_user.email,
        user_type=current_user.user_type,
        full_name=current_user.full_name,
        student_id=current_user.student_id,
        instructor_id=current_user.instructor_id,
        intake_id=current_user.intake_id,
        track_id=current_user.track_id,
        branch_id=current_user.branch_id,
        track_name=current_user.track_name,
        branch_name=current_user.branch_name,
        department_id=current_user.department_id,
        department_name=current_user.department_name
    )


@router.post("/logout")
async def logout(current_user: UserInDB = Depends(get_current_user)):
    """
    Logout endpoint (for compatibility)
    In JWT, logout is handled client-side by removing the token
    """
    return {"message": "Successfully logged out"}


# ============================================================================
# Role-specific endpoints (examples)
# ============================================================================

@router.get("/manager-only")
async def manager_only(current_user: UserInDB = Depends(require_role(["Manager"]))):
    """Example endpoint that requires Manager role"""
    return {"message": f"Hello Manager {current_user.full_name}!"}


@router.get("/instructor-only")
async def instructor_only(current_user: UserInDB = Depends(require_role(["Instructor"]))):
    """Example endpoint that requires Instructor role"""
    return {"message": f"Hello Instructor {current_user.full_name}!"}


@router.get("/student-only")
async def student_only(current_user: UserInDB = Depends(require_role(["Student"]))):
    """Example endpoint that requires Student role"""
    return {"message": f"Hello Student {current_user.full_name}!"}
