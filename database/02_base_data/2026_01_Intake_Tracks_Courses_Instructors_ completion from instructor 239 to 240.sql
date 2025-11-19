-- Optional: clean up any half-inserted rows first
DELETE FROM dbo.Instructor
WHERE Inst_ID BETWEEN 239 AND 250;
GO

SET IDENTITY_INSERT dbo.Instructor ON;
GO

INSERT INTO dbo.Instructor
    ([Inst_ID], [Inst_Name], [Email], [Username],
     [Date_of_Birth], [Gender], [Hire_Date],
     [Address], [Academic_Rank], [Dep_ID])
VALUES
    (239, N'Lotfy Ibrahim', N'lotfy.ibrahim@iti.gov.eg', N'lotfyibrahim239',
     '1988-01-19', N'Male', '2025-09-30', N'67 Minya Street', N'Instructor', 3),

    (240, N'Maha Nabil', N'maha.nabil@iti.gov.eg', N'mahanabil240',
     '1985-08-11', N'Female', '2025-10-25', N'12 Cairo Street', N'Lead Instructor', 3),

    (241, N'Nasser Hamed', N'nasser.hamed@iti.gov.eg', N'nasserhamed241',
     '1982-04-03', N'Male', '2025-11-10', N'45 Alexandria Street', N'Principal Instructor', 3),

    (242, N'Olfat Hassan', N'olfat.hassan@iti.gov.eg', N'olfathassan242',
     '1991-11-25', N'Female', '2025-09-20', N'78 Giza Street', N'Instructor', 3),

    (243, N'Raafat Moussa', N'raafat.moussa@iti.gov.eg', N'raafatmoussa243',
     '1987-07-17', N'Male', '2025-10-18', N'23 Mansoura Street', N'Senior Instructor', 3),

    (244, N'Samia Labib', N'samia.labib@iti.gov.eg', N'samialabib244',
     '1989-02-09', N'Female', '2025-11-24', N'56 Damanhur Street', N'Lead Instructor', 3),

    (245, N'Tariq Anwar', N'tariq.anwar@iti.gov.eg', N'tariqanwar245',
     '1984-09-01', N'Male', '2025-09-15', N'89 Tanta Street', N'Senior Instructor', 3),

    (246, N'Wafaa Zayed', N'wafaa.zayed@iti.gov.eg', N'wafaazayed246',
     '1986-04-23', N'Female', '2025-10-30', N'34 Asyut Street', N'Instructor', 3),

    (247, N'Yehia Hosny', N'yehia.hosny@iti.gov.eg', N'yehiahosny247',
     '1983-12-15', N'Male', '2025-11-20', N'67 Ismailia Street', N'Lead Instructor', 3),

    (248, N'Zeinab Atef', N'zeinab.atef@iti.gov.eg', N'zeinabatef248',
     '1990-06-07', N'Female', '2025-09-26', N'12 Port Said Street', N'Senior Instructor', 3),

    (249, N'Bassem Salah', N'bassem.salah@iti.gov.eg', N'bassemsalah249',
     '1988-10-29', N'Male', '2025-10-21', N'45 Minya Street', N'Instructor', 3),

    (250, N'Zaki Fahim', N'zaki.fahim@iti.gov.eg', N'zakifahim250',
     '1985-02-21', N'Male', '2025-11-26', N'78 Cairo Street', N'Lead Instructor', 3);
GO

SET IDENTITY_INSERT dbo.Instructor OFF;
GO
