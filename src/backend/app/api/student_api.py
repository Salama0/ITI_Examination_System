"""
Student API endpoints
Handles student-specific data: grades, upcoming exams, performance
"""

from fastapi import APIRouter, Depends, HTTPException, status
from sqlalchemy.orm import Session
from sqlalchemy import text
from typing import List, Optional
from pydantic import BaseModel

from ..config import get_db
from ..api.auth_api import get_current_user, require_role
from ..auth import UserInDB

router = APIRouter()


# ============================================================================
# Pydantic Models
# ============================================================================

class StudentGrade(BaseModel):
    student_name: str
    crs_name: str
    exam_type: str
    exam_date: Optional[str]
    grade: Optional[str]  # Changed from int to str - database returns letter grades (A, B, C, etc.)
    status: str
    intake_year: int
    track_name: Optional[str]
    bran_name: Optional[str]


class UpcomingExam(BaseModel):
    ex_id: int
    crs_name: str
    crs_description: Optional[str]
    exam_date: Optional[str]
    start_time: Optional[str]
    end_time: Optional[str]
    exam_type: str
    instructor_name: str
    days_until_exam: Optional[int]
    hours_until_start: Optional[int]
    submission_status: str
    my_score: Optional[float]
    my_grade: Optional[str]  # Changed from int to str - database returns letter grades (A, B, C, etc.)
    result: Optional[str]
    availability_status: str
    can_take_exam: int


# ============================================================================
# Student Endpoints
# ============================================================================

@router.get("/grades", response_model=List[StudentGrade])
async def get_student_grades(
    current_user: UserInDB = Depends(require_role(["Student"])),
    db: Session = Depends(get_db)
):
    """
    Get all grades for the current student
    """
    student_email = current_user.email

    try:
        result = db.execute(
            text("EXEC sp_ViewStudentGradesByEmail @Email = :email"),
            {"email": student_email}
        )

        grades = []
        for row in result:
            try:
                grades.append(StudentGrade(
                    student_name=str(row[0]) if row[0] else "",
                    crs_name=str(row[1]) if row[1] else "",
                    exam_type=str(row[2]) if row[2] else "",
                    exam_date=str(row[3]) if row[3] else None,
                    grade=str(row[4]) if row[4] is not None else None,
                    status=str(row[5]) if row[5] else "",
                    intake_year=int(row[6]) if row[6] is not None else 0,
                    track_name=str(row[7]) if row[7] else None,
                    bran_name=str(row[8]) if row[8] else None
                ))
            except Exception as e:
                print(f"ERROR creating StudentGrade from row: {row}")
                print(f"Row values: {[type(r).__name__ + ':' + str(r) for r in row]}")
                raise

        return grades

    except Exception as e:
        import traceback
        print(f"Error fetching student grades: {e}")
        print(f"Full error details: {traceback.format_exc()}")
        raise HTTPException(
            status_code=status.HTTP_500_INTERNAL_SERVER_ERROR,
            detail=f"Failed to fetch grades: {str(e)}"
        )


@router.get("/upcoming-exams", response_model=List[UpcomingExam])
async def get_upcoming_exams(
    current_user: UserInDB = Depends(require_role(["Student"])),
    db: Session = Depends(get_db)
):
    """
    Get all upcoming exams for the current student
    """
    student_id = current_user.student_id

    if not student_id:
        raise HTTPException(
            status_code=status.HTTP_400_BAD_REQUEST,
            detail="Student ID not found in user profile"
        )

    try:
        result = db.execute(
            text("EXEC sp_Student_GetUpcomingExams @ST_ID = :st_id"),
            {"st_id": student_id}
        )

        exams = []
        for row in result:
            try:
                exams.append(UpcomingExam(
                    ex_id=int(row[0]) if row[0] is not None else 0,
                    crs_name=str(row[1]) if row[1] else "",
                    crs_description=str(row[2]) if row[2] else None,
                    exam_date=str(row[3]) if row[3] else None,
                    start_time=str(row[4]) if row[4] else None,
                    end_time=str(row[5]) if row[5] else None,
                    exam_type=str(row[6]) if row[6] else "",
                    instructor_name=str(row[7]) if row[7] else "",
                    days_until_exam=int(row[8]) if row[8] is not None else None,
                    hours_until_start=int(row[9]) if row[9] is not None else None,
                    submission_status=str(row[10]) if row[10] else "",
                    my_score=float(row[11]) if row[11] is not None else None,
                    my_grade=str(row[12]) if row[12] is not None else None,  # Letter grade (A, B, C, etc.)
                    result=str(row[13]) if row[13] else None,
                    availability_status=str(row[14]) if row[14] else "",
                    can_take_exam=int(row[15]) if row[15] is not None else 0
                ))
            except Exception as e:
                print(f"ERROR creating UpcomingExam from row: {row}")
                print(f"Row values: {[type(r).__name__ + ':' + str(r) for r in row]}")
                raise

        return exams

    except Exception as e:
        import traceback
        print(f"Error fetching upcoming exams: {e}")
        print(f"Full error details: {traceback.format_exc()}")
        raise HTTPException(
            status_code=status.HTTP_500_INTERNAL_SERVER_ERROR,
            detail=f"Failed to fetch upcoming exams: {str(e)}"
        )
