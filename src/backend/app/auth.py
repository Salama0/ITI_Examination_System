"""
Authentication utilities for JWT token generation and password hashing
"""

from datetime import datetime, timedelta
from typing import Optional
from jose import JWTError, jwt
import bcrypt
from pydantic import BaseModel

# JWT settings
SECRET_KEY = "your-secret-key-change-this-in-production"  # TODO: Move to environment variable
ALGORITHM = "HS256"
ACCESS_TOKEN_EXPIRE_MINUTES = 60 * 24  # 24 hours


class Token(BaseModel):
    access_token: str
    token_type: str


class TokenData(BaseModel):
    user_id: Optional[int] = None
    email: Optional[str] = None
    user_type: Optional[str] = None


class UserInDB(BaseModel):
    user_id: int
    email: str
    password_hash: str
    user_type: str
    full_name: str
    is_active: bool
    student_id: Optional[int] = None
    instructor_id: Optional[int] = None
    intake_id: Optional[int] = None
    track_id: Optional[int] = None
    branch_id: Optional[int] = None
    track_name: Optional[str] = None
    branch_name: Optional[str] = None
    department_id: Optional[int] = None
    department_name: Optional[str] = None


def verify_password(plain_password: str, hashed_password: str) -> bool:
    """Verify a plain password against a hashed password"""
    try:
        # Convert strings to bytes for bcrypt
        password_bytes = plain_password.encode('utf-8')
        hash_bytes = hashed_password.encode('utf-8')
        return bcrypt.checkpw(password_bytes, hash_bytes)
    except Exception as e:
        # Handle any password verification errors
        print(f"Password verification error: {e}")
        return False


def get_password_hash(password: str) -> str:
    """Hash a password using bcrypt"""
    password_bytes = password.encode('utf-8')
    salt = bcrypt.gensalt()
    hashed = bcrypt.hashpw(password_bytes, salt)
    return hashed.decode('utf-8')


def create_access_token(data: dict, expires_delta: Optional[timedelta] = None):
    """Create a JWT access token"""
    to_encode = data.copy()
    if expires_delta:
        expire = datetime.utcnow() + expires_delta
    else:
        expire = datetime.utcnow() + timedelta(minutes=ACCESS_TOKEN_EXPIRE_MINUTES)

    to_encode.update({"exp": expire})
    encoded_jwt = jwt.encode(to_encode, SECRET_KEY, algorithm=ALGORITHM)
    return encoded_jwt


def decode_access_token(token: str) -> Optional[TokenData]:
    """Decode and validate a JWT token"""
    try:
        payload = jwt.decode(token, SECRET_KEY, algorithms=[ALGORITHM])
        user_id_str: str = payload.get("sub")
        email: str = payload.get("email")
        user_type: str = payload.get("user_type")

        if user_id_str is None:
            print("ERROR - user_id is None in JWT payload!")
            return None

        # Convert user_id from string to int
        user_id: int = int(user_id_str)

        print(f"DEBUG - JWT Decoded successfully:")
        print(f"  user_id: {user_id}")
        print(f"  email: {email}")
        print(f"  user_type: {user_type}")

        return TokenData(user_id=user_id, email=email, user_type=user_type)
    except JWTError as e:
        print(f"ERROR - JWT Decode failed: {e}")
        return None
    except ValueError as e:
        print(f"ERROR - Failed to convert user_id to int: {e}")
        return None
