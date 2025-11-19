/****************************************************************************************************
Procedure:     sp_StudentSubmitExam

Purpose:
    Allows a student to submit exam answers using LETTERS (A–Z) instead of Choice_IDs.
    The procedure validates student/exam alignment (latest intake, track, branch, course),
    enforces exactly 20 ordered answers, and records each answer mapped to the correct
    Choice row via (Qu_ID, choice_letter). Both Answer_Ch_ID and Choice_Letter are stored.

Parameters:
    @St_ID          INT           -- Student ID
    @Crs_ID         INT           -- Course ID (for cross-check with exam)
    @Ex_ID          INT           -- Exam ID
    @AnswerLetters  NVARCHAR(MAX) -- Comma-separated letters (exactly 20) ordered by question,
                                   -- e.g., 'A,B,C,D,...,T' (case-insensitive; trimmed)

Validations:
    ✅ Student exists
    ✅ Exam exists
    ✅ Student is in the latest intake and matches exam intake
    ✅ Exam belongs to the specified course
    ✅ Student's track/branch match the exam's track/branch
    ✅ Prevent duplicate submissions for the same (ST_ID, Ex_ID)
    ✅ Exactly 20 answers; each is a letter A–Z
    ✅ Exam has exactly 20 questions
    ✅ Each answer letter corresponds to a valid choice for that question

Data Effects:
    • Inserts 20 rows into dbo.Stu_Exam_Qup for the student's submission,
      setting both Answer_Ch_ID and Choice_Letter (trigger guard preserved).

Output:
    • Returns a single confirmation row (Submitted=1, ST_ID, Ex_ID, Answers).

Notes:
    • If you later allow essays/TXT questions, extend to populate txt_answer for those types.
    • Time window validation is included as a commented block for easy enablement.

Usage Example:
    EXEC dbo.sp_StudentSubmitExam
         @St_ID = 101,
         @Crs_ID = 3,
         @Ex_ID = 7729,
         @AnswerLetters = N'A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T';
****************************************************************************************************/

-- Drop if exists
IF OBJECT_ID('dbo.sp_StudentSubmitExam', 'P') IS NOT NULL
    DROP PROCEDURE dbo.sp_StudentSubmitExam;
GO

CREATE PROCEDURE dbo.sp_StudentSubmitExam
    @St_ID         INT,
    @Crs_ID        INT,
    @Ex_ID         INT,
    @AnswerLetters NVARCHAR(MAX)  -- comma-separated letters: e.g., 'A,B,C,D,...'
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    BEGIN TRY
        BEGIN TRAN;

        DECLARE
            @MaxIntake    INT,
            @StuIntake    INT,
            @StuTrack     INT,
            @StuBranch    INT,
            @ExamIntake   INT,
            @ExamTrack    INT,
            @ExamBranch   INT,
            @ExamCourse   INT,
            @AnswerCount  INT,
            @QuestionCount INT,
            @MatchCount   INT;

        /* 1️⃣ Validate Student Exists */
        IF NOT EXISTS (SELECT 1 FROM dbo.Student WHERE ST_ID = @St_ID)
        BEGIN
            THROW 50001, N'❌ Student ID not found.', 1;
        END

        /* 2️⃣ Validate Exam Exists */
        IF NOT EXISTS (SELECT 1 FROM dbo.Exam WHERE Ex_ID = @Ex_ID)
        BEGIN
            THROW 50002, N'❌ Exam ID not found.', 1;
        END

        /* 3️⃣ Get Exam Details */
        SELECT
            @ExamIntake = Intake_ID,
            @ExamTrack  = Track_ID,
            @ExamBranch = Bran_ID,
            @ExamCourse = Crs_ID
        FROM dbo.Exam
        WHERE Ex_ID = @Ex_ID;

        /* 4️⃣ Get Student Details */
        SELECT
            @StuIntake = Intake_ID,
            @StuTrack  = Track_ID,
            @StuBranch = Bran_ID
        FROM dbo.Student
        WHERE ST_ID = @St_ID;

        /* 5️⃣ Validate Intake and Course (latest by Intake_ID) */
        SELECT @MaxIntake = MAX(Intake_ID) FROM dbo.Intake;

        IF @StuIntake <> @ExamIntake OR @StuIntake <> @MaxIntake
        BEGIN
            THROW 50003, N'❌ Student not enrolled in the active intake for this exam.', 1;
        END

        IF @ExamCourse <> @Crs_ID
        BEGIN
            THROW 50004, N'❌ Exam does not belong to the specified course.', 1;
        END

        IF @StuTrack <> @ExamTrack OR @StuBranch <> @ExamBranch
        BEGIN
            THROW 50005, N'❌ Student not assigned to this exam''s track or branch.', 1;
        END

        /* 6️⃣ Prevent Duplicate Submission */
        IF EXISTS (SELECT 1 FROM dbo.Stu_Exam_Qup WHERE ST_ID = @St_ID AND Ex_ID = @Ex_ID)
        BEGIN
            THROW 50006, N'⚠️ Student has already submitted this exam.', 1;
        END

        /* 7️⃣ Parse Answers: 20 ordered letters (A–Z) */
        IF @AnswerLetters IS NULL OR LTRIM(RTRIM(@AnswerLetters)) = N''
        BEGIN
            THROW 50007, N'❌ You must provide exactly 20 ordered answers (letters).', 1;
        END

        DECLARE @Answers TABLE
        (
            RowNum INT IDENTITY(1,1) PRIMARY KEY,
            Letter CHAR(1) NOT NULL
        );

        INSERT INTO @Answers (Letter)
        SELECT UPPER(SUBSTRING(LTRIM(RTRIM(value)), 1, 1))
        FROM STRING_SPLIT(@AnswerLetters, ',')
        WHERE value IS NOT NULL;

        SELECT @AnswerCount = COUNT(*) FROM @Answers;

        IF @AnswerCount <> 20
        BEGIN
            THROW 50008, N'❌ You must provide exactly 20 ordered answers.', 1;
        END

        /* Ensure letters are in A..Z */
        IF EXISTS (SELECT 1 FROM @Answers WHERE Letter NOT LIKE '[A-Z]')
        BEGIN
            THROW 50009, N'❌ Answers must be letters A–Z only.', 1;
        END

        /* 8️⃣ Validate Exam has exactly 20 questions */
        SELECT @QuestionCount = COUNT(*) FROM dbo.Exam_Qup WHERE Ex_ID = @Ex_ID;

        IF @QuestionCount <> 20
        BEGIN
            THROW 50010, N'❌ Exam invalid: must contain exactly 20 questions.', 1;
        END

        /* 9️⃣ (Optional) Time Window Validation — enable if needed
        IF NOT EXISTS (
            SELECT 1
            FROM dbo.Exam
            WHERE Ex_ID = @Ex_ID
              AND SYSDATETIME() BETWEEN
                    DATEADD(SECOND, 0, CAST([Date] AS DATETIME) + CAST(start_time AS DATETIME))
                AND DATEADD(SECOND, 0, CAST([Date] AS DATETIME) + CAST(end_time   AS DATETIME))
        )
        BEGIN
            THROW 50012, N'⏰ Exam can only be submitted during the scheduled time.', 1;
        END
        */

        /* 🔟 Map each answer letter to the corresponding (Qu_ID, choice_letter),
              verifying that every letter is a valid choice for that question. */
        ;WITH Q AS
        (
            SELECT e.Ex_ID, e.Qu_ID, e.Question_Order
            FROM dbo.Exam_Qup AS e
            WHERE e.Ex_ID = @Ex_ID
        ),
        A AS
        (
            SELECT RowNum, Letter FROM @Answers
        ),
        M AS
        (
            SELECT q.Qu_ID, q.Question_Order, a.Letter, c.Choice_ID
            FROM Q q
            JOIN A a
              ON a.RowNum = q.Question_Order
            LEFT JOIN dbo.Choices c
              ON c.Qu_ID = q.Qu_ID
             AND c.choice_letter = a.Letter
        )
        SELECT @MatchCount = COUNT(*)
        FROM M
        WHERE Choice_ID IS NOT NULL;

        IF @MatchCount <> 20
        BEGIN
            THROW 50011, N'❌ One or more provided letters do not match a valid choice for their question.', 1;
        END

        /* 1️⃣1️⃣ Persist answers: store both Answer_Ch_ID and Choice_Letter
              (Trigger dbo.trg_SEQ_ChoiceGuard remains satisfied.) */
        INSERT INTO dbo.Stu_Exam_Qup (ST_ID, Ex_ID, Qu_ID, Answer_Ch_ID, Choice_Letter)
        SELECT
            @St_ID,
            @Ex_ID,
            m.Qu_ID,
            m.Choice_ID,
            m.Letter
        FROM (
            SELECT q.Qu_ID, q.Question_Order, a.Letter, c.Choice_ID
            FROM dbo.Exam_Qup q
            JOIN @Answers a
              ON a.RowNum = q.Question_Order
            JOIN dbo.Choices c
              ON c.Qu_ID = q.Qu_ID
             AND c.choice_letter = a.Letter
            WHERE q.Ex_ID = @Ex_ID
        ) AS m
        ORDER BY m.Question_Order;

        COMMIT;

        /* ✅ Confirmation output */
        SELECT
            Submitted = 1,
            ST_ID     = @St_ID,
            Ex_ID     = @Ex_ID,
            Answers   = @AnswerLetters;

    END TRY
    BEGIN CATCH
        IF XACT_STATE() <> 0 ROLLBACK;
        THROW;
    END CATCH
END;
GO
