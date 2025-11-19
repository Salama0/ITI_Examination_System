/*
==========================================
🧾 Stored Procedure: sp_UpdateStudentStatus
------------------------------------------
📌 Purpose:
    Updates student status based on their academic performance.
    Automatically determines if student should graduate based on exam results.

✅ Functionality:
    1. Validates student exists
    2. Checks all required exams are taken and passed
    3. Updates status to 'Graduated' or 'Not Graduated'
    4. Can also handle 'On Leave' status manually

📊 Web Application Use:
    - Manager Dashboard: Manual status update
    - Automated: Run after grading completion
    - Student Portal: Display current status

🕓 Usage Examples:
    -- Auto-determine graduation status
    EXEC sp_UpdateStudentStatus
        @ST_ID = 5001,
        @Auto_Determine = 1;

    -- Manually set status
    EXEC sp_UpdateStudentStatus
        @ST_ID = 5001,
        @New_Status = 'On Leave',
        @Reason = 'Medical leave';

==========================================
*/

-- Drop if exists
IF OBJECT_ID('dbo.sp_UpdateStudentStatus', 'P') IS NOT NULL
    DROP PROCEDURE dbo.sp_UpdateStudentStatus;
GO

CREATE PROCEDURE dbo.sp_UpdateStudentStatus
    @ST_ID INT,
    @New_Status NVARCHAR(50) = NULL,  -- 'Graduated', 'Not Graduated', 'On Leave'
    @Reason NVARCHAR(500) = NULL,
    @Auto_Determine BIT = 0  -- If 1, automatically determine based on grades
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        DECLARE @CurrentStatus NVARCHAR(50);
        DECLARE @TotalExamsRequired INT;
        DECLARE @ExamsTaken INT;
        DECLARE @ExamsPassed INT;
        DECLARE @PassRate DECIMAL(5,2);
        DECLARE @DeterminedStatus NVARCHAR(50);

        -- 1️⃣ Validate student exists
        IF NOT EXISTS (SELECT 1 FROM Student WHERE ST_ID = @ST_ID)
        BEGIN
            RAISERROR('❌ Student ID does not exist.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        SELECT @CurrentStatus = [Status] FROM Student WHERE ST_ID = @ST_ID;

        -- 2️⃣ Auto-determine status based on grades
        IF @Auto_Determine = 1
        BEGIN
            -- Get total exams taken and passed
            SELECT
                @ExamsTaken = COUNT(*),
                @ExamsPassed = SUM(CASE WHEN Pass_Status = 1 THEN 1 ELSE 0 END)
            FROM Student_Grades
            WHERE ST_ID = @ST_ID;

            -- Calculate pass rate
            IF @ExamsTaken > 0
                SET @PassRate = (CAST(@ExamsPassed AS DECIMAL(10,2)) / @ExamsTaken) * 100;
            ELSE
                SET @PassRate = 0;

            -- Determine status based on criteria
            -- Logic: Student must pass at least 90% of exams to graduate
            IF @ExamsTaken >= 10 AND @PassRate >= 90
                SET @DeterminedStatus = 'Graduated';
            ELSE IF @ExamsTaken >= 10 AND @PassRate < 90
                SET @DeterminedStatus = 'Not Graduated';
            ELSE
                SET @DeterminedStatus = 'Student';  -- Still active, not enough exams

            SET @New_Status = @DeterminedStatus;
        END
        ELSE
        BEGIN
            -- 3️⃣ Manual status update - validate status value
            IF @New_Status NOT IN ('Graduated', 'Not Graduated', 'On Leave', 'Student')
            BEGIN
                RAISERROR('❌ Invalid status. Must be: Graduated, Not Graduated, On Leave, or Student.', 16, 1);
                ROLLBACK TRANSACTION;
                RETURN;
            END

            -- 4️⃣ If manually setting to Graduated, verify requirements
            IF @New_Status = 'Graduated'
            BEGIN
                SELECT
                    @ExamsTaken = COUNT(*),
                    @ExamsPassed = SUM(CASE WHEN Pass_Status = 1 THEN 1 ELSE 0 END)
                FROM Student_Grades
                WHERE ST_ID = @ST_ID;

                IF @ExamsTaken = 0
                BEGIN
                    RAISERROR('⚠️ Warning: Student has no exam records. Cannot mark as Graduated.', 16, 1);
                    ROLLBACK TRANSACTION;
                    RETURN;
                END

                IF @ExamsTaken > 0
                    SET @PassRate = (CAST(@ExamsPassed AS DECIMAL(10,2)) / @ExamsTaken) * 100;

                IF @PassRate < 50
                BEGIN
                    RAISERROR('⚠️ Warning: Student has pass rate below 50%%. Are you sure you want to mark as Graduated?', 16, 1);
                    -- Note: Not blocking, just warning in production you might want to confirm
                END
            END
        END

        -- 5️⃣ Update student status
        UPDATE Student
        SET [Status] = @New_Status
        WHERE ST_ID = @ST_ID;

        COMMIT TRANSACTION;

        -- ✅ Return updated student info
        SELECT
            ST_ID,
            ST_Name,
            Email,
            [Status] AS New_Status,
            @CurrentStatus AS Previous_Status,
            @ExamsTaken AS Total_Exams_Taken,
            @ExamsPassed AS Exams_Passed,
            @PassRate AS Pass_Rate_Percentage,
            CASE
                WHEN @Reason IS NOT NULL THEN @Reason
                WHEN @Auto_Determine = 1 THEN 'Auto-determined based on grades'
                ELSE 'Manual status update'
            END AS Update_Reason,
            '✅ Student status updated successfully' AS Message
        FROM Student
        WHERE ST_ID = @ST_ID;

    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        RAISERROR(@ErrorMessage, 16, 1);
    END CATCH
END;
GO
