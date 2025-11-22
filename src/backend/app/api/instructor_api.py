"""
Instructor API endpoints
Handles instructor-specific data: courses, exams, students
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

class InstructorCourse(BaseModel):
    crs_id: int
    crs_name: str
    crs_description: Optional[str]
    track_id: int
    track_name: str
    bran_id: int
    bran_name: str
    intake_year: int
    department: Optional[str]
    exams_created: int
    normal_exams: int
    corrective_exams: int
    total_students_in_track: int


class InstructorExam(BaseModel):
    ex_id: int
    crs_name: str
    exam_date: Optional[str]
    start_time: Optional[str]
    end_time: Optional[str]
    exam_type: str
    track_name: str
    bran_name: str
    intake_year: int
    total_students_in_track: int
    students_who_submitted: int
    students_not_submitted: int
    total_submissions: int
    passed_count: int
    failed_count: int
    submission_rate_percentage: Optional[float]
    average_score: Optional[float]
    exam_status: str


# ============================================================================
# Instructor Endpoints
# ============================================================================

@router.get("/courses", response_model=List[InstructorCourse])
async def get_instructor_courses(
    current_user: UserInDB = Depends(require_role(["Instructor"])),
    db: Session = Depends(get_db)
):
    """
    Get all courses assigned to the current instructor
    """
    instructor_id = current_user.instructor_id

    if not instructor_id:
        raise HTTPException(
            status_code=status.HTTP_400_BAD_REQUEST,
            detail="Instructor ID not found in user profile"
        )

    try:
        result = db.execute(
            text("EXEC sp_Instructor_GetMyCourses @Inst_ID = :inst_id"),
            {"inst_id": instructor_id}
        )

        courses = []
        for row in result:
            courses.append(InstructorCourse(
                crs_id=row[0],
                crs_name=row[1],
                crs_description=row[2],
                track_id=row[3],
                track_name=row[4],
                bran_id=row[5],
                bran_name=row[6],
                intake_year=row[7],
                department=row[8],
                exams_created=row[9],
                normal_exams=row[10],
                corrective_exams=row[11],
                total_students_in_track=row[12]
            ))

        return courses

    except Exception as e:
        print(f"Error fetching instructor courses: {e}")
        raise HTTPException(
            status_code=status.HTTP_500_INTERNAL_SERVER_ERROR,
            detail=f"Failed to fetch courses: {str(e)}"
        )


@router.get("/exams", response_model=List[InstructorExam])
async def get_instructor_exams(
    current_user: UserInDB = Depends(require_role(["Instructor"])),
    db: Session = Depends(get_db)
):
    """
    Get all exams created by the current instructor
    """
    instructor_id = current_user.instructor_id

    if not instructor_id:
        raise HTTPException(
            status_code=status.HTTP_400_BAD_REQUEST,
            detail="Instructor ID not found in user profile"
        )

    try:
        result = db.execute(
            text("EXEC sp_Instructor_GetMyExams @Inst_ID = :inst_id"),
            {"inst_id": instructor_id}
        )

        exams = []
        for row in result:
            exams.append(InstructorExam(
                ex_id=row[0],
                crs_name=row[1],
                exam_date=str(row[2]) if row[2] else None,
                start_time=str(row[3]) if row[3] else None,
                end_time=str(row[4]) if row[4] else None,
                exam_type=row[5],
                track_name=row[6],
                bran_name=row[7],
                intake_year=row[8],
                total_students_in_track=row[9],
                students_who_submitted=row[10],
                students_not_submitted=row[11],
                total_submissions=row[12],
                passed_count=row[13],
                failed_count=row[14],
                submission_rate_percentage=float(row[15]) if row[15] else None,
                average_score=float(row[16]) if row[16] else None,
                exam_status=row[17]
            ))

        return exams

    except Exception as e:
        print(f"Error fetching instructor exams: {e}")
        raise HTTPException(
            status_code=status.HTTP_500_INTERNAL_SERVER_ERROR,
            detail=f"Failed to fetch exams: {str(e)}"
        )
