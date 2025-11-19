"""
SQLAlchemy Models for ITI Examination System
Based on the existing Azure SQL database schema
"""

from sqlalchemy import (
    Column, Integer, String, Date, Time, Boolean,
    ForeignKey, DECIMAL, Text, DateTime
)
from sqlalchemy.orm import relationship
from ..config import Base


# ============================================================================
# Lookup Tables
# ============================================================================

class Branch(Base):
    """Branch/Location table"""
    __tablename__ = "Branch"
    __table_args__ = {"schema": "dbo"}

    Bran_ID = Column(Integer, primary_key=True, autoincrement=True)
    Bran_Name = Column(String(100), nullable=False)
    Location = Column(String(100))

    # Relationships
    students = relationship("Student", back_populates="branch")
    exams = relationship("Exam", back_populates="branch")


class Department(Base):
    """Department table"""
    __tablename__ = "Department"
    __table_args__ = {"schema": "dbo"}

    Dep_ID = Column(Integer, primary_key=True, autoincrement=True)
    Dep_Name = Column(String(100), nullable=False)

    # Relationships
    tracks = relationship("Track", back_populates="department")
    instructors = relationship("Instructor", back_populates="department")


class Track(Base):
    """Track/Specialization table"""
    __tablename__ = "Track"
    __table_args__ = {"schema": "dbo"}

    Track_ID = Column(Integer, primary_key=True, autoincrement=True)
    Track_Name = Column(String(100), nullable=False)
    No_Cources = Column(Integer)
    Dep_ID = Column(Integer, ForeignKey("dbo.Department.Dep_ID"))

    # Relationships
    department = relationship("Department", back_populates="tracks")
    students = relationship("Student", back_populates="track")
    exams = relationship("Exam", back_populates="track")


class Intake(Base):
    """Intake/Batch year table"""
    __tablename__ = "Intake"
    __table_args__ = {"schema": "dbo"}

    Intake_ID = Column(Integer, primary_key=True, autoincrement=True)
    Intake_Year = Column(Integer, nullable=False, unique=True)

    # Relationships
    students = relationship("Student", back_populates="intake")
    exams = relationship("Exam", back_populates="intake")


class Course(Base):
    """Course table"""
    __tablename__ = "Course"
    __table_args__ = {"schema": "dbo"}

    Crs_ID = Column(Integer, primary_key=True, autoincrement=True)
    Crs_Name = Column(String(200), nullable=False)
    Crs_Description = Column(String(500))
    Min_Degree = Column(DECIMAL(5, 2))
    Max_Degree = Column(DECIMAL(5, 2))

    # Relationships
    questions = relationship("QuPool", back_populates="course")
    exams = relationship("Exam", back_populates="course")


# ============================================================================
# People Tables
# ============================================================================

class Instructor(Base):
    """Instructor table"""
    __tablename__ = "Instructor"
    __table_args__ = {"schema": "dbo"}

    Inst_ID = Column(Integer, primary_key=True, autoincrement=True)
    Inst_Name = Column(String(200), nullable=False)
    Email = Column(String(200))
    Username = Column(String(100))
    Date_of_Birth = Column(Date)
    Gender = Column(String(10))
    Hire_Date = Column(Date)
    Address = Column(String(500))
    Academic_Rank = Column(String(100))
    Dep_ID = Column(Integer, ForeignKey("dbo.Department.Dep_ID"))

    # Relationships
    department = relationship("Department", back_populates="instructors")
    exams = relationship("Exam", back_populates="instructor")


class Student(Base):
    """Student table"""
    __tablename__ = "Student"
    __table_args__ = {"schema": "dbo"}

    ST_ID = Column(Integer, primary_key=True, autoincrement=True)
    ST_Name = Column(String(200), nullable=False)
    Email = Column(String(200))
    user_Name = Column(String(100))
    Date_of_Birth = Column(Date)
    Gender = Column(String(10))
    Address = Column(String(500))
    College = Column(String(100))
    University = Column(String(200))
    Intake_ID = Column(Integer, ForeignKey("dbo.Intake.Intake_ID"))
    Track_id = Column(Integer, ForeignKey("dbo.Track.Track_ID"))
    Bran_ID = Column(Integer, ForeignKey("dbo.Branch.Bran_ID"))
    Status = Column(String(50))

    # Relationships
    intake = relationship("Intake", back_populates="students")
    track = relationship("Track", back_populates="students")
    branch = relationship("Branch", back_populates="students")
    exam_answers = relationship("StuExamQup", back_populates="student")
    grades = relationship("StudentGrades", back_populates="student")


# ============================================================================
# Questions & Choices
# ============================================================================

class QuPool(Base):
    """Question Pool table"""
    __tablename__ = "Qu_Pool"
    __table_args__ = {"schema": "dbo"}

    Qu_ID = Column(Integer, primary_key=True, autoincrement=True)
    Body = Column(Text, nullable=False)
    Type = Column(String(50))  # 'MCQ', 'TF', etc.
    Degree = Column(Integer)
    Crs_ID = Column(Integer, ForeignKey("dbo.Course.Crs_ID"))
    model_answer = Column(Text)

    # Relationships
    course = relationship("Course", back_populates="questions")
    choices = relationship("Choices", back_populates="question")
    exam_questions = relationship("ExamQup", back_populates="question")


class Choices(Base):
    """Answer Choices table"""
    __tablename__ = "Choices"
    __table_args__ = {"schema": "dbo"}

    Choice_ID = Column(Integer, primary_key=True, autoincrement=True)
    Body = Column(Text)
    Is_Correct = Column(Boolean)
    Qu_ID = Column(Integer, ForeignKey("dbo.Qu_Pool.Qu_ID"), nullable=False)
    choice_letter = Column(String(1), nullable=False)

    # Relationships
    question = relationship("QuPool", back_populates="choices")


# ============================================================================
# Exams
# ============================================================================

class Exam(Base):
    """Exam table"""
    __tablename__ = "Exam"
    __table_args__ = {"schema": "dbo"}

    Ex_Id = Column(Integer, primary_key=True, autoincrement=True)
    Date = Column(Date)
    start_time = Column(Time)
    End_time = Column(Time)
    Corrective = Column(Boolean)
    Crs_ID = Column(Integer, ForeignKey("dbo.Course.Crs_ID"))
    Intake_ID = Column(Integer, ForeignKey("dbo.Intake.Intake_ID"))
    Track_ID = Column(Integer, ForeignKey("dbo.Track.Track_ID"))
    Bran_ID = Column(Integer, ForeignKey("dbo.Branch.Bran_ID"))
    Inst_ID = Column(Integer, ForeignKey("dbo.Instructor.Inst_ID"))
    Parent_Ex_ID = Column(Integer, ForeignKey("dbo.Exam.Ex_Id"))

    # Relationships
    course = relationship("Course", back_populates="exams")
    intake = relationship("Intake", back_populates="exams")
    track = relationship("Track", back_populates="exams")
    branch = relationship("Branch", back_populates="exams")
    instructor = relationship("Instructor", back_populates="exams")
    parent_exam = relationship("Exam", remote_side=[Ex_Id])
    questions = relationship("ExamQup", back_populates="exam")
    student_answers = relationship("StuExamQup", back_populates="exam")
    grades = relationship("StudentGrades", back_populates="exam")


class ExamQup(Base):
    """Exam-Question mapping table"""
    __tablename__ = "Exam_Qup"
    __table_args__ = {"schema": "dbo"}

    Ex_ID = Column(Integer, ForeignKey("dbo.Exam.Ex_Id"), primary_key=True)
    Qu_ID = Column(Integer, ForeignKey("dbo.Qu_Pool.Qu_ID"))
    Question_Order = Column(Integer, primary_key=True)

    # Relationships
    exam = relationship("Exam", back_populates="questions")
    question = relationship("QuPool", back_populates="exam_questions")


class StuExamQup(Base):
    """Student Exam Answers table"""
    __tablename__ = "Stu_Exam_Qup"
    __table_args__ = {"schema": "dbo"}

    ST_ID = Column(Integer, ForeignKey("dbo.Student.ST_ID"), primary_key=True)
    Ex_Id = Column(Integer, ForeignKey("dbo.Exam.Ex_Id"), primary_key=True)
    Qu_ID = Column(Integer, ForeignKey("dbo.Qu_Pool.Qu_ID"), primary_key=True)
    Answer_Ch_ID = Column(Integer, ForeignKey("dbo.Choices.Choice_ID"))
    txt_answer = Column(String(255))
    Choice_Letter = Column(String(1))

    # Relationships
    student = relationship("Student", back_populates="exam_answers")
    exam = relationship("Exam", back_populates="student_answers")


class StudentGrades(Base):
    """Student Grades table"""
    __tablename__ = "Student_Grades"
    __table_args__ = {"schema": "dbo"}

    ST_ID = Column(Integer, ForeignKey("dbo.Student.ST_ID"), primary_key=True)
    Ex_Id = Column(Integer, ForeignKey("dbo.Exam.Ex_Id"), primary_key=True)
    Percentage = Column(DECIMAL(5, 2))
    Grade = Column(String(2))
    Pass_Status = Column(Boolean)
    Total_Score = Column(DECIMAL(10, 2))

    # Relationships
    student = relationship("Student", back_populates="grades")
    exam = relationship("Exam", back_populates="grades")
