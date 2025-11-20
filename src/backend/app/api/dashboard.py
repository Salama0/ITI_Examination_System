"""
Dashboard API endpoints
Provides statistics and data for the dashboard using stored procedures
"""

from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from sqlalchemy import text
from typing import List, Optional
from pydantic import BaseModel

from ..config import get_db

router = APIRouter()


# ============================================================================
# Pydantic Models for Response
# ============================================================================

class DashboardStats(BaseModel):
    # Entity counts
    total_students: int
    current_intake_students: int
    total_instructors: int
    total_courses: int
    total_branches: int
    total_tracks: int

    # Exam statistics
    total_exams: int
    current_intake_exams: int
    normal_exams: int
    corrective_exams: int

    # Performance metrics
    total_submissions: int
    overall_avg_score: Optional[float]
    total_passes: int
    total_failures: int
    overall_pass_rate: float

    # Student status
    active_students: int  # Status = 'Student'
    graduated_students: int
    withdrawn_students: int

    # Current intake info
    current_intake_year: Optional[int]

class BranchStats(BaseModel):
    branch_id: int
    branch_name: str
    location: Optional[str]
    total_students: int
    active_students: int
    graduated_students: int
    total_exams: int
    students_took_exams: int
    avg_score: Optional[float]
    pass_rate: float

class TrackStats(BaseModel):
    track_id: int
    track_name: str
    total_students: int
    branches_offering: int
    total_exams: int
    courses_with_exams: int
    avg_score: Optional[float]
    pass_rate: float

class RecentExam(BaseModel):
    exam_id: int
    course_name: str
    exam_date: Optional[str]
    instructor_name: str
    track_name: str
    branch_name: str
    exam_type: str
    submissions: int
    avg_score: Optional[float]
    passed: int
    failed: int

class TopPerformer(BaseModel):
    id: int
    name: str
    track: Optional[str]
    avg_grade: float
    exams_taken: int

class SystemHealth(BaseModel):
    students_needing_corrective: int
    exams_low_pass_rate: int
    upcoming_exams_7_days: int
    students_no_submissions: int


# ============================================================================
# Dashboard Endpoints
# ============================================================================

@router.get("/stats", response_model=DashboardStats)
def get_dashboard_stats(db: Session = Depends(get_db)):
    """Get overall dashboard statistics using stored procedure"""

    try:
        # Execute the stored procedure
        result = db.execute(text("EXEC sp_Manager_GetSystemDashboard"))

        # First result set: Overall system statistics
        row = result.fetchone()

        if not row:
            raise HTTPException(status_code=500, detail="No data returned from dashboard SP")

        stats = DashboardStats(
            total_students=row[0] or 0,
            current_intake_students=row[1] or 0,
            total_instructors=row[2] or 0,
            total_courses=row[3] or 0,
            total_branches=row[4] or 0,
            total_tracks=row[5] or 0,
            total_exams=row[7] or 0,  # Total_Exams_Created
            current_intake_exams=row[8] or 0,
            normal_exams=row[9] or 0,
            corrective_exams=row[10] or 0,
            total_submissions=row[13] or 0,
            overall_avg_score=round(float(row[14]), 1) if row[14] else None,
            total_passes=row[15] or 0,
            total_failures=row[16] or 0,
            overall_pass_rate=round(float(row[17]), 1) if row[17] else 0.0,
            active_students=row[18] or 0,
            graduated_students=row[19] or 0,
            withdrawn_students=row[20] or 0,
            current_intake_year=row[21]
        )

        return stats

    except Exception as e:
        # If SP doesn't exist or fails, fall back to direct queries
        return get_dashboard_stats_fallback(db)


def get_dashboard_stats_fallback(db: Session):
    """Fallback method using direct queries if SP is not available"""
    from sqlalchemy import func, Integer
    from ..models import Student, Instructor, Course, Exam, StudentGrades, Branch, Track

    # Get max intake
    max_intake = db.execute(text("SELECT MAX(Intake_ID) FROM Intake")).scalar() or 0

    # Count students
    total_students = db.query(func.count(Student.ST_ID)).scalar() or 0
    current_intake_students = db.query(func.count(Student.ST_ID)).filter(
        Student.Intake_ID == max_intake
    ).scalar() or 0

    # Student status counts
    active_students = db.query(func.count(Student.ST_ID)).filter(
        Student.Status == 'Student'
    ).scalar() or 0
    graduated_students = db.query(func.count(Student.ST_ID)).filter(
        Student.Status == 'Graduated'
    ).scalar() or 0
    withdrawn_students = db.query(func.count(Student.ST_ID)).filter(
        Student.Status == 'Withdrawn'
    ).scalar() or 0

    # Count other entities
    total_instructors = db.query(func.count(Instructor.Inst_ID)).scalar() or 0
    total_courses = db.query(func.count(Course.Crs_ID)).scalar() or 0
    total_branches = db.query(func.count(Branch.Bran_ID)).scalar() or 0
    total_tracks = db.query(func.count(Track.Track_ID)).scalar() or 0

    # Exam counts
    total_exams = db.query(func.count(Exam.Ex_Id)).scalar() or 0
    current_intake_exams = db.query(func.count(Exam.Ex_Id)).filter(
        Exam.Intake_ID == max_intake
    ).scalar() or 0
    normal_exams = db.query(func.count(Exam.Ex_Id)).filter(
        Exam.Corrective == False
    ).scalar() or 0
    corrective_exams = db.query(func.count(Exam.Ex_Id)).filter(
        Exam.Corrective == True
    ).scalar() or 0

    # Performance metrics
    total_submissions = db.query(func.count(StudentGrades.ST_ID)).scalar() or 0
    overall_avg = db.query(func.avg(StudentGrades.Percentage)).scalar()
    total_passes = db.query(func.count(StudentGrades.ST_ID)).filter(
        StudentGrades.Pass_Status == True
    ).scalar() or 0
    total_failures = db.query(func.count(StudentGrades.ST_ID)).filter(
        StudentGrades.Pass_Status == False
    ).scalar() or 0

    pass_rate = (total_passes / total_submissions * 100) if total_submissions > 0 else 0

    # Get current intake year
    intake_year = db.execute(
        text("SELECT Intake_Year FROM Intake WHERE Intake_ID = :id"),
        {"id": max_intake}
    ).scalar()

    return DashboardStats(
        total_students=total_students,
        current_intake_students=current_intake_students,
        total_instructors=total_instructors,
        total_courses=total_courses,
        total_branches=total_branches,
        total_tracks=total_tracks,
        total_exams=total_exams,
        current_intake_exams=current_intake_exams,
        normal_exams=normal_exams,
        corrective_exams=corrective_exams,
        total_submissions=total_submissions,
        overall_avg_score=round(float(overall_avg), 1) if overall_avg else None,
        total_passes=total_passes,
        total_failures=total_failures,
        overall_pass_rate=round(pass_rate, 1),
        active_students=active_students,
        graduated_students=graduated_students,
        withdrawn_students=withdrawn_students,
        current_intake_year=intake_year
    )


@router.get("/recent-exams", response_model=List[RecentExam])
def get_recent_exams(limit: int = 5, db: Session = Depends(get_db)):
    """Get recent exams with their statistics (last 30 days)"""

    results = db.execute(text("""
        SELECT
            e.Ex_Id,
            c.Crs_Name,
            e.Date,
            i.Inst_Name,
            t.Track_Name,
            b.Bran_Name,
            CASE WHEN e.Corrective = 1 THEN 'Corrective' ELSE 'Normal' END AS Exam_Type,
            COUNT(DISTINCT g.ST_ID) AS Submissions,
            AVG(g.Percentage) AS Average_Score,
            SUM(CASE WHEN g.Pass_Status = 1 THEN 1 ELSE 0 END) AS Passed,
            SUM(CASE WHEN g.Pass_Status = 0 THEN 1 ELSE 0 END) AS Failed
        FROM dbo.Exam e
        JOIN dbo.Course c ON e.Crs_ID = c.Crs_ID
        JOIN dbo.Instructor i ON e.Inst_ID = i.Inst_ID
        JOIN dbo.Track t ON e.Track_ID = t.Track_ID
        JOIN dbo.Branch b ON e.Bran_ID = b.Bran_ID
        LEFT JOIN dbo.Student_Grades g ON g.Ex_Id = e.Ex_Id
        WHERE e.Date >= DATEADD(DAY, -30, GETDATE())
        GROUP BY e.Ex_Id, c.Crs_Name, e.Date, i.Inst_Name, t.Track_Name, b.Bran_Name, e.Corrective
        ORDER BY e.Date DESC
        OFFSET 0 ROWS FETCH NEXT :limit ROWS ONLY
    """), {"limit": limit}).fetchall()

    exams = []
    for row in results:
        exams.append(RecentExam(
            exam_id=row[0],
            course_name=row[1] or "Unknown Course",
            exam_date=str(row[2]) if row[2] else None,
            instructor_name=row[3] or "Unknown",
            track_name=row[4] or "Unknown",
            branch_name=row[5] or "Unknown",
            exam_type=row[6] or "Normal",
            submissions=row[7] or 0,
            avg_score=round(float(row[8]), 1) if row[8] else None,
            passed=row[9] or 0,
            failed=row[10] or 0
        ))

    return exams


@router.get("/top-performers", response_model=List[TopPerformer])
def get_top_performers(limit: int = 5, db: Session = Depends(get_db)):
    """Get top performing students based on average grades"""

    results = db.execute(text("""
        SELECT
            s.ST_ID,
            s.ST_Name,
            t.Track_Name,
            AVG(sg.Percentage) as avg_grade,
            COUNT(sg.Ex_Id) as exams_taken
        FROM dbo.Student s
        LEFT JOIN dbo.Track t ON s.Track_id = t.Track_ID
        INNER JOIN dbo.Student_Grades sg ON s.ST_ID = sg.ST_ID
        GROUP BY s.ST_ID, s.ST_Name, t.Track_Name
        HAVING COUNT(sg.Ex_Id) >= 2
        ORDER BY AVG(sg.Percentage) DESC
        OFFSET 0 ROWS FETCH NEXT :limit ROWS ONLY
    """), {"limit": limit}).fetchall()

    performers = []
    for row in results:
        performers.append(TopPerformer(
            id=row[0],
            name=row[1],
            track=row[2],
            avg_grade=round(float(row[3]), 1) if row[3] else 0,
            exams_taken=row[4]
        ))

    return performers


@router.get("/students-by-branch", response_model=List[BranchStats])
def get_students_by_branch(db: Session = Depends(get_db)):
    """Get student statistics per branch for current intake"""

    results = db.execute(text("""
        DECLARE @MaxIntakeID INT;
        SELECT @MaxIntakeID = MAX(Intake_ID) FROM Intake;

        SELECT
            b.Bran_ID,
            b.Bran_Name,
            b.Location,
            COUNT(DISTINCT s.ST_ID) AS Total_Students,
            SUM(CASE WHEN s.Status = 'Student' THEN 1 ELSE 0 END) AS Active_Students,
            SUM(CASE WHEN s.Status = 'Graduated' THEN 1 ELSE 0 END) AS Graduated_Students,
            COUNT(DISTINCT e.Ex_ID) AS Total_Exams,
            COUNT(DISTINCT g.ST_ID) AS Students_Who_Took_Exams,
            AVG(g.Percentage) AS Average_Score,
            CASE
                WHEN COUNT(g.ST_ID) > 0 THEN
                    CAST(SUM(CASE WHEN g.Pass_Status = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(g.ST_ID) AS DECIMAL(5,2))
                ELSE 0
            END AS Pass_Rate
        FROM Branch b
        LEFT JOIN Student s ON s.Bran_ID = b.Bran_ID AND s.Intake_ID = @MaxIntakeID
        LEFT JOIN Exam e ON e.Bran_ID = b.Bran_ID AND e.Intake_ID = @MaxIntakeID
        LEFT JOIN Student_Grades g ON g.Ex_ID = e.Ex_ID
        GROUP BY b.Bran_ID, b.Bran_Name, b.Location
        ORDER BY b.Bran_Name
    """)).fetchall()

    return [
        BranchStats(
            branch_id=row[0],
            branch_name=row[1],
            location=row[2],
            total_students=row[3] or 0,
            active_students=row[4] or 0,
            graduated_students=row[5] or 0,
            total_exams=row[6] or 0,
            students_took_exams=row[7] or 0,
            avg_score=round(float(row[8]), 1) if row[8] else None,
            pass_rate=round(float(row[9]), 1) if row[9] else 0
        )
        for row in results
    ]


@router.get("/students-by-track", response_model=List[TrackStats])
def get_students_by_track(db: Session = Depends(get_db)):
    """Get student statistics per track for current intake"""

    results = db.execute(text("""
        DECLARE @MaxIntakeID INT;
        SELECT @MaxIntakeID = MAX(Intake_ID) FROM Intake;

        SELECT
            t.Track_ID,
            t.Track_Name,
            COUNT(DISTINCT s.ST_ID) AS Total_Students,
            COUNT(DISTINCT s.Bran_ID) AS Branches_Offering_Track,
            COUNT(DISTINCT e.Ex_ID) AS Total_Exams,
            COUNT(DISTINCT e.Crs_ID) AS Courses_With_Exams,
            AVG(g.Percentage) AS Average_Score,
            CASE
                WHEN COUNT(g.ST_ID) > 0 THEN
                    CAST(SUM(CASE WHEN g.Pass_Status = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(g.ST_ID) AS DECIMAL(5,2))
                ELSE 0
            END AS Pass_Rate
        FROM Track t
        LEFT JOIN Student s ON s.Track_id = t.Track_ID AND s.Intake_ID = @MaxIntakeID
        LEFT JOIN Exam e ON e.Track_ID = t.Track_ID AND e.Intake_ID = @MaxIntakeID
        LEFT JOIN Student_Grades g ON g.Ex_ID = e.Ex_ID
        GROUP BY t.Track_ID, t.Track_Name
        ORDER BY t.Track_Name
    """)).fetchall()

    return [
        TrackStats(
            track_id=row[0],
            track_name=row[1],
            total_students=row[2] or 0,
            branches_offering=row[3] or 0,
            total_exams=row[4] or 0,
            courses_with_exams=row[5] or 0,
            avg_score=round(float(row[6]), 1) if row[6] else None,
            pass_rate=round(float(row[7]), 1) if row[7] else 0
        )
        for row in results
    ]


@router.get("/system-health", response_model=SystemHealth)
def get_system_health(db: Session = Depends(get_db)):
    """Get system health indicators"""

    results = db.execute(text("""
        DECLARE @MaxIntakeID INT;
        SELECT @MaxIntakeID = MAX(Intake_ID) FROM Intake;

        SELECT
            -- Students needing corrective exams
            (SELECT COUNT(DISTINCT g.ST_ID)
             FROM Student_Grades g
             JOIN Exam e ON g.Ex_ID = e.Ex_ID
             WHERE g.Pass_Status = 0
               AND e.Corrective = 0
               AND e.Intake_ID = @MaxIntakeID) AS Students_Needing_Corrective,

            -- Exams with low pass rates (< 60%)
            (SELECT COUNT(*)
             FROM (
                 SELECT e.Ex_ID,
                        CAST(SUM(CASE WHEN g.Pass_Status = 1 THEN 1 ELSE 0 END) * 100.0 / NULLIF(COUNT(g.ST_ID), 0) AS DECIMAL(5,2)) AS Pass_Rate
                 FROM Exam e
                 JOIN Student_Grades g ON g.Ex_ID = e.Ex_ID
                 WHERE e.Intake_ID = @MaxIntakeID
                 GROUP BY e.Ex_ID
             ) sub
             WHERE sub.Pass_Rate < 60) AS Exams_With_Low_Pass_Rate,

            -- Upcoming exams (next 7 days)
            (SELECT COUNT(*)
             FROM Exam
             WHERE Date BETWEEN GETDATE() AND DATEADD(DAY, 7, GETDATE())) AS Upcoming_Exams_Next_7_Days,

            -- Students with no exam submissions
            (SELECT COUNT(*)
             FROM Student s
             LEFT JOIN Student_Grades g ON g.ST_ID = s.ST_ID
             WHERE s.Intake_ID = @MaxIntakeID
               AND g.ST_ID IS NULL) AS Students_With_No_Submissions
    """)).fetchone()

    return SystemHealth(
        students_needing_corrective=results[0] or 0,
        exams_low_pass_rate=results[1] or 0,
        upcoming_exams_7_days=results[2] or 0,
        students_no_submissions=results[3] or 0
    )


@router.get("/exam-performance-summary")
def get_exam_performance_summary(db: Session = Depends(get_db)):
    """Get overall exam performance summary"""

    results = db.execute(text("""
        SELECT
            COUNT(*) as total_attempts,
            SUM(CASE WHEN Pass_Status = 1 THEN 1 ELSE 0 END) as passed,
            SUM(CASE WHEN Pass_Status = 0 THEN 1 ELSE 0 END) as failed,
            AVG(Percentage) as avg_percentage,
            MIN(Percentage) as min_percentage,
            MAX(Percentage) as max_percentage
        FROM dbo.Student_Grades
    """)).fetchone()

    if results:
        return {
            "total_attempts": results[0] or 0,
            "passed": results[1] or 0,
            "failed": results[2] or 0,
            "pass_rate": round((results[1] / results[0] * 100), 1) if results[0] else 0,
            "avg_percentage": round(float(results[3]), 1) if results[3] else 0,
            "min_percentage": round(float(results[4]), 1) if results[4] else 0,
            "max_percentage": round(float(results[5]), 1) if results[5] else 0
        }

    return {
        "total_attempts": 0,
        "passed": 0,
        "failed": 0,
        "pass_rate": 0,
        "avg_percentage": 0,
        "min_percentage": 0,
        "max_percentage": 0
    }
