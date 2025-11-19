/*
==========================================
🧾 Stored Procedure: sp_Manager_AssignInstructorToBranch
------------------------------------------
📌 Purpose:
    Allows Manager to assign instructor to branch for current intake.
    Used before assigning courses.

✅ Functionality:
    1. Validates manager permissions (can be extended)
    2. Validates instructor and branch exist
    3. Validates instructor's department
    4. Inserts into Intake_Inst_Branch
    5. Prevents duplicate assignments

📊 Web Application Use:
    - Manager Dashboard: Instructor Assignment Form
    - Bulk assignment interface

🕓 Usage Example:
    EXEC sp_Manager_AssignInstructorToBranch
        @Inst_ID = 20,
        @Bran_ID = 1;

==========================================
*/

-- Drop if exists
IF OBJECT_ID('dbo.sp_Manager_AssignInstructorToBranch', 'P') IS NOT NULL
    DROP PROCEDURE dbo.sp_Manager_AssignInstructorToBranch;
GO

CREATE PROCEDURE dbo.sp_Manager_AssignInstructorToBranch
    @Inst_ID INT,
    @Bran_ID INT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        DECLARE @MaxIntakeID INT;

        -- 1️⃣ Get latest intake
        SELECT @MaxIntakeID = MAX(Intake_ID) FROM Intake;

        IF @MaxIntakeID IS NULL
        BEGIN
            RAISERROR('❌ No intake exists. Please create an intake first.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- 2️⃣ Validate Instructor exists
        IF NOT EXISTS (SELECT 1 FROM Instructor WHERE Inst_ID = @Inst_ID)
        BEGIN
            RAISERROR('❌ Instructor ID does not exist.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- 3️⃣ Validate Branch exists
        IF NOT EXISTS (SELECT 1 FROM Branch WHERE Bran_ID = @Bran_ID)
        BEGIN
            RAISERROR('❌ Branch ID does not exist.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- 4️⃣ Check for duplicate assignment
        IF EXISTS (
            SELECT 1 FROM Intake_Inst_Branch
            WHERE Intake_ID = @MaxIntakeID
              AND Inst_ID = @Inst_ID
              AND Bran_ID = @Bran_ID
        )
        BEGIN
            RAISERROR('⚠️ This instructor is already assigned to this branch in the current intake.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- 5️⃣ Insert assignment
        INSERT INTO Intake_Inst_Branch (Intake_ID, Inst_ID, Bran_ID)
        VALUES (@MaxIntakeID, @Inst_ID, @Bran_ID);

        COMMIT TRANSACTION;

        -- ✅ Return success with details
        SELECT
            i.Inst_ID,
            i.Inst_Name,
            i.Email AS Instructor_Email,
            d.Dep_Name AS Department,
            b.Bran_Name,
            b.Location AS Branch_Location,
            @MaxIntakeID AS Intake_ID,
            '✅ Instructor assigned to branch successfully' AS Message
        FROM Instructor i
        JOIN Branch b ON b.Bran_ID = @Bran_ID
        LEFT JOIN Department d ON i.Dep_ID = d.Dep_ID
        WHERE i.Inst_ID = @Inst_ID;

    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        RAISERROR(@ErrorMessage, 16, 1);
    END CATCH
END;
GO
