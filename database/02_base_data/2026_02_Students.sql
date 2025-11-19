
-- ======================================================================
-- 6. Add 1000 New Students for 2026 Intake (IDs: 5001-6000)
-- Status: Active (no exams yet)
-- ======================================================================

SET IDENTITY_INSERT dbo.Student ON;
GO


-- Cairo Branch Students (250 students)
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5001, N'Nesma Mahmoud', N'nesma.mahmoud5001@student.iti.gov.eg', N'nesmamahmoud5001', N'1998-12-19', N'Female', N'25 Cairo Street', N'Arts', N'Mansoura University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5002, N'Shaimaa Medhat', N'shaimaa.medhat5002@student.iti.gov.eg', N'shaimaamedhat5002', N'2001-03-01', N'Female', N'27 Cairo Street', N'Business Administration', N'Beni-Suef University', 6, 4, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5003, N'Ghada Fawzy', N'ghada.fawzy5003@student.iti.gov.eg', N'ghadafawzy5003', N'2000-11-23', N'Female', N'26 Cairo Street', N'Commerce', N'Ain Shams University', 6, 10, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5004, N'Maha Helmy', N'maha.helmy5004@student.iti.gov.eg', N'mahahelmy5004', N'2005-02-18', N'Female', N'179 Cairo Street', N'Engineering', N'Zagazig University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5005, N'Shaimaa Sherif', N'shaimaa.sherif5005@student.iti.gov.eg', N'shaimaasherif5005', N'2001-09-07', N'Female', N'134 Cairo Street', N'Mathematics', N'Ain Shams University', 6, 2, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5006, N'Ali Amr', N'ali.amr5006@student.iti.gov.eg', N'aliamr5006', N'2005-06-07', N'Male', N'64 Cairo Street', N'Science', N'Zagazig University', 6, 10, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5007, N'Hend Sayed', N'hend.sayed5007@student.iti.gov.eg', N'hendsayed5007', N'1999-07-24', N'Female', N'183 Cairo Street', N'Commerce', N'Mansoura University', 6, 1, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5008, N'Zaki Fouad', N'zaki.fouad5008@student.iti.gov.eg', N'zakifouad5008', N'1999-04-21', N'Male', N'116 Cairo Street', N'Mathematics', N'Ain Shams University', 6, 5, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5009, N'Karim Mahmoud', N'karim.mahmoud5009@student.iti.gov.eg', N'karimmahmoud5009', N'2000-06-30', N'Male', N'189 Cairo Street', N'Commerce', N'Beni-Suef University', 6, 1, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5010, N'Engy Sherif', N'engy.sherif5010@student.iti.gov.eg', N'engysherif5010', N'1998-09-18', N'Female', N'76 Cairo Street', N'Computer Science', N'Minia University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5011, N'Rania Nader', N'rania.nader5011@student.iti.gov.eg', N'ranianader5011', N'2004-09-05', N'Female', N'77 Cairo Street', N'Computer Science', N'Tanta University', 6, 5, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5012, N'Ali Ahmed', N'ali.ahmed5012@student.iti.gov.eg', N'aliahmed5012', N'1998-05-27', N'Male', N'172 Cairo Street', N'Commerce', N'Zagazig University', 6, 5, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5013, N'Ghada Mohamed', N'ghada.mohamed5013@student.iti.gov.eg', N'ghadamohamed5013', N'2002-10-18', N'Female', N'61 Cairo Street', N'Business Administration', N'Ain Shams University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5014, N'Amal Walid', N'amal.walid5014@student.iti.gov.eg', N'amalwalid5014', N'1995-12-07', N'Female', N'177 Cairo Street', N'Business Administration', N'Alexandria University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5015, N'Sami Adel', N'sami.adel5015@student.iti.gov.eg', N'samiadel5015', N'2000-10-07', N'Male', N'144 Cairo Street', N'Science', N'Helwan University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5016, N'Yehia Adel', N'yehia.adel5016@student.iti.gov.eg', N'yehiaadel5016', N'2005-12-04', N'Male', N'194 Cairo Street', N'Commerce', N'Tanta University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5017, N'Hany Fahmy', N'hany.fahmy5017@student.iti.gov.eg', N'hanyfahmy5017', N'2002-04-02', N'Male', N'72 Cairo Street', N'Science', N'Zagazig University', 6, 5, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5018, N'Safaa Ramzy', N'safaa.ramzy5018@student.iti.gov.eg', N'safaaramzy5018', N'1997-07-26', N'Female', N'118 Cairo Street', N'Science', N'Beni-Suef University', 6, 10, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5019, N'Samy Mostafa', N'samy.mostafa5019@student.iti.gov.eg', N'samymostafa5019', N'2000-03-13', N'Male', N'192 Cairo Street', N'Mathematics', N'Tanta University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5020, N'Lamia Hassan', N'lamia.hassan5020@student.iti.gov.eg', N'lamiahassan5020', N'2002-06-15', N'Female', N'85 Cairo Street', N'Arts', N'Cairo University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5021, N'Wael Adham', N'wael.adham5021@student.iti.gov.eg', N'waeladham5021', N'2002-03-14', N'Male', N'46 Cairo Street', N'Science', N'Cairo University', 6, 13, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5022, N'Mai Naguib', N'mai.naguib5022@student.iti.gov.eg', N'mainaguib5022', N'2000-12-11', N'Female', N'184 Cairo Street', N'Arts', N'Tanta University', 6, 2, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5023, N'Dina Sayed', N'dina.sayed5023@student.iti.gov.eg', N'dinasayed5023', N'1997-08-09', N'Female', N'199 Cairo Street', N'Business Administration', N'Assiut University', 6, 1, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5024, N'Mona Medhat', N'mona.medhat5024@student.iti.gov.eg', N'monamedhat5024', N'2004-07-24', N'Female', N'135 Cairo Street', N'Information Systems', N'Suez Canal University', 6, 4, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5025, N'Ismail Saeed', N'ismail.saeed5025@student.iti.gov.eg', N'ismailsaeed5025', N'2001-09-15', N'Male', N'86 Cairo Street', N'Commerce', N'Mansoura University', 6, 5, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5026, N'Amal Ibrahim', N'amal.ibrahim5026@student.iti.gov.eg', N'amalibrahim5026', N'2004-12-31', N'Female', N'27 Cairo Street', N'Information Systems', N'Mansoura University', 6, 4, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5027, N'Samia Hatem', N'samia.hatem5027@student.iti.gov.eg', N'samiahatem5027', N'1995-09-15', N'Female', N'109 Cairo Street', N'Commerce', N'Helwan University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5028, N'Adel Fekry', N'adel.fekry5028@student.iti.gov.eg', N'adelfekry5028', N'2003-06-05', N'Male', N'62 Cairo Street', N'Arts', N'Cairo University', 6, 1, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5029, N'Waleed Samir', N'waleed.samir5029@student.iti.gov.eg', N'waleedsamir5029', N'1995-11-08', N'Male', N'11 Cairo Street', N'Engineering', N'Zagazig University', 6, 1, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5030, N'Karima Fawzy', N'karima.fawzy5030@student.iti.gov.eg', N'karimafawzy5030', N'1995-04-14', N'Female', N'181 Cairo Street', N'Arts', N'Beni-Suef University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5031, N'Hossam Ghoneim', N'hossam.ghoneim5031@student.iti.gov.eg', N'hossamghoneim5031', N'1998-11-16', N'Male', N'163 Cairo Street', N'Computer Science', N'Suez Canal University', 6, 4, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5032, N'Naglaa Selim', N'naglaa.selim5032@student.iti.gov.eg', N'naglaaselim5032', N'2003-04-20', N'Female', N'20 Cairo Street', N'Information Systems', N'Assiut University', 6, 5, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5033, N'Ayman Ibrahim', N'ayman.ibrahim5033@student.iti.gov.eg', N'aymanibrahim5033', N'1999-05-01', N'Male', N'184 Cairo Street', N'Mathematics', N'Beni-Suef University', 6, 13, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5034, N'Ahmed Salah', N'ahmed.salah5034@student.iti.gov.eg', N'ahmedsalah5034', N'2005-05-01', N'Male', N'60 Cairo Street', N'Commerce', N'Ain Shams University', 6, 2, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5035, N'Zeinab Taha', N'zeinab.taha5035@student.iti.gov.eg', N'zeinabtaha5035', N'1996-04-30', N'Female', N'79 Cairo Street', N'Science', N'Cairo University', 6, 10, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5036, N'Injy Waleed', N'injy.waleed5036@student.iti.gov.eg', N'injywaleed5036', N'2005-11-16', N'Female', N'45 Cairo Street', N'Science', N'Alexandria University', 6, 2, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5037, N'Amal Wagdy', N'amal.wagdy5037@student.iti.gov.eg', N'amalwagdy5037', N'2000-01-19', N'Female', N'122 Cairo Street', N'Engineering', N'Cairo University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5038, N'Samia Amgad', N'samia.amgad5038@student.iti.gov.eg', N'samiaamgad5038', N'2003-01-21', N'Female', N'161 Cairo Street', N'Science', N'Suez Canal University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5039, N'Soha Helmy', N'soha.helmy5039@student.iti.gov.eg', N'sohahelmy5039', N'2001-09-19', N'Female', N'66 Cairo Street', N'Arts', N'Mansoura University', 6, 2, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5040, N'Mariam Adly', N'mariam.adly5040@student.iti.gov.eg', N'mariamadly5040', N'1998-10-08', N'Female', N'185 Cairo Street', N'Commerce', N'Ain Shams University', 6, 13, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5041, N'Magdy Soliman', N'magdy.soliman5041@student.iti.gov.eg', N'magdysoliman5041', N'1999-06-21', N'Male', N'53 Cairo Street', N'Mathematics', N'Cairo University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5042, N'Mariam Zayed', N'mariam.zayed5042@student.iti.gov.eg', N'mariamzayed5042', N'2000-11-19', N'Female', N'26 Cairo Street', N'Engineering', N'Alexandria University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5043, N'Sara Essam', N'sara.essam5043@student.iti.gov.eg', N'saraessam5043', N'2003-08-10', N'Female', N'197 Cairo Street', N'Mathematics', N'Beni-Suef University', 6, 5, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5044, N'Mohamed Ali', N'mohamed.ali5044@student.iti.gov.eg', N'mohamedali5044', N'1996-12-29', N'Male', N'40 Cairo Street', N'Commerce', N'Ain Shams University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5045, N'Wael Naguib', N'wael.naguib5045@student.iti.gov.eg', N'waelnaguib5045', N'1995-10-19', N'Male', N'139 Cairo Street', N'Business Administration', N'Zagazig University', 6, 4, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5046, N'Magdy Adham', N'magdy.adham5046@student.iti.gov.eg', N'magdyadham5046', N'2002-08-26', N'Male', N'53 Cairo Street', N'Arts', N'Alexandria University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5047, N'Sami Ragab', N'sami.ragab5047@student.iti.gov.eg', N'samiragab5047', N'2003-08-16', N'Male', N'185 Cairo Street', N'Arts', N'Ain Shams University', 6, 1, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5048, N'Adel Magdy', N'adel.magdy5048@student.iti.gov.eg', N'adelmagdy5048', N'2004-06-23', N'Male', N'11 Cairo Street', N'Arts', N'Beni-Suef University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5049, N'Youssef Amgad', N'youssef.amgad5049@student.iti.gov.eg', N'youssefamgad5049', N'1996-08-03', N'Male', N'49 Cairo Street', N'Commerce', N'Ain Shams University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5050, N'Fatma Morsy', N'fatma.morsy5050@student.iti.gov.eg', N'fatmamorsy5050', N'1996-08-24', N'Female', N'90 Cairo Street', N'Arts', N'Ain Shams University', 6, 13, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5051, N'Nasser Fahim', N'nasser.fahim5051@student.iti.gov.eg', N'nasserfahim5051', N'2000-11-08', N'Male', N'86 Cairo Street', N'Mathematics', N'Ain Shams University', 6, 4, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5052, N'Hossam Fady', N'hossam.fady5052@student.iti.gov.eg', N'hossamfady5052', N'2002-12-12', N'Male', N'98 Cairo Street', N'Computer Science', N'Cairo University', 6, 1, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5053, N'Hazem Maged', N'hazem.maged5053@student.iti.gov.eg', N'hazemmaged5053', N'1998-05-12', N'Male', N'112 Cairo Street', N'Engineering', N'Beni-Suef University', 6, 4, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5054, N'Dina Samir', N'dina.samir5054@student.iti.gov.eg', N'dinasamir5054', N'2002-03-08', N'Female', N'145 Cairo Street', N'Mathematics', N'Cairo University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5055, N'Wafaa Fahim', N'wafaa.fahim5055@student.iti.gov.eg', N'wafaafahim5055', N'2002-04-12', N'Female', N'130 Cairo Street', N'Mathematics', N'Helwan University', 6, 13, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5056, N'Mahmoud Ashraf', N'mahmoud.ashraf5056@student.iti.gov.eg', N'mahmoudashraf5056', N'1998-09-16', N'Male', N'14 Cairo Street', N'Computer Science', N'Tanta University', 6, 2, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5057, N'Tariq Samir', N'tariq.samir5057@student.iti.gov.eg', N'tariqsamir5057', N'2000-10-21', N'Male', N'127 Cairo Street', N'Commerce', N'Tanta University', 6, 2, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5058, N'Rania Fahmy', N'rania.fahmy5058@student.iti.gov.eg', N'raniafahmy5058', N'2004-07-15', N'Female', N'177 Cairo Street', N'Science', N'Alexandria University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5059, N'Nada Selim', N'nada.selim5059@student.iti.gov.eg', N'nadaselim5059', N'2004-06-15', N'Female', N'83 Cairo Street', N'Mathematics', N'Cairo University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5060, N'Ayman Essam', N'ayman.essam5060@student.iti.gov.eg', N'aymanessam5060', N'2000-04-14', N'Male', N'39 Cairo Street', N'Information Systems', N'Ain Shams University', 6, 4, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5061, N'Eman Tarek', N'eman.tarek5061@student.iti.gov.eg', N'emantarek5061', N'1997-02-03', N'Female', N'15 Cairo Street', N'Arts', N'Zagazig University', 6, 4, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5062, N'Khaled Reda', N'khaled.reda5062@student.iti.gov.eg', N'khaledreda5062', N'2000-04-26', N'Male', N'138 Cairo Street', N'Computer Science', N'Alexandria University', 6, 4, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5063, N'Fady Mohamed', N'fady.mohamed5063@student.iti.gov.eg', N'fadymohamed5063', N'2000-06-14', N'Male', N'125 Cairo Street', N'Engineering', N'Helwan University', 6, 4, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5064, N'Zaki Helmy', N'zaki.helmy5064@student.iti.gov.eg', N'zakihelmy5064', N'2005-10-05', N'Male', N'148 Cairo Street', N'Commerce', N'Tanta University', 6, 1, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5065, N'Nadia Bassem', N'nadia.bassem5065@student.iti.gov.eg', N'nadiabassem5065', N'2000-06-21', N'Female', N'190 Cairo Street', N'Information Systems', N'Helwan University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5066, N'Soha Khaled', N'soha.khaled5066@student.iti.gov.eg', N'sohakhaled5066', N'1997-10-14', N'Female', N'155 Cairo Street', N'Business Administration', N'Helwan University', 6, 5, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5067, N'Dina Samy', N'dina.samy5067@student.iti.gov.eg', N'dinasamy5067', N'2001-01-31', N'Female', N'34 Cairo Street', N'Mathematics', N'Beni-Suef University', 6, 4, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5068, N'Ghada Gamal', N'ghada.gamal5068@student.iti.gov.eg', N'ghadagamal5068', N'1998-04-25', N'Female', N'164 Cairo Street', N'Science', N'Helwan University', 6, 1, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5069, N'Hazem Mansour', N'hazem.mansour5069@student.iti.gov.eg', N'hazemmansour5069', N'2000-04-13', N'Male', N'120 Cairo Street', N'Arts', N'Beni-Suef University', 6, 5, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5070, N'Mahmoud Hassan', N'mahmoud.hassan5070@student.iti.gov.eg', N'mahmoudhassan5070', N'1996-08-08', N'Male', N'19 Cairo Street', N'Engineering', N'Minia University', 6, 2, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5071, N'Adel Lotfy', N'adel.lotfy5071@student.iti.gov.eg', N'adellotfy5071', N'2005-09-10', N'Male', N'74 Cairo Street', N'Science', N'Mansoura University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5072, N'Essam Kamal', N'essam.kamal5072@student.iti.gov.eg', N'essamkamal5072', N'2002-12-04', N'Male', N'89 Cairo Street', N'Business Administration', N'Ain Shams University', 6, 4, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5073, N'Alaa Yasser', N'alaa.yasser5073@student.iti.gov.eg', N'alaayasser5073', N'1995-12-04', N'Male', N'174 Cairo Street', N'Science', N'Zagazig University', 6, 13, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5074, N'Sara Maged', N'sara.maged5074@student.iti.gov.eg', N'saramaged5074', N'2003-03-31', N'Female', N'21 Cairo Street', N'Engineering', N'Beni-Suef University', 6, 2, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5075, N'Mostafa Osama', N'mostafa.osama5075@student.iti.gov.eg', N'mostafaosama5075', N'2003-09-06', N'Male', N'45 Cairo Street', N'Computer Science', N'Alexandria University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5076, N'Safaa Nabil', N'safaa.nabil5076@student.iti.gov.eg', N'safaanabil5076', N'1998-03-17', N'Female', N'153 Cairo Street', N'Engineering', N'Minia University', 6, 10, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5077, N'Mariam Hamdi', N'mariam.hamdi5077@student.iti.gov.eg', N'mariamhamdi5077', N'1995-10-07', N'Female', N'155 Cairo Street', N'Information Systems', N'Mansoura University', 6, 4, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5078, N'Tariq Hassan', N'tariq.hassan5078@student.iti.gov.eg', N'tariqhassan5078', N'1995-08-03', N'Male', N'192 Cairo Street', N'Engineering', N'Alexandria University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5079, N'Salma Nour', N'salma.nour5079@student.iti.gov.eg', N'salmanour5079', N'1995-04-02', N'Female', N'147 Cairo Street', N'Science', N'Assiut University', 6, 10, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5080, N'Dalia Ragab', N'dalia.ragab5080@student.iti.gov.eg', N'daliaragab5080', N'1999-01-25', N'Female', N'114 Cairo Street', N'Science', N'Ain Shams University', 6, 1, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5081, N'Amr Selim', N'amr.selim5081@student.iti.gov.eg', N'amrselim5081', N'1997-11-28', N'Male', N'94 Cairo Street', N'Information Systems', N'Alexandria University', 6, 1, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5082, N'Heba Sobhy', N'heba.sobhy5082@student.iti.gov.eg', N'hebasobhy5082', N'1997-01-18', N'Female', N'15 Cairo Street', N'Mathematics', N'Suez Canal University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5083, N'Gamal Hossam', N'gamal.hossam5083@student.iti.gov.eg', N'gamalhossam5083', N'2001-10-21', N'Male', N'88 Cairo Street', N'Business Administration', N'Beni-Suef University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5084, N'Ghada Anwar', N'ghada.anwar5084@student.iti.gov.eg', N'ghadaanwar5084', N'2001-11-06', N'Female', N'118 Cairo Street', N'Information Systems', N'Cairo University', 6, 1, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5085, N'Ali Ibrahim', N'ali.ibrahim5085@student.iti.gov.eg', N'aliibrahim5085', N'1999-01-25', N'Male', N'42 Cairo Street', N'Business Administration', N'Suez Canal University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5086, N'Hazem Samy', N'hazem.samy5086@student.iti.gov.eg', N'hazemsamy5086', N'2005-11-18', N'Male', N'192 Cairo Street', N'Engineering', N'Ain Shams University', 6, 10, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5087, N'Soha Nasr', N'soha.nasr5087@student.iti.gov.eg', N'sohanasr5087', N'1997-08-07', N'Female', N'34 Cairo Street', N'Information Systems', N'Alexandria University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5088, N'Naglaa Medhat', N'naglaa.medhat5088@student.iti.gov.eg', N'naglaamedhat5088', N'1999-12-31', N'Female', N'89 Cairo Street', N'Business Administration', N'Mansoura University', 6, 1, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5089, N'Safaa Adham', N'safaa.adham5089@student.iti.gov.eg', N'safaaadham5089', N'2000-02-29', N'Female', N'144 Cairo Street', N'Science', N'Minia University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5090, N'Rania Saeed', N'rania.saeed5090@student.iti.gov.eg', N'raniasaeed5090', N'1997-11-12', N'Female', N'10 Cairo Street', N'Mathematics', N'Assiut University', 6, 13, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5091, N'Karima Ibrahim', N'karima.ibrahim5091@student.iti.gov.eg', N'karimaibrahim5091', N'1996-09-08', N'Female', N'76 Cairo Street', N'Commerce', N'Ain Shams University', 6, 13, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5092, N'Noha Zaki', N'noha.zaki5092@student.iti.gov.eg', N'nohazaki5092', N'2003-09-18', N'Female', N'51 Cairo Street', N'Science', N'Cairo University', 6, 4, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5093, N'Hamdy Ibrahim', N'hamdy.ibrahim5093@student.iti.gov.eg', N'hamdyibrahim5093', N'1998-06-02', N'Male', N'188 Cairo Street', N'Engineering', N'Zagazig University', 6, 10, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5094, N'Heba Magdy', N'heba.magdy5094@student.iti.gov.eg', N'hebamagdy5094', N'2005-01-15', N'Female', N'141 Cairo Street', N'Business Administration', N'Beni-Suef University', 6, 4, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5095, N'Rania Bassem', N'rania.bassem5095@student.iti.gov.eg', N'raniabassem5095', N'2002-05-31', N'Female', N'26 Cairo Street', N'Arts', N'Mansoura University', 6, 4, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5096, N'Manal Selim', N'manal.selim5096@student.iti.gov.eg', N'manalselim5096', N'2005-06-24', N'Female', N'31 Cairo Street', N'Computer Science', N'Helwan University', 6, 5, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5097, N'Zaki Mahmoud', N'zaki.mahmoud5097@student.iti.gov.eg', N'zakimahmoud5097', N'1998-06-30', N'Male', N'89 Cairo Street', N'Arts', N'Minia University', 6, 13, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5098, N'Essam Magdy', N'essam.magdy5098@student.iti.gov.eg', N'essammagdy5098', N'2004-06-27', N'Male', N'162 Cairo Street', N'Arts', N'Suez Canal University', 6, 5, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5099, N'Faten Ramadan', N'faten.ramadan5099@student.iti.gov.eg', N'fatenramadan5099', N'2003-12-05', N'Female', N'33 Cairo Street', N'Commerce', N'Cairo University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5100, N'Mai Mansour', N'mai.mansour5100@student.iti.gov.eg', N'maimansour5100', N'1997-08-15', N'Female', N'65 Cairo Street', N'Mathematics', N'Assiut University', 6, 12, 1, N'Active');
GO

INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5101, N'Shaimaa Fouad', N'shaimaa.fouad5101@student.iti.gov.eg', N'shaimaafouad5101', N'2005-08-07', N'Female', N'104 Cairo Street', N'Commerce', N'Assiut University', 6, 4, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5102, N'Raafat Hassan', N'raafat.hassan5102@student.iti.gov.eg', N'raafathassan5102', N'1998-10-11', N'Male', N'130 Cairo Street', N'Business Administration', N'Zagazig University', 6, 2, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5103, N'Karim Walid', N'karim.walid5103@student.iti.gov.eg', N'karimwalid5103', N'2001-12-30', N'Male', N'93 Cairo Street', N'Information Systems', N'Tanta University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5104, N'Dalia Magdy', N'dalia.magdy5104@student.iti.gov.eg', N'daliamagdy5104', N'2002-03-05', N'Female', N'159 Cairo Street', N'Business Administration', N'Alexandria University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5105, N'Rania Hosny', N'rania.hosny5105@student.iti.gov.eg', N'raniahosny5105', N'2003-05-10', N'Female', N'99 Cairo Street', N'Science', N'Zagazig University', 6, 2, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5106, N'Salma Waleed', N'salma.waleed5106@student.iti.gov.eg', N'salmawaleed5106', N'1996-07-28', N'Female', N'95 Cairo Street', N'Commerce', N'Tanta University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5107, N'Khaled Zaki', N'khaled.zaki5107@student.iti.gov.eg', N'khaledzaki5107', N'2001-12-11', N'Male', N'41 Cairo Street', N'Science', N'Helwan University', 6, 4, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5108, N'Yehia Shalaby', N'yehia.shalaby5108@student.iti.gov.eg', N'yehiashalaby5108', N'1997-03-15', N'Male', N'177 Cairo Street', N'Mathematics', N'Alexandria University', 6, 10, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5109, N'Naglaa Refaat', N'naglaa.refaat5109@student.iti.gov.eg', N'naglaarefaat5109', N'2003-07-27', N'Female', N'131 Cairo Street', N'Computer Science', N'Mansoura University', 6, 1, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5110, N'Hossam Bassem', N'hossam.bassem5110@student.iti.gov.eg', N'hossambassem5110', N'2001-09-04', N'Male', N'145 Cairo Street', N'Engineering', N'Ain Shams University', 6, 10, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5111, N'Manal Zaki', N'manal.zaki5111@student.iti.gov.eg', N'manalzaki5111', N'2002-04-03', N'Female', N'106 Cairo Street', N'Engineering', N'Assiut University', 6, 13, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5112, N'Waleed Ramadan', N'waleed.ramadan5112@student.iti.gov.eg', N'waleedramadan5112', N'1999-03-03', N'Male', N'21 Cairo Street', N'Computer Science', N'Alexandria University', 6, 10, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5113, N'Mervat Ahmed', N'mervat.ahmed5113@student.iti.gov.eg', N'mervatahmed5113', N'1998-04-05', N'Female', N'157 Cairo Street', N'Arts', N'Alexandria University', 6, 4, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5114, N'Ehab Hassan', N'ehab.hassan5114@student.iti.gov.eg', N'ehabhassan5114', N'2004-05-29', N'Male', N'196 Cairo Street', N'Business Administration', N'Alexandria University', 6, 1, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5115, N'Manal Hossam', N'manal.hossam5115@student.iti.gov.eg', N'manalhossam5115', N'2002-01-11', N'Female', N'109 Cairo Street', N'Commerce', N'Assiut University', 6, 2, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5116, N'Alaa Kamal', N'alaa.kamal5116@student.iti.gov.eg', N'alaakamal5116', N'1998-10-24', N'Male', N'168 Cairo Street', N'Commerce', N'Assiut University', 6, 2, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5117, N'Noha Waleed', N'noha.waleed5117@student.iti.gov.eg', N'nohawaleed5117', N'2001-05-29', N'Female', N'76 Cairo Street', N'Arts', N'Cairo University', 6, 1, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5118, N'Mariam Yousry', N'mariam.yousry5118@student.iti.gov.eg', N'mariamyousry5118', N'2003-09-01', N'Female', N'196 Cairo Street', N'Information Systems', N'Minia University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5119, N'Heba Hamed', N'heba.hamed5119@student.iti.gov.eg', N'hebahamed5119', N'2004-12-19', N'Female', N'139 Cairo Street', N'Mathematics', N'Tanta University', 6, 5, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5120, N'Samia Reda', N'samia.reda5120@student.iti.gov.eg', N'samiareda5120', N'1996-04-16', N'Female', N'45 Cairo Street', N'Computer Science', N'Alexandria University', 6, 5, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5121, N'Wafaa Sherif', N'wafaa.sherif5121@student.iti.gov.eg', N'wafaasherif5121', N'2001-03-16', N'Female', N'37 Cairo Street', N'Commerce', N'Helwan University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5122, N'Ehab Hassan', N'ehab.hassan5122@student.iti.gov.eg', N'ehabhassan5122', N'2005-04-22', N'Male', N'93 Cairo Street', N'Mathematics', N'Helwan University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5123, N'Alaa Saad', N'alaa.saad5123@student.iti.gov.eg', N'alaasaad5123', N'2002-09-23', N'Male', N'153 Cairo Street', N'Business Administration', N'Tanta University', 6, 5, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5124, N'Dina Sherif', N'dina.sherif5124@student.iti.gov.eg', N'dinasherif5124', N'2004-11-29', N'Female', N'107 Cairo Street', N'Science', N'Ain Shams University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5125, N'Sami Anwar', N'sami.anwar5125@student.iti.gov.eg', N'samianwar5125', N'2002-02-03', N'Male', N'47 Cairo Street', N'Science', N'Beni-Suef University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5126, N'Naglaa Labib', N'naglaa.labib5126@student.iti.gov.eg', N'naglaalabib5126', N'2002-12-30', N'Female', N'111 Cairo Street', N'Commerce', N'Assiut University', 6, 1, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5127, N'Youssef Magdy', N'youssef.magdy5127@student.iti.gov.eg', N'youssefmagdy5127', N'1995-09-14', N'Male', N'194 Cairo Street', N'Mathematics', N'Tanta University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5128, N'Waleed Sami', N'waleed.sami5128@student.iti.gov.eg', N'waleedsami5128', N'2004-12-20', N'Male', N'45 Cairo Street', N'Mathematics', N'Assiut University', 6, 10, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5129, N'Mariam Nader', N'mariam.nader5129@student.iti.gov.eg', N'mariamnader5129', N'1996-09-29', N'Female', N'17 Cairo Street', N'Arts', N'Suez Canal University', 6, 1, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5130, N'Safaa Essam', N'safaa.essam5130@student.iti.gov.eg', N'safaaessam5130', N'2001-11-13', N'Female', N'8 Cairo Street', N'Science', N'Minia University', 6, 1, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5131, N'Sherif Taher', N'sherif.taher5131@student.iti.gov.eg', N'sheriftaher5131', N'2000-10-10', N'Male', N'118 Cairo Street', N'Business Administration', N'Alexandria University', 6, 4, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5132, N'Mervat Zaki', N'mervat.zaki5132@student.iti.gov.eg', N'mervatzaki5132', N'2000-06-01', N'Female', N'157 Cairo Street', N'Engineering', N'Cairo University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5133, N'Seif Youssef', N'seif.youssef5133@student.iti.gov.eg', N'seifyoussef5133', N'2000-03-18', N'Male', N'102 Cairo Street', N'Arts', N'Ain Shams University', 6, 10, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5134, N'Rana Nasr', N'rana.nasr5134@student.iti.gov.eg', N'rananasr5134', N'1997-03-20', N'Female', N'133 Cairo Street', N'Science', N'Helwan University', 6, 2, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5135, N'Waleed Saad', N'waleed.saad5135@student.iti.gov.eg', N'waleedsaad5135', N'2004-02-05', N'Male', N'88 Cairo Street', N'Information Systems', N'Helwan University', 6, 13, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5136, N'Karim Ibrahim', N'karim.ibrahim5136@student.iti.gov.eg', N'karimibrahim5136', N'1995-01-02', N'Male', N'85 Cairo Street', N'Information Systems', N'Tanta University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5137, N'Samar Selim', N'samar.selim5137@student.iti.gov.eg', N'samarselim5137', N'2000-11-11', N'Female', N'71 Cairo Street', N'Business Administration', N'Minia University', 6, 4, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5138, N'Mohamed Mahmoud', N'mohamed.mahmoud5138@student.iti.gov.eg', N'mohamedmahmoud5138', N'1999-02-28', N'Male', N'150 Cairo Street', N'Mathematics', N'Helwan University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5139, N'Rana Refaat', N'rana.refaat5139@student.iti.gov.eg', N'ranarefaat5139', N'1999-07-21', N'Female', N'176 Cairo Street', N'Engineering', N'Alexandria University', 6, 10, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5140, N'Zaki Fekry', N'zaki.fekry5140@student.iti.gov.eg', N'zakifekry5140', N'2001-09-24', N'Male', N'100 Cairo Street', N'Information Systems', N'Beni-Suef University', 6, 4, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5141, N'Raafat Mahmoud', N'raafat.mahmoud5141@student.iti.gov.eg', N'raafatmahmoud5141', N'2003-12-04', N'Male', N'173 Cairo Street', N'Business Administration', N'Zagazig University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5142, N'Naglaa Ragab', N'naglaa.ragab5142@student.iti.gov.eg', N'naglaaragab5142', N'2004-01-24', N'Female', N'21 Cairo Street', N'Arts', N'Helwan University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5143, N'Nabil Zaki', N'nabil.zaki5143@student.iti.gov.eg', N'nabilzaki5143', N'2004-05-08', N'Male', N'162 Cairo Street', N'Computer Science', N'Minia University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5144, N'Hassan Atef', N'hassan.atef5144@student.iti.gov.eg', N'hassanatef5144', N'1995-05-17', N'Male', N'82 Cairo Street', N'Information Systems', N'Suez Canal University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5145, N'Fatma Youssef', N'fatma.youssef5145@student.iti.gov.eg', N'fatmayoussef5145', N'2003-03-21', N'Female', N'172 Cairo Street', N'Business Administration', N'Tanta University', 6, 13, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5146, N'Hanaa Maged', N'hanaa.maged5146@student.iti.gov.eg', N'hanaamaged5146', N'1996-03-09', N'Female', N'87 Cairo Street', N'Computer Science', N'Alexandria University', 6, 4, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5147, N'Gamal Walid', N'gamal.walid5147@student.iti.gov.eg', N'gamalwalid5147', N'1999-07-03', N'Male', N'114 Cairo Street', N'Business Administration', N'Helwan University', 6, 2, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5148, N'Zeinab Anwar', N'zeinab.anwar5148@student.iti.gov.eg', N'zeinabanwar5148', N'2000-01-19', N'Female', N'45 Cairo Street', N'Mathematics', N'Mansoura University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5149, N'Engy Maher', N'engy.maher5149@student.iti.gov.eg', N'engymaher5149', N'2004-01-27', N'Female', N'51 Cairo Street', N'Business Administration', N'Mansoura University', 6, 13, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5150, N'Ghada Adel', N'ghada.adel5150@student.iti.gov.eg', N'ghadaadel5150', N'1999-09-07', N'Female', N'104 Cairo Street', N'Mathematics', N'Alexandria University', 6, 10, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5151, N'Rania Badr', N'rania.badr5151@student.iti.gov.eg', N'raniabadr5151', N'2000-02-27', N'Female', N'81 Cairo Street', N'Business Administration', N'Helwan University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5152, N'Nada Mostafa', N'nada.mostafa5152@student.iti.gov.eg', N'nadamostafa5152', N'2005-02-21', N'Female', N'114 Cairo Street', N'Computer Science', N'Suez Canal University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5153, N'Wael Gamal', N'wael.gamal5153@student.iti.gov.eg', N'waelgamal5153', N'2002-01-05', N'Male', N'8 Cairo Street', N'Business Administration', N'Assiut University', 6, 5, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5154, N'Nasser Soliman', N'nasser.soliman5154@student.iti.gov.eg', N'nassersoliman5154', N'2005-02-08', N'Male', N'174 Cairo Street', N'Mathematics', N'Ain Shams University', 6, 2, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5155, N'Amr Lotfy', N'amr.lotfy5155@student.iti.gov.eg', N'amrlotfy5155', N'2002-02-20', N'Male', N'134 Cairo Street', N'Business Administration', N'Minia University', 6, 10, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5156, N'Bassem Bassem', N'bassem.bassem5156@student.iti.gov.eg', N'bassembassem5156', N'2003-10-25', N'Male', N'112 Cairo Street', N'Mathematics', N'Tanta University', 6, 4, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5157, N'Hoda Naguib', N'hoda.naguib5157@student.iti.gov.eg', N'hodanaguib5157', N'1995-04-10', N'Female', N'60 Cairo Street', N'Computer Science', N'Tanta University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5158, N'Hala Selim', N'hala.selim5158@student.iti.gov.eg', N'halaselim5158', N'2004-07-03', N'Female', N'128 Cairo Street', N'Mathematics', N'Cairo University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5159, N'Karima Sayed', N'karima.sayed5159@student.iti.gov.eg', N'karimasayed5159', N'2005-07-28', N'Female', N'66 Cairo Street', N'Arts', N'Ain Shams University', 6, 1, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5160, N'Hanaa Adham', N'hanaa.adham5160@student.iti.gov.eg', N'hanaaadham5160', N'1997-03-12', N'Female', N'76 Cairo Street', N'Computer Science', N'Beni-Suef University', 6, 5, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5161, N'Sami Amr', N'sami.amr5161@student.iti.gov.eg', N'samiamr5161', N'2001-10-20', N'Male', N'12 Cairo Street', N'Mathematics', N'Assiut University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5162, N'Hend Shalaby', N'hend.shalaby5162@student.iti.gov.eg', N'hendshalaby5162', N'2003-09-10', N'Female', N'91 Cairo Street', N'Engineering', N'Assiut University', 6, 1, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5163, N'Khaled Samir', N'khaled.samir5163@student.iti.gov.eg', N'khaledsamir5163', N'2002-02-10', N'Male', N'96 Cairo Street', N'Science', N'Assiut University', 6, 13, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5164, N'Ibrahim Saeed', N'ibrahim.saeed5164@student.iti.gov.eg', N'ibrahimsaeed5164', N'2000-10-29', N'Male', N'127 Cairo Street', N'Science', N'Alexandria University', 6, 1, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5165, N'Bassem Badr', N'bassem.badr5165@student.iti.gov.eg', N'bassembadr5165', N'1995-04-23', N'Male', N'29 Cairo Street', N'Science', N'Cairo University', 6, 4, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5166, N'Hamdy Khaled', N'hamdy.khaled5166@student.iti.gov.eg', N'hamdykhaled5166', N'1997-09-20', N'Male', N'171 Cairo Street', N'Computer Science', N'Assiut University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5167, N'Lamia Mohamed', N'lamia.mohamed5167@student.iti.gov.eg', N'lamiamohamed5167', N'1998-08-31', N'Female', N'64 Cairo Street', N'Information Systems', N'Beni-Suef University', 6, 13, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5168, N'Hany Ramy', N'hany.ramy5168@student.iti.gov.eg', N'hanyramy5168', N'1998-10-05', N'Male', N'59 Cairo Street', N'Science', N'Assiut University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5169, N'Soha Fady', N'soha.fady5169@student.iti.gov.eg', N'sohafady5169', N'1999-11-10', N'Female', N'12 Cairo Street', N'Mathematics', N'Suez Canal University', 6, 13, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5170, N'Karim Fekry', N'karim.fekry5170@student.iti.gov.eg', N'karimfekry5170', N'2004-03-05', N'Male', N'154 Cairo Street', N'Business Administration', N'Minia University', 6, 1, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5171, N'Mervat Fekry', N'mervat.fekry5171@student.iti.gov.eg', N'mervatfekry5171', N'1998-04-30', N'Female', N'80 Cairo Street', N'Science', N'Tanta University', 6, 10, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5172, N'Yehia Wagdy', N'yehia.wagdy5172@student.iti.gov.eg', N'yehiawagdy5172', N'1997-01-08', N'Male', N'72 Cairo Street', N'Computer Science', N'Alexandria University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5173, N'Reem Ragab', N'reem.ragab5173@student.iti.gov.eg', N'reemragab5173', N'2003-11-07', N'Female', N'140 Cairo Street', N'Commerce', N'Minia University', 6, 4, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5174, N'Mostafa Fawzy', N'mostafa.fawzy5174@student.iti.gov.eg', N'mostafafawzy5174', N'1997-06-27', N'Male', N'72 Cairo Street', N'Commerce', N'Helwan University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5175, N'Waleed Adham', N'waleed.adham5175@student.iti.gov.eg', N'waleedadham5175', N'2001-08-01', N'Male', N'110 Cairo Street', N'Computer Science', N'Mansoura University', 6, 13, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5176, N'Wael Yousry', N'wael.yousry5176@student.iti.gov.eg', N'waelyousry5176', N'1996-10-21', N'Male', N'174 Cairo Street', N'Business Administration', N'Suez Canal University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5177, N'Samy Samy', N'samy.samy5177@student.iti.gov.eg', N'samysamy5177', N'1998-06-14', N'Male', N'49 Cairo Street', N'Engineering', N'Ain Shams University', 6, 2, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5178, N'Neveen Anwar', N'neveen.anwar5178@student.iti.gov.eg', N'neveenanwar5178', N'1998-06-07', N'Female', N'141 Cairo Street', N'Engineering', N'Mansoura University', 6, 4, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5179, N'Hend Samir', N'hend.samir5179@student.iti.gov.eg', N'hendsamir5179', N'1995-07-23', N'Female', N'31 Cairo Street', N'Engineering', N'Cairo University', 6, 4, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5180, N'Karima Walid', N'karima.walid5180@student.iti.gov.eg', N'karimawalid5180', N'2005-02-04', N'Female', N'19 Cairo Street', N'Mathematics', N'Minia University', 6, 5, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5181, N'Bassem Sherif', N'bassem.sherif5181@student.iti.gov.eg', N'bassemsherif5181', N'1995-05-23', N'Male', N'89 Cairo Street', N'Engineering', N'Zagazig University', 6, 5, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5182, N'Ghada Ibrahim', N'ghada.ibrahim5182@student.iti.gov.eg', N'ghadaibrahim5182', N'2002-10-21', N'Female', N'107 Cairo Street', N'Commerce', N'Ain Shams University', 6, 1, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5183, N'Laila Kamal', N'laila.kamal5183@student.iti.gov.eg', N'lailakamal5183', N'2000-09-22', N'Female', N'16 Cairo Street', N'Commerce', N'Alexandria University', 6, 2, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5184, N'Soha Walid', N'soha.walid5184@student.iti.gov.eg', N'sohawalid5184', N'1995-05-28', N'Female', N'115 Cairo Street', N'Commerce', N'Helwan University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5185, N'Amal Refaat', N'amal.refaat5185@student.iti.gov.eg', N'amalrefaat5185', N'2005-02-20', N'Female', N'123 Cairo Street', N'Mathematics', N'Assiut University', 6, 1, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5186, N'Noha Ramadan', N'noha.ramadan5186@student.iti.gov.eg', N'noharamadan5186', N'2003-03-26', N'Female', N'140 Cairo Street', N'Business Administration', N'Cairo University', 6, 4, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5187, N'Azza Hossam', N'azza.hossam5187@student.iti.gov.eg', N'azzahossam5187', N'2004-02-19', N'Female', N'154 Cairo Street', N'Commerce', N'Assiut University', 6, 2, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5188, N'Samia Adly', N'samia.adly5188@student.iti.gov.eg', N'samiaadly5188', N'1998-05-14', N'Female', N'132 Cairo Street', N'Engineering', N'Suez Canal University', 6, 2, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5189, N'Wafaa Ashraf', N'wafaa.ashraf5189@student.iti.gov.eg', N'wafaaashraf5189', N'2001-08-24', N'Female', N'42 Cairo Street', N'Computer Science', N'Tanta University', 6, 13, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5190, N'Ahmed Hani', N'ahmed.hani5190@student.iti.gov.eg', N'ahmedhani5190', N'2005-11-30', N'Male', N'178 Cairo Street', N'Commerce', N'Cairo University', 6, 10, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5191, N'Ahmed Bassem', N'ahmed.bassem5191@student.iti.gov.eg', N'ahmedbassem5191', N'1998-03-04', N'Male', N'91 Cairo Street', N'Commerce', N'Minia University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5192, N'Wael Essam', N'wael.essam5192@student.iti.gov.eg', N'waelessam5192', N'2002-10-26', N'Male', N'177 Cairo Street', N'Business Administration', N'Minia University', 6, 2, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5193, N'Ali Tamer', N'ali.tamer5193@student.iti.gov.eg', N'alitamer5193', N'2001-12-29', N'Male', N'120 Cairo Street', N'Information Systems', N'Minia University', 6, 5, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5194, N'Azza Fahmy', N'azza.fahmy5194@student.iti.gov.eg', N'azzafahmy5194', N'1997-09-19', N'Female', N'6 Cairo Street', N'Commerce', N'Minia University', 6, 4, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5195, N'Alaa Mohamed', N'alaa.mohamed5195@student.iti.gov.eg', N'alaamohamed5195', N'1999-09-03', N'Male', N'67 Cairo Street', N'Information Systems', N'Minia University', 6, 13, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5196, N'Ismail Walid', N'ismail.walid5196@student.iti.gov.eg', N'ismailwalid5196', N'2005-10-15', N'Male', N'188 Cairo Street', N'Science', N'Suez Canal University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5197, N'Samia Saeed', N'samia.saeed5197@student.iti.gov.eg', N'samiasaeed5197', N'2000-08-06', N'Female', N'16 Cairo Street', N'Commerce', N'Assiut University', 6, 2, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5198, N'Sara Mohamed', N'sara.mohamed5198@student.iti.gov.eg', N'saramohamed5198', N'1999-12-25', N'Female', N'164 Cairo Street', N'Arts', N'Mansoura University', 6, 2, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5199, N'Hazem Tamer', N'hazem.tamer5199@student.iti.gov.eg', N'hazemtamer5199', N'2005-12-16', N'Male', N'69 Cairo Street', N'Science', N'Minia University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5200, N'Nesma Hatem', N'nesma.hatem5200@student.iti.gov.eg', N'nesmahatem5200', N'1998-10-31', N'Female', N'135 Cairo Street', N'Engineering', N'Helwan University', 6, 4, 1, N'Active');
GO

INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5201, N'Essam Hesham', N'essam.hesham5201@student.iti.gov.eg', N'essamhesham5201', N'1999-07-26', N'Male', N'58 Cairo Street', N'Information Systems', N'Tanta University', 6, 4, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5202, N'Reda Hassan', N'reda.hassan5202@student.iti.gov.eg', N'redahassan5202', N'2005-10-12', N'Male', N'169 Cairo Street', N'Commerce', N'Helwan University', 6, 13, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5203, N'Noha Tarek', N'noha.tarek5203@student.iti.gov.eg', N'nohatarek5203', N'2002-02-06', N'Female', N'149 Cairo Street', N'Commerce', N'Alexandria University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5204, N'Ismail Reda', N'ismail.reda5204@student.iti.gov.eg', N'ismailreda5204', N'2003-05-09', N'Male', N'76 Cairo Street', N'Mathematics', N'Suez Canal University', 6, 4, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5205, N'Eman Essam', N'eman.essam5205@student.iti.gov.eg', N'emanessam5205', N'1996-06-18', N'Female', N'195 Cairo Street', N'Computer Science', N'Alexandria University', 6, 2, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5206, N'Wafaa Badr', N'wafaa.badr5206@student.iti.gov.eg', N'wafaabadr5206', N'2003-12-23', N'Female', N'96 Cairo Street', N'Business Administration', N'Mansoura University', 6, 4, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5207, N'Khaled Sami', N'khaled.sami5207@student.iti.gov.eg', N'khaledsami5207', N'1997-09-07', N'Male', N'92 Cairo Street', N'Science', N'Zagazig University', 6, 13, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5208, N'Mahmoud Ayman', N'mahmoud.ayman5208@student.iti.gov.eg', N'mahmoudayman5208', N'1996-08-21', N'Male', N'24 Cairo Street', N'Mathematics', N'Assiut University', 6, 13, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5209, N'Ahmed Fouad', N'ahmed.fouad5209@student.iti.gov.eg', N'ahmedfouad5209', N'1998-01-14', N'Male', N'66 Cairo Street', N'Arts', N'Helwan University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5210, N'Hend Bassem', N'hend.bassem5210@student.iti.gov.eg', N'hendbassem5210', N'1997-10-15', N'Female', N'115 Cairo Street', N'Mathematics', N'Helwan University', 6, 1, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5211, N'Zaki Taher', N'zaki.taher5211@student.iti.gov.eg', N'zakitaher5211', N'2000-02-02', N'Male', N'89 Cairo Street', N'Arts', N'Suez Canal University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5212, N'Noha Fawzy', N'noha.fawzy5212@student.iti.gov.eg', N'nohafawzy5212', N'2003-12-05', N'Female', N'154 Cairo Street', N'Science', N'Suez Canal University', 6, 4, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5213, N'Nada Fady', N'nada.fady5213@student.iti.gov.eg', N'nadafady5213', N'2001-10-05', N'Female', N'28 Cairo Street', N'Business Administration', N'Minia University', 6, 5, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5214, N'Ibrahim Tawfik', N'ibrahim.tawfik5214@student.iti.gov.eg', N'ibrahimtawfik5214', N'1998-06-11', N'Male', N'141 Cairo Street', N'Computer Science', N'Alexandria University', 6, 4, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5215, N'Mai Naguib', N'mai.naguib5215@student.iti.gov.eg', N'mainaguib5215', N'1999-11-11', N'Female', N'172 Cairo Street', N'Engineering', N'Beni-Suef University', 6, 10, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5216, N'Naglaa Helmy', N'naglaa.helmy5216@student.iti.gov.eg', N'naglaahelmy5216', N'2005-08-12', N'Female', N'50 Cairo Street', N'Engineering', N'Ain Shams University', 6, 1, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5217, N'Hazem Anwar', N'hazem.anwar5217@student.iti.gov.eg', N'hazemanwar5217', N'1998-12-09', N'Male', N'11 Cairo Street', N'Computer Science', N'Tanta University', 6, 10, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5218, N'Rania Fahim', N'rania.fahim5218@student.iti.gov.eg', N'raniafahim5218', N'1995-12-25', N'Female', N'22 Cairo Street', N'Science', N'Assiut University', 6, 2, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5219, N'Khaled Ayman', N'khaled.ayman5219@student.iti.gov.eg', N'khaledayman5219', N'2000-01-05', N'Male', N'132 Cairo Street', N'Mathematics', N'Beni-Suef University', 6, 2, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5220, N'Maha Zayed', N'maha.zayed5220@student.iti.gov.eg', N'mahazayed5220', N'2002-11-13', N'Female', N'77 Cairo Street', N'Engineering', N'Ain Shams University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5221, N'Amal Sobhy', N'amal.sobhy5221@student.iti.gov.eg', N'amalsobhy5221', N'2001-01-16', N'Female', N'102 Cairo Street', N'Science', N'Assiut University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5222, N'Sara Hamdi', N'sara.hamdi5222@student.iti.gov.eg', N'sarahamdi5222', N'1995-08-28', N'Female', N'61 Cairo Street', N'Information Systems', N'Mansoura University', 6, 4, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5223, N'Engy Wagdy', N'engy.wagdy5223@student.iti.gov.eg', N'engywagdy5223', N'2000-08-21', N'Female', N'85 Cairo Street', N'Mathematics', N'Ain Shams University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5224, N'Soha Salah', N'soha.salah5224@student.iti.gov.eg', N'sohasalah5224', N'2002-12-18', N'Female', N'108 Cairo Street', N'Engineering', N'Minia University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5225, N'Fady Nour', N'fady.nour5225@student.iti.gov.eg', N'fadynour5225', N'1999-10-25', N'Male', N'35 Cairo Street', N'Commerce', N'Cairo University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5226, N'Ghada Reda', N'ghada.reda5226@student.iti.gov.eg', N'ghadareda5226', N'2003-07-11', N'Female', N'181 Cairo Street', N'Arts', N'Cairo University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5227, N'Engy Mansour', N'engy.mansour5227@student.iti.gov.eg', N'engymansour5227', N'2002-09-08', N'Female', N'136 Cairo Street', N'Information Systems', N'Zagazig University', 6, 10, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5228, N'Laila Taher', N'laila.taher5228@student.iti.gov.eg', N'lailataher5228', N'1996-04-01', N'Female', N'4 Cairo Street', N'Information Systems', N'Mansoura University', 6, 1, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5229, N'Engy Walid', N'engy.walid5229@student.iti.gov.eg', N'engywalid5229', N'2000-05-21', N'Female', N'137 Cairo Street', N'Science', N'Zagazig University', 6, 13, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5230, N'Heba Tawfik', N'heba.tawfik5230@student.iti.gov.eg', N'hebatawfik5230', N'2003-08-18', N'Female', N'92 Cairo Street', N'Engineering', N'Cairo University', 6, 10, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5231, N'Tarek Fouad', N'tarek.fouad5231@student.iti.gov.eg', N'tarekfouad5231', N'1999-04-12', N'Male', N'85 Cairo Street', N'Engineering', N'Ain Shams University', 6, 2, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5232, N'Adel Saeed', N'adel.saeed5232@student.iti.gov.eg', N'adelsaeed5232', N'1998-01-02', N'Male', N'23 Cairo Street', N'Information Systems', N'Ain Shams University', 6, 1, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5233, N'Shaimaa Nour', N'shaimaa.nour5233@student.iti.gov.eg', N'shaimaanour5233', N'2005-06-21', N'Female', N'148 Cairo Street', N'Business Administration', N'Cairo University', 6, 13, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5234, N'Mervat Sami', N'mervat.sami5234@student.iti.gov.eg', N'mervatsami5234', N'2005-03-03', N'Female', N'64 Cairo Street', N'Commerce', N'Tanta University', 6, 13, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5235, N'Reda Saad', N'reda.saad5235@student.iti.gov.eg', N'redasaad5235', N'2002-04-18', N'Male', N'192 Cairo Street', N'Science', N'Cairo University', 6, 5, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5236, N'Samia Fawzy', N'samia.fawzy5236@student.iti.gov.eg', N'samiafawzy5236', N'1996-12-18', N'Female', N'118 Cairo Street', N'Mathematics', N'Alexandria University', 6, 1, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5237, N'Samar Hesham', N'samar.hesham5237@student.iti.gov.eg', N'samarhesham5237', N'2003-01-08', N'Female', N'81 Cairo Street', N'Mathematics', N'Helwan University', 6, 1, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5238, N'Ali Hosny', N'ali.hosny5238@student.iti.gov.eg', N'alihosny5238', N'1997-06-05', N'Male', N'147 Cairo Street', N'Information Systems', N'Ain Shams University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5239, N'Azza Helmy', N'azza.helmy5239@student.iti.gov.eg', N'azzahelmy5239', N'1998-11-25', N'Female', N'78 Cairo Street', N'Arts', N'Mansoura University', 6, 5, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5240, N'Reda Hatem', N'reda.hatem5240@student.iti.gov.eg', N'redahatem5240', N'1996-10-14', N'Male', N'191 Cairo Street', N'Arts', N'Cairo University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5241, N'Salma Hatem', N'salma.hatem5241@student.iti.gov.eg', N'salmahatem5241', N'1999-02-11', N'Female', N'177 Cairo Street', N'Business Administration', N'Tanta University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5242, N'Essam Hamed', N'essam.hamed5242@student.iti.gov.eg', N'essamhamed5242', N'1998-05-17', N'Male', N'92 Cairo Street', N'Arts', N'Alexandria University', 6, 11, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5243, N'Ehab Hesham', N'ehab.hesham5243@student.iti.gov.eg', N'ehabhesham5243', N'1997-05-12', N'Male', N'16 Cairo Street', N'Science', N'Tanta University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5244, N'Injy Adly', N'injy.adly5244@student.iti.gov.eg', N'injyadly5244', N'1998-11-14', N'Female', N'7 Cairo Street', N'Computer Science', N'Helwan University', 6, 4, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5245, N'Maha Saad', N'maha.saad5245@student.iti.gov.eg', N'mahasaad5245', N'2004-02-05', N'Female', N'103 Cairo Street', N'Engineering', N'Assiut University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5246, N'Soha Amr', N'soha.amr5246@student.iti.gov.eg', N'sohaamr5246', N'1995-08-29', N'Female', N'11 Cairo Street', N'Commerce', N'Alexandria University', 6, 5, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5247, N'Rana Mohamed', N'rana.mohamed5247@student.iti.gov.eg', N'ranamohamed5247', N'2001-05-24', N'Female', N'142 Cairo Street', N'Information Systems', N'Beni-Suef University', 6, 2, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5248, N'Mahmoud Walid', N'mahmoud.walid5248@student.iti.gov.eg', N'mahmoudwalid5248', N'1995-08-12', N'Male', N'116 Cairo Street', N'Computer Science', N'Suez Canal University', 6, 10, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5249, N'Hanaa Adly', N'hanaa.adly5249@student.iti.gov.eg', N'hanaaadly5249', N'1995-02-23', N'Female', N'13 Cairo Street', N'Arts', N'Tanta University', 6, 12, 1, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5250, N'Magdy Maher', N'magdy.maher5250@student.iti.gov.eg', N'magdymaher5250', N'1998-07-06', N'Male', N'123 Cairo Street', N'Information Systems', N'Alexandria University', 6, 2, 1, N'Active');

-- Alexandria Branch Students (180 students)
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5251, N'Rania Refaat', N'rania.refaat5251@student.iti.gov.eg', N'raniarefaat5251', N'1999-05-12', N'Female', N'145 Alexandria Street', N'Mathematics', N'Tanta University', 6, 3, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5252, N'Salma Adel', N'salma.adel5252@student.iti.gov.eg', N'salmaadel5252', N'1999-07-03', N'Female', N'69 Alexandria Street', N'Arts', N'Minia University', 6, 4, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5253, N'Ali Reda', N'ali.reda5253@student.iti.gov.eg', N'alireda5253', N'2003-11-28', N'Male', N'123 Alexandria Street', N'Science', N'Alexandria University', 6, 8, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5254, N'Sherif Sherif', N'sherif.sherif5254@student.iti.gov.eg', N'sherifsherif5254', N'2003-10-20', N'Male', N'91 Alexandria Street', N'Engineering', N'Tanta University', 6, 8, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5255, N'Fady Samy', N'fady.samy5255@student.iti.gov.eg', N'fadysamy5255', N'2000-12-16', N'Male', N'134 Alexandria Street', N'Arts', N'Zagazig University', 6, 8, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5256, N'Sherif Tawfik', N'sherif.tawfik5256@student.iti.gov.eg', N'sheriftawfik5256', N'2004-08-08', N'Male', N'199 Alexandria Street', N'Arts', N'Ain Shams University', 6, 8, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5257, N'Heba Zaki', N'heba.zaki5257@student.iti.gov.eg', N'hebazaki5257', N'1999-06-23', N'Female', N'194 Alexandria Street', N'Engineering', N'Ain Shams University', 6, 3, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5258, N'Hoda Taher', N'hoda.taher5258@student.iti.gov.eg', N'hodataher5258', N'1996-12-14', N'Female', N'148 Alexandria Street', N'Commerce', N'Suez Canal University', 6, 2, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5259, N'Tamer Sherif', N'tamer.sherif5259@student.iti.gov.eg', N'tamersherif5259', N'1997-02-20', N'Male', N'50 Alexandria Street', N'Commerce', N'Minia University', 6, 3, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5260, N'Youssef Nabil', N'youssef.nabil5260@student.iti.gov.eg', N'youssefnabil5260', N'1995-07-18', N'Male', N'155 Alexandria Street', N'Engineering', N'Minia University', 6, 8, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5261, N'Eman Tamer', N'eman.tamer5261@student.iti.gov.eg', N'emantamer5261', N'2001-04-17', N'Female', N'156 Alexandria Street', N'Business Administration', N'Minia University', 6, 11, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5262, N'Reda Atef', N'reda.atef5262@student.iti.gov.eg', N'redaatef5262', N'2001-10-30', N'Male', N'65 Alexandria Street', N'Mathematics', N'Minia University', 6, 11, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5263, N'Hassan Ramzy', N'hassan.ramzy5263@student.iti.gov.eg', N'hassanramzy5263', N'1998-06-22', N'Male', N'27 Alexandria Street', N'Information Systems', N'Ain Shams University', 6, 11, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5264, N'Mona Bassem', N'mona.bassem5264@student.iti.gov.eg', N'monabassem5264', N'1996-02-03', N'Female', N'130 Alexandria Street', N'Commerce', N'Minia University', 6, 2, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5265, N'Ayman Adel', N'ayman.adel5265@student.iti.gov.eg', N'aymanadel5265', N'2003-01-02', N'Male', N'1 Alexandria Street', N'Arts', N'Ain Shams University', 6, 8, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5266, N'Maha Shalaby', N'maha.shalaby5266@student.iti.gov.eg', N'mahashalaby5266', N'1999-01-21', N'Female', N'179 Alexandria Street', N'Information Systems', N'Zagazig University', 6, 8, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5267, N'Ibrahim Essam', N'ibrahim.essam5267@student.iti.gov.eg', N'ibrahimessam5267', N'2002-05-28', N'Male', N'68 Alexandria Street', N'Engineering', N'Mansoura University', 6, 2, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5268, N'Youssef Walid', N'youssef.walid5268@student.iti.gov.eg', N'youssefwalid5268', N'1997-10-24', N'Male', N'10 Alexandria Street', N'Information Systems', N'Ain Shams University', 6, 3, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5269, N'Ali Tawfik', N'ali.tawfik5269@student.iti.gov.eg', N'alitawfik5269', N'1997-01-31', N'Male', N'42 Alexandria Street', N'Commerce', N'Zagazig University', 6, 13, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5270, N'Sara Mansour', N'sara.mansour5270@student.iti.gov.eg', N'saramansour5270', N'1999-05-06', N'Female', N'154 Alexandria Street', N'Business Administration', N'Alexandria University', 6, 3, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5271, N'Neveen Adham', N'neveen.adham5271@student.iti.gov.eg', N'neveenadham5271', N'2000-04-24', N'Female', N'153 Alexandria Street', N'Arts', N'Alexandria University', 6, 3, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5272, N'Ayman Adly', N'ayman.adly5272@student.iti.gov.eg', N'aymanadly5272', N'2002-12-27', N'Male', N'53 Alexandria Street', N'Science', N'Cairo University', 6, 2, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5273, N'Karima Amgad', N'karima.amgad5273@student.iti.gov.eg', N'karimaamgad5273', N'2003-07-04', N'Female', N'184 Alexandria Street', N'Mathematics', N'Cairo University', 6, 8, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5274, N'Karim Hamdi', N'karim.hamdi5274@student.iti.gov.eg', N'karimhamdi5274', N'1999-11-02', N'Male', N'95 Alexandria Street', N'Information Systems', N'Tanta University', 6, 8, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5275, N'Dina Mostafa', N'dina.mostafa5275@student.iti.gov.eg', N'dinamostafa5275', N'2000-12-15', N'Female', N'19 Alexandria Street', N'Engineering', N'Beni-Suef University', 6, 8, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5276, N'Abeer Essam', N'abeer.essam5276@student.iti.gov.eg', N'abeeressam5276', N'2001-01-10', N'Female', N'48 Alexandria Street', N'Information Systems', N'Ain Shams University', 6, 4, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5277, N'Neveen Ramzy', N'neveen.ramzy5277@student.iti.gov.eg', N'neveenramzy5277', N'2005-05-31', N'Female', N'115 Alexandria Street', N'Science', N'Helwan University', 6, 3, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5278, N'Hazem Amr', N'hazem.amr5278@student.iti.gov.eg', N'hazemamr5278', N'2001-02-13', N'Male', N'69 Alexandria Street', N'Engineering', N'Mansoura University', 6, 2, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5279, N'Tamer Shalaby', N'tamer.shalaby5279@student.iti.gov.eg', N'tamershalaby5279', N'2004-12-01', N'Male', N'134 Alexandria Street', N'Science', N'Minia University', 6, 13, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5280, N'Mahmoud Bassem', N'mahmoud.bassem5280@student.iti.gov.eg', N'mahmoudbassem5280', N'1998-07-15', N'Male', N'141 Alexandria Street', N'Engineering', N'Helwan University', 6, 3, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5281, N'Ghada Morsy', N'ghada.morsy5281@student.iti.gov.eg', N'ghadamorsy5281', N'2005-07-12', N'Female', N'93 Alexandria Street', N'Arts', N'Tanta University', 6, 4, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5282, N'Tamer Fekry', N'tamer.fekry5282@student.iti.gov.eg', N'tamerfekry5282', N'2004-05-20', N'Male', N'179 Alexandria Street', N'Mathematics', N'Ain Shams University', 6, 2, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5283, N'Nasser Hosny', N'nasser.hosny5283@student.iti.gov.eg', N'nasserhosny5283', N'2000-09-01', N'Male', N'2 Alexandria Street', N'Mathematics', N'Assiut University', 6, 2, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5284, N'Lamia Taher', N'lamia.taher5284@student.iti.gov.eg', N'lamiataher5284', N'2002-04-09', N'Female', N'145 Alexandria Street', N'Information Systems', N'Alexandria University', 6, 13, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5285, N'Hanaa Ayman', N'hanaa.ayman5285@student.iti.gov.eg', N'hanaaayman5285', N'1996-07-30', N'Female', N'175 Alexandria Street', N'Computer Science', N'Cairo University', 6, 2, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5286, N'Wael Ibrahim', N'wael.ibrahim5286@student.iti.gov.eg', N'waelibrahim5286', N'1999-09-06', N'Male', N'125 Alexandria Street', N'Mathematics', N'Suez Canal University', 6, 3, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5287, N'Injy Ragab', N'injy.ragab5287@student.iti.gov.eg', N'injyragab5287', N'2004-09-03', N'Female', N'57 Alexandria Street', N'Information Systems', N'Minia University', 6, 2, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5288, N'Amr Ramzy', N'amr.ramzy5288@student.iti.gov.eg', N'amrramzy5288', N'1997-03-03', N'Male', N'149 Alexandria Street', N'Computer Science', N'Helwan University', 6, 2, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5289, N'Hamdy Sami', N'hamdy.sami5289@student.iti.gov.eg', N'hamdysami5289', N'1997-06-16', N'Male', N'115 Alexandria Street', N'Engineering', N'Tanta University', 6, 8, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5290, N'Dalia Ahmed', N'dalia.ahmed5290@student.iti.gov.eg', N'daliaahmed5290', N'2005-01-20', N'Female', N'130 Alexandria Street', N'Engineering', N'Zagazig University', 6, 2, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5291, N'Mai Adham', N'mai.adham5291@student.iti.gov.eg', N'maiadham5291', N'1998-12-14', N'Female', N'58 Alexandria Street', N'Arts', N'Helwan University', 6, 3, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5292, N'Nadia Selim', N'nadia.selim5292@student.iti.gov.eg', N'nadiaselim5292', N'1998-12-09', N'Female', N'108 Alexandria Street', N'Commerce', N'Zagazig University', 6, 4, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5293, N'Ehab Fady', N'ehab.fady5293@student.iti.gov.eg', N'ehabfady5293', N'2002-12-29', N'Male', N'5 Alexandria Street', N'Mathematics', N'Alexandria University', 6, 4, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5294, N'Fady Sami', N'fady.sami5294@student.iti.gov.eg', N'fadysami5294', N'1995-10-08', N'Male', N'112 Alexandria Street', N'Science', N'Tanta University', 6, 11, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5295, N'Neveen Waleed', N'neveen.waleed5295@student.iti.gov.eg', N'neveenwaleed5295', N'2003-10-06', N'Female', N'144 Alexandria Street', N'Information Systems', N'Assiut University', 6, 2, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5296, N'Mohamed Sherif', N'mohamed.sherif5296@student.iti.gov.eg', N'mohamedsherif5296', N'2004-10-28', N'Male', N'149 Alexandria Street', N'Commerce', N'Suez Canal University', 6, 3, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5297, N'Ahmed Shalaby', N'ahmed.shalaby5297@student.iti.gov.eg', N'ahmedshalaby5297', N'1996-08-19', N'Male', N'96 Alexandria Street', N'Commerce', N'Zagazig University', 6, 3, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5298, N'Ghada Ramy', N'ghada.ramy5298@student.iti.gov.eg', N'ghadaramy5298', N'1998-08-18', N'Female', N'11 Alexandria Street', N'Information Systems', N'Minia University', 6, 13, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5299, N'Lamia Hesham', N'lamia.hesham5299@student.iti.gov.eg', N'lamiahesham5299', N'2005-12-24', N'Female', N'178 Alexandria Street', N'Arts', N'Zagazig University', 6, 11, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5300, N'Heba Nabil', N'heba.nabil5300@student.iti.gov.eg', N'hebanabil5300', N'2002-06-02', N'Female', N'143 Alexandria Street', N'Engineering', N'Alexandria University', 6, 3, 2, N'Active');
GO

INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5301, N'Karim Maher', N'karim.maher5301@student.iti.gov.eg', N'karimmaher5301', N'1998-05-15', N'Male', N'23 Alexandria Street', N'Information Systems', N'Minia University', 6, 11, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5302, N'Mostafa Ali', N'mostafa.ali5302@student.iti.gov.eg', N'mostafaali5302', N'2005-02-23', N'Male', N'83 Alexandria Street', N'Arts', N'Cairo University', 6, 11, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5303, N'Olfat Taha', N'olfat.taha5303@student.iti.gov.eg', N'olfattaha5303', N'1999-12-08', N'Female', N'148 Alexandria Street', N'Commerce', N'Mansoura University', 6, 13, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5304, N'Sara Youssef', N'sara.youssef5304@student.iti.gov.eg', N'sarayoussef5304', N'2001-07-20', N'Female', N'67 Alexandria Street', N'Information Systems', N'Mansoura University', 6, 2, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5305, N'Soha Yasser', N'soha.yasser5305@student.iti.gov.eg', N'sohayasser5305', N'2003-11-26', N'Female', N'153 Alexandria Street', N'Computer Science', N'Ain Shams University', 6, 11, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5306, N'Nesma Fady', N'nesma.fady5306@student.iti.gov.eg', N'nesmafady5306', N'1996-04-30', N'Female', N'14 Alexandria Street', N'Science', N'Cairo University', 6, 8, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5307, N'Rana Zaki', N'rana.zaki5307@student.iti.gov.eg', N'ranazaki5307', N'1996-02-05', N'Female', N'197 Alexandria Street', N'Computer Science', N'Ain Shams University', 6, 13, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5308, N'Gamal Soliman', N'gamal.soliman5308@student.iti.gov.eg', N'gamalsoliman5308', N'1999-07-24', N'Male', N'87 Alexandria Street', N'Engineering', N'Assiut University', 6, 11, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5309, N'Nadia Selim', N'nadia.selim5309@student.iti.gov.eg', N'nadiaselim5309', N'1997-10-25', N'Female', N'103 Alexandria Street', N'Business Administration', N'Assiut University', 6, 13, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5310, N'Mostafa Anwar', N'mostafa.anwar5310@student.iti.gov.eg', N'mostafaanwar5310', N'2004-12-04', N'Male', N'63 Alexandria Street', N'Business Administration', N'Assiut University', 6, 4, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5311, N'Samar Ali', N'samar.ali5311@student.iti.gov.eg', N'samarali5311', N'1995-01-10', N'Female', N'196 Alexandria Street', N'Engineering', N'Mansoura University', 6, 4, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5312, N'Sara Refaat', N'sara.refaat5312@student.iti.gov.eg', N'sararefaat5312', N'1998-03-26', N'Female', N'60 Alexandria Street', N'Computer Science', N'Assiut University', 6, 3, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5313, N'Karima Tamer', N'karima.tamer5313@student.iti.gov.eg', N'karimatamer5313', N'1996-01-24', N'Female', N'84 Alexandria Street', N'Information Systems', N'Beni-Suef University', 6, 3, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5314, N'Tamer Samir', N'tamer.samir5314@student.iti.gov.eg', N'tamersamir5314', N'2004-01-28', N'Male', N'92 Alexandria Street', N'Mathematics', N'Mansoura University', 6, 8, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5315, N'Abeer Ramzy', N'abeer.ramzy5315@student.iti.gov.eg', N'abeerramzy5315', N'2005-09-15', N'Female', N'137 Alexandria Street', N'Business Administration', N'Tanta University', 6, 2, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5316, N'Engy Reda', N'engy.reda5316@student.iti.gov.eg', N'engyreda5316', N'2002-08-22', N'Female', N'70 Alexandria Street', N'Information Systems', N'Suez Canal University', 6, 4, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5317, N'Zaki Amr', N'zaki.amr5317@student.iti.gov.eg', N'zakiamr5317', N'2004-06-19', N'Male', N'111 Alexandria Street', N'Engineering', N'Zagazig University', 6, 3, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5318, N'Mona Mahmoud', N'mona.mahmoud5318@student.iti.gov.eg', N'monamahmoud5318', N'1995-10-27', N'Female', N'192 Alexandria Street', N'Business Administration', N'Alexandria University', 6, 4, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5319, N'Tarek Mahmoud', N'tarek.mahmoud5319@student.iti.gov.eg', N'tarekmahmoud5319', N'1998-05-07', N'Male', N'191 Alexandria Street', N'Arts', N'Assiut University', 6, 3, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5320, N'Rania Maged', N'rania.maged5320@student.iti.gov.eg', N'raniamaged5320', N'2004-04-18', N'Female', N'135 Alexandria Street', N'Commerce', N'Minia University', 6, 8, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5321, N'Reda Refaat', N'reda.refaat5321@student.iti.gov.eg', N'redarefaat5321', N'2002-06-15', N'Male', N'113 Alexandria Street', N'Commerce', N'Minia University', 6, 2, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5322, N'Ayman Sayed', N'ayman.sayed5322@student.iti.gov.eg', N'aymansayed5322', N'2003-09-27', N'Male', N'2 Alexandria Street', N'Engineering', N'Mansoura University', 6, 2, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5323, N'Omar Helmy', N'omar.helmy5323@student.iti.gov.eg', N'omarhelmy5323', N'2003-05-23', N'Male', N'3 Alexandria Street', N'Engineering', N'Cairo University', 6, 8, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5324, N'Naglaa Selim', N'naglaa.selim5324@student.iti.gov.eg', N'naglaaselim5324', N'1996-04-19', N'Female', N'36 Alexandria Street', N'Computer Science', N'Beni-Suef University', 6, 8, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5325, N'Ali Hani', N'ali.hani5325@student.iti.gov.eg', N'alihani5325', N'2000-03-31', N'Male', N'172 Alexandria Street', N'Arts', N'Alexandria University', 6, 13, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5326, N'Gamal Magdy', N'gamal.magdy5326@student.iti.gov.eg', N'gamalmagdy5326', N'2000-09-10', N'Male', N'26 Alexandria Street', N'Engineering', N'Beni-Suef University', 6, 2, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5327, N'Mostafa Mansour', N'mostafa.mansour5327@student.iti.gov.eg', N'mostafamansour5327', N'1996-11-29', N'Male', N'115 Alexandria Street', N'Commerce', N'Suez Canal University', 6, 3, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5328, N'Essam Hassan', N'essam.hassan5328@student.iti.gov.eg', N'essamhassan5328', N'2001-06-07', N'Male', N'149 Alexandria Street', N'Engineering', N'Alexandria University', 6, 3, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5329, N'Dalia Adham', N'dalia.adham5329@student.iti.gov.eg', N'daliaadham5329', N'2004-11-05', N'Female', N'172 Alexandria Street', N'Science', N'Beni-Suef University', 6, 8, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5330, N'Hend Wagdy', N'hend.wagdy5330@student.iti.gov.eg', N'hendwagdy5330', N'1999-01-03', N'Female', N'82 Alexandria Street', N'Mathematics', N'Suez Canal University', 6, 3, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5331, N'Rana Yousry', N'rana.yousry5331@student.iti.gov.eg', N'ranayousry5331', N'1999-02-06', N'Female', N'76 Alexandria Street', N'Computer Science', N'Suez Canal University', 6, 11, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5332, N'Hassan Badr', N'hassan.badr5332@student.iti.gov.eg', N'hassanbadr5332', N'1997-09-04', N'Male', N'6 Alexandria Street', N'Arts', N'Cairo University', 6, 2, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5333, N'Tarek Zayed', N'tarek.zayed5333@student.iti.gov.eg', N'tarekzayed5333', N'2003-12-08', N'Male', N'152 Alexandria Street', N'Arts', N'Beni-Suef University', 6, 2, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5334, N'Nada Ashraf', N'nada.ashraf5334@student.iti.gov.eg', N'nadaashraf5334', N'2001-08-11', N'Female', N'135 Alexandria Street', N'Computer Science', N'Minia University', 6, 4, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5335, N'Shaimaa Ahmed', N'shaimaa.ahmed5335@student.iti.gov.eg', N'shaimaaahmed5335', N'2000-04-03', N'Female', N'183 Alexandria Street', N'Mathematics', N'Tanta University', 6, 13, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5336, N'Mariam Amr', N'mariam.amr5336@student.iti.gov.eg', N'mariamamr5336', N'2005-01-10', N'Female', N'198 Alexandria Street', N'Engineering', N'Cairo University', 6, 13, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5337, N'Ibrahim Magdy', N'ibrahim.magdy5337@student.iti.gov.eg', N'ibrahimmagdy5337', N'2002-12-24', N'Male', N'199 Alexandria Street', N'Science', N'Cairo University', 6, 13, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5338, N'Karima Sayed', N'karima.sayed5338@student.iti.gov.eg', N'karimasayed5338', N'1999-01-20', N'Female', N'124 Alexandria Street', N'Science', N'Tanta University', 6, 8, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5339, N'Tarek Medhat', N'tarek.medhat5339@student.iti.gov.eg', N'tarekmedhat5339', N'1996-12-02', N'Male', N'145 Alexandria Street', N'Mathematics', N'Zagazig University', 6, 13, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5340, N'Seif Fouad', N'seif.fouad5340@student.iti.gov.eg', N'seiffouad5340', N'1999-08-18', N'Male', N'19 Alexandria Street', N'Computer Science', N'Helwan University', 6, 8, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5341, N'Aya Maher', N'aya.maher5341@student.iti.gov.eg', N'ayamaher5341', N'2000-07-10', N'Female', N'96 Alexandria Street', N'Business Administration', N'Suez Canal University', 6, 13, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5342, N'Olfat Mansour', N'olfat.mansour5342@student.iti.gov.eg', N'olfatmansour5342', N'1995-06-09', N'Female', N'84 Alexandria Street', N'Engineering', N'Ain Shams University', 6, 8, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5343, N'Karima Reda', N'karima.reda5343@student.iti.gov.eg', N'karimareda5343', N'2004-02-25', N'Female', N'176 Alexandria Street', N'Mathematics', N'Ain Shams University', 6, 8, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5344, N'Youssef Reda', N'youssef.reda5344@student.iti.gov.eg', N'youssefreda5344', N'2000-03-21', N'Male', N'102 Alexandria Street', N'Computer Science', N'Minia University', 6, 11, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5345, N'Maha Fahim', N'maha.fahim5345@student.iti.gov.eg', N'mahafahim5345', N'2005-02-21', N'Female', N'165 Alexandria Street', N'Computer Science', N'Minia University', 6, 3, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5346, N'Youssef Hosny', N'youssef.hosny5346@student.iti.gov.eg', N'youssefhosny5346', N'2003-06-02', N'Male', N'82 Alexandria Street', N'Engineering', N'Helwan University', 6, 11, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5347, N'Nasser Ramy', N'nasser.ramy5347@student.iti.gov.eg', N'nasserramy5347', N'1997-04-28', N'Male', N'174 Alexandria Street', N'Computer Science', N'Helwan University', 6, 3, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5348, N'Reem Selim', N'reem.selim5348@student.iti.gov.eg', N'reemselim5348', N'1998-08-05', N'Female', N'72 Alexandria Street', N'Information Systems', N'Zagazig University', 6, 8, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5349, N'Reda Ragab', N'reda.ragab5349@student.iti.gov.eg', N'redaragab5349', N'1995-04-22', N'Male', N'66 Alexandria Street', N'Computer Science', N'Suez Canal University', 6, 11, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5350, N'Hossam Samir', N'hossam.samir5350@student.iti.gov.eg', N'hossamsamir5350', N'2003-02-03', N'Male', N'179 Alexandria Street', N'Science', N'Helwan University', 6, 13, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5351, N'Nasser Essam', N'nasser.essam5351@student.iti.gov.eg', N'nasseressam5351', N'1996-06-21', N'Male', N'190 Alexandria Street', N'Business Administration', N'Tanta University', 6, 8, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5352, N'Rana Salah', N'rana.salah5352@student.iti.gov.eg', N'ranasalah5352', N'1995-04-03', N'Female', N'124 Alexandria Street', N'Commerce', N'Zagazig University', 6, 4, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5353, N'Heba Hosny', N'heba.hosny5353@student.iti.gov.eg', N'hebahosny5353', N'2004-03-03', N'Female', N'70 Alexandria Street', N'Mathematics', N'Helwan University', 6, 3, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5354, N'Nasser Mansour', N'nasser.mansour5354@student.iti.gov.eg', N'nassermansour5354', N'1998-02-27', N'Male', N'138 Alexandria Street', N'Engineering', N'Assiut University', 6, 8, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5355, N'Mai Ramy', N'mai.ramy5355@student.iti.gov.eg', N'mairamy5355', N'1996-06-11', N'Female', N'70 Alexandria Street', N'Mathematics', N'Tanta University', 6, 4, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5356, N'Maha Ibrahim', N'maha.ibrahim5356@student.iti.gov.eg', N'mahaibrahim5356', N'1998-05-17', N'Female', N'80 Alexandria Street', N'Commerce', N'Suez Canal University', 6, 3, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5357, N'Ibrahim Maher', N'ibrahim.maher5357@student.iti.gov.eg', N'ibrahimmaher5357', N'2002-12-04', N'Male', N'175 Alexandria Street', N'Computer Science', N'Tanta University', 6, 13, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5358, N'Manal Yasser', N'manal.yasser5358@student.iti.gov.eg', N'manalyasser5358', N'2004-11-03', N'Female', N'160 Alexandria Street', N'Computer Science', N'Ain Shams University', 6, 8, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5359, N'Mohamed Yasser', N'mohamed.yasser5359@student.iti.gov.eg', N'mohamedyasser5359', N'2004-06-09', N'Male', N'173 Alexandria Street', N'Mathematics', N'Mansoura University', 6, 2, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5360, N'Eman Tamer', N'eman.tamer5360@student.iti.gov.eg', N'emantamer5360', N'1997-02-27', N'Female', N'176 Alexandria Street', N'Science', N'Zagazig University', 6, 13, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5361, N'Neveen Naguib', N'neveen.naguib5361@student.iti.gov.eg', N'neveennaguib5361', N'1997-06-12', N'Female', N'199 Alexandria Street', N'Business Administration', N'Beni-Suef University', 6, 4, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5362, N'Rania Sobhy', N'rania.sobhy5362@student.iti.gov.eg', N'raniasobhy5362', N'2003-03-18', N'Female', N'81 Alexandria Street', N'Engineering', N'Helwan University', 6, 11, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5363, N'Magdy Labib', N'magdy.labib5363@student.iti.gov.eg', N'magdylabib5363', N'2000-08-19', N'Male', N'66 Alexandria Street', N'Engineering', N'Zagazig University', 6, 4, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5364, N'Sara Labib', N'sara.labib5364@student.iti.gov.eg', N'saralabib5364', N'2003-01-21', N'Female', N'75 Alexandria Street', N'Commerce', N'Tanta University', 6, 11, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5365, N'Mariam Nour', N'mariam.nour5365@student.iti.gov.eg', N'mariamnour5365', N'2004-04-04', N'Female', N'145 Alexandria Street', N'Commerce', N'Helwan University', 6, 8, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5366, N'Hossam Yousry', N'hossam.yousry5366@student.iti.gov.eg', N'hossamyousry5366', N'1998-11-17', N'Male', N'49 Alexandria Street', N'Information Systems', N'Mansoura University', 6, 4, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5367, N'Zeinab Reda', N'zeinab.reda5367@student.iti.gov.eg', N'zeinabreda5367', N'1999-12-23', N'Female', N'50 Alexandria Street', N'Mathematics', N'Tanta University', 6, 4, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5368, N'Mariam Hamed', N'mariam.hamed5368@student.iti.gov.eg', N'mariamhamed5368', N'2000-01-24', N'Female', N'117 Alexandria Street', N'Engineering', N'Beni-Suef University', 6, 4, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5369, N'Mai Saad', N'mai.saad5369@student.iti.gov.eg', N'maisaad5369', N'1997-12-11', N'Female', N'77 Alexandria Street', N'Business Administration', N'Alexandria University', 6, 3, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5370, N'Omar Magdy', N'omar.magdy5370@student.iti.gov.eg', N'omarmagdy5370', N'2004-02-02', N'Male', N'195 Alexandria Street', N'Business Administration', N'Helwan University', 6, 4, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5371, N'Hassan Lotfy', N'hassan.lotfy5371@student.iti.gov.eg', N'hassanlotfy5371', N'2004-02-05', N'Male', N'157 Alexandria Street', N'Computer Science', N'Cairo University', 6, 11, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5372, N'Ayman Refaat', N'ayman.refaat5372@student.iti.gov.eg', N'aymanrefaat5372', N'2000-05-01', N'Male', N'166 Alexandria Street', N'Commerce', N'Zagazig University', 6, 2, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5373, N'Heba Sayed', N'heba.sayed5373@student.iti.gov.eg', N'hebasayed5373', N'1996-07-08', N'Female', N'81 Alexandria Street', N'Science', N'Minia University', 6, 4, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5374, N'Hany Selim', N'hany.selim5374@student.iti.gov.eg', N'hanyselim5374', N'2002-03-31', N'Male', N'156 Alexandria Street', N'Commerce', N'Alexandria University', 6, 11, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5375, N'Waleed Zaki', N'waleed.zaki5375@student.iti.gov.eg', N'waleedzaki5375', N'1995-10-03', N'Male', N'99 Alexandria Street', N'Engineering', N'Ain Shams University', 6, 13, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5376, N'Magdy Hani', N'magdy.hani5376@student.iti.gov.eg', N'magdyhani5376', N'1995-01-31', N'Male', N'48 Alexandria Street', N'Information Systems', N'Alexandria University', 6, 11, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5377, N'Samar Ramy', N'samar.ramy5377@student.iti.gov.eg', N'samarramy5377', N'2003-01-12', N'Female', N'131 Alexandria Street', N'Business Administration', N'Mansoura University', 6, 3, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5378, N'Hend Adly', N'hend.adly5378@student.iti.gov.eg', N'hendadly5378', N'1999-05-17', N'Female', N'65 Alexandria Street', N'Science', N'Minia University', 6, 4, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5379, N'Rana Helmy', N'rana.helmy5379@student.iti.gov.eg', N'ranahelmy5379', N'1997-04-02', N'Female', N'158 Alexandria Street', N'Computer Science', N'Cairo University', 6, 2, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5380, N'Hazem Fawzy', N'hazem.fawzy5380@student.iti.gov.eg', N'hazemfawzy5380', N'2000-09-05', N'Male', N'6 Alexandria Street', N'Business Administration', N'Cairo University', 6, 8, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5381, N'Soha Refaat', N'soha.refaat5381@student.iti.gov.eg', N'soharefaat5381', N'1997-09-06', N'Female', N'152 Alexandria Street', N'Science', N'Alexandria University', 6, 2, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5382, N'Mariam Badr', N'mariam.badr5382@student.iti.gov.eg', N'mariambadr5382', N'2004-04-17', N'Female', N'59 Alexandria Street', N'Computer Science', N'Cairo University', 6, 2, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5383, N'Sherif Naguib', N'sherif.naguib5383@student.iti.gov.eg', N'sherifnaguib5383', N'1998-07-27', N'Male', N'137 Alexandria Street', N'Commerce', N'Zagazig University', 6, 11, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5384, N'Essam Reda', N'essam.reda5384@student.iti.gov.eg', N'essamreda5384', N'2005-09-21', N'Male', N'70 Alexandria Street', N'Engineering', N'Minia University', 6, 11, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5385, N'Wael Badr', N'wael.badr5385@student.iti.gov.eg', N'waelbadr5385', N'1999-11-03', N'Male', N'92 Alexandria Street', N'Computer Science', N'Zagazig University', 6, 2, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5386, N'Omar Sayed', N'omar.sayed5386@student.iti.gov.eg', N'omarsayed5386', N'2005-12-08', N'Male', N'136 Alexandria Street', N'Engineering', N'Beni-Suef University', 6, 11, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5387, N'Omar Maher', N'omar.maher5387@student.iti.gov.eg', N'omarmaher5387', N'2004-07-04', N'Male', N'86 Alexandria Street', N'Business Administration', N'Beni-Suef University', 6, 8, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5388, N'Yehia Medhat', N'yehia.medhat5388@student.iti.gov.eg', N'yehiamedhat5388', N'2002-02-22', N'Male', N'196 Alexandria Street', N'Business Administration', N'Zagazig University', 6, 2, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5389, N'Aya Anwar', N'aya.anwar5389@student.iti.gov.eg', N'ayaanwar5389', N'1997-08-17', N'Female', N'139 Alexandria Street', N'Commerce', N'Zagazig University', 6, 3, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5390, N'Rana Yasser', N'rana.yasser5390@student.iti.gov.eg', N'ranayasser5390', N'2001-10-26', N'Female', N'106 Alexandria Street', N'Engineering', N'Assiut University', 6, 2, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5391, N'Amr Hamdi', N'amr.hamdi5391@student.iti.gov.eg', N'amrhamdi5391', N'2000-04-19', N'Male', N'125 Alexandria Street', N'Information Systems', N'Assiut University', 6, 2, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5392, N'Ibrahim Ragab', N'ibrahim.ragab5392@student.iti.gov.eg', N'ibrahimragab5392', N'1999-06-05', N'Male', N'167 Alexandria Street', N'Commerce', N'Beni-Suef University', 6, 8, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5393, N'Gamal Khaled', N'gamal.khaled5393@student.iti.gov.eg', N'gamalkhaled5393', N'2005-03-30', N'Male', N'126 Alexandria Street', N'Arts', N'Suez Canal University', 6, 13, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5394, N'Heba Wagdy', N'heba.wagdy5394@student.iti.gov.eg', N'hebawagdy5394', N'2001-08-09', N'Female', N'125 Alexandria Street', N'Commerce', N'Zagazig University', 6, 4, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5395, N'Soha Soliman', N'soha.soliman5395@student.iti.gov.eg', N'sohasoliman5395', N'2004-01-28', N'Female', N'117 Alexandria Street', N'Business Administration', N'Tanta University', 6, 4, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5396, N'Rana Nabil', N'rana.nabil5396@student.iti.gov.eg', N'rananabil5396', N'1998-03-29', N'Female', N'24 Alexandria Street', N'Business Administration', N'Beni-Suef University', 6, 4, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5397, N'Ayman Youssef', N'ayman.youssef5397@student.iti.gov.eg', N'aymanyoussef5397', N'1997-11-16', N'Male', N'87 Alexandria Street', N'Arts', N'Cairo University', 6, 11, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5398, N'Hend Ragab', N'hend.ragab5398@student.iti.gov.eg', N'hendragab5398', N'2004-01-05', N'Female', N'158 Alexandria Street', N'Engineering', N'Beni-Suef University', 6, 4, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5399, N'Lamia Wagdy', N'lamia.wagdy5399@student.iti.gov.eg', N'lamiawagdy5399', N'1998-03-01', N'Female', N'27 Alexandria Street', N'Science', N'Beni-Suef University', 6, 8, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5400, N'Ahmed Adel', N'ahmed.adel5400@student.iti.gov.eg', N'ahmedadel5400', N'2000-09-27', N'Male', N'143 Alexandria Street', N'Mathematics', N'Assiut University', 6, 3, 2, N'Active');
GO

INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5401, N'Manal Hamdi', N'manal.hamdi5401@student.iti.gov.eg', N'manalhamdi5401', N'1998-09-05', N'Female', N'25 Alexandria Street', N'Science', N'Alexandria University', 6, 13, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5402, N'Hoda Ashraf', N'hoda.ashraf5402@student.iti.gov.eg', N'hodaashraf5402', N'2001-06-16', N'Female', N'49 Alexandria Street', N'Arts', N'Helwan University', 6, 2, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5403, N'Amal Medhat', N'amal.medhat5403@student.iti.gov.eg', N'amalmedhat5403', N'2001-09-20', N'Female', N'198 Alexandria Street', N'Engineering', N'Mansoura University', 6, 3, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5404, N'Hazem Ali', N'hazem.ali5404@student.iti.gov.eg', N'hazemali5404', N'1996-07-05', N'Male', N'68 Alexandria Street', N'Mathematics', N'Alexandria University', 6, 13, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5405, N'Mahmoud Salah', N'mahmoud.salah5405@student.iti.gov.eg', N'mahmoudsalah5405', N'2000-01-05', N'Male', N'115 Alexandria Street', N'Business Administration', N'Suez Canal University', 6, 8, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5406, N'Laila Sayed', N'laila.sayed5406@student.iti.gov.eg', N'lailasayed5406', N'2005-09-25', N'Female', N'26 Alexandria Street', N'Commerce', N'Assiut University', 6, 3, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5407, N'Tamer Ahmed', N'tamer.ahmed5407@student.iti.gov.eg', N'tamerahmed5407', N'1997-10-27', N'Male', N'40 Alexandria Street', N'Commerce', N'Cairo University', 6, 8, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5408, N'Gamal Tarek', N'gamal.tarek5408@student.iti.gov.eg', N'gamaltarek5408', N'2002-12-05', N'Male', N'111 Alexandria Street', N'Computer Science', N'Tanta University', 6, 13, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5409, N'Mervat Saeed', N'mervat.saeed5409@student.iti.gov.eg', N'mervatsaeed5409', N'1995-03-12', N'Female', N'12 Alexandria Street', N'Commerce', N'Zagazig University', 6, 13, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5410, N'Ahmed Anwar', N'ahmed.anwar5410@student.iti.gov.eg', N'ahmedanwar5410', N'2001-11-06', N'Male', N'61 Alexandria Street', N'Business Administration', N'Cairo University', 6, 8, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5411, N'Waleed Fady', N'waleed.fady5411@student.iti.gov.eg', N'waleedfady5411', N'1996-11-12', N'Male', N'36 Alexandria Street', N'Business Administration', N'Helwan University', 6, 8, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5412, N'Amr Mostafa', N'amr.mostafa5412@student.iti.gov.eg', N'amrmostafa5412', N'1995-10-18', N'Male', N'135 Alexandria Street', N'Engineering', N'Alexandria University', 6, 2, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5413, N'Nadia Ramy', N'nadia.ramy5413@student.iti.gov.eg', N'nadiaramy5413', N'1997-11-25', N'Female', N'194 Alexandria Street', N'Mathematics', N'Zagazig University', 6, 3, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5414, N'Safaa Nader', N'safaa.nader5414@student.iti.gov.eg', N'safaanader5414', N'1998-03-05', N'Female', N'197 Alexandria Street', N'Mathematics', N'Mansoura University', 6, 11, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5415, N'Tariq Hassan', N'tariq.hassan5415@student.iti.gov.eg', N'tariqhassan5415', N'2000-04-01', N'Male', N'120 Alexandria Street', N'Business Administration', N'Suez Canal University', 6, 3, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5416, N'Rana Wagdy', N'rana.wagdy5416@student.iti.gov.eg', N'ranawagdy5416', N'2005-01-23', N'Female', N'137 Alexandria Street', N'Business Administration', N'Alexandria University', 6, 8, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5417, N'Lamia Adly', N'lamia.adly5417@student.iti.gov.eg', N'lamiaadly5417', N'2004-02-07', N'Female', N'160 Alexandria Street', N'Arts', N'Helwan University', 6, 3, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5418, N'Mostafa Fady', N'mostafa.fady5418@student.iti.gov.eg', N'mostafafady5418', N'1999-01-30', N'Male', N'122 Alexandria Street', N'Science', N'Ain Shams University', 6, 3, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5419, N'Olfat Mansour', N'olfat.mansour5419@student.iti.gov.eg', N'olfatmansour5419', N'2000-04-12', N'Female', N'41 Alexandria Street', N'Engineering', N'Beni-Suef University', 6, 11, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5420, N'Hoda Amgad', N'hoda.amgad5420@student.iti.gov.eg', N'hodaamgad5420', N'2004-09-05', N'Female', N'163 Alexandria Street', N'Computer Science', N'Suez Canal University', 6, 8, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5421, N'Fatma Sami', N'fatma.sami5421@student.iti.gov.eg', N'fatmasami5421', N'2004-02-28', N'Female', N'153 Alexandria Street', N'Computer Science', N'Minia University', 6, 2, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5422, N'Rana Zayed', N'rana.zayed5422@student.iti.gov.eg', N'ranazayed5422', N'1997-02-14', N'Female', N'160 Alexandria Street', N'Computer Science', N'Beni-Suef University', 6, 3, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5423, N'Engy Selim', N'engy.selim5423@student.iti.gov.eg', N'engyselim5423', N'2004-09-03', N'Female', N'58 Alexandria Street', N'Mathematics', N'Alexandria University', 6, 3, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5424, N'Hanaa Zaki', N'hanaa.zaki5424@student.iti.gov.eg', N'hanaazaki5424', N'2005-03-13', N'Female', N'90 Alexandria Street', N'Business Administration', N'Minia University', 6, 2, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5425, N'Heba Medhat', N'heba.medhat5425@student.iti.gov.eg', N'hebamedhat5425', N'2000-09-25', N'Female', N'115 Alexandria Street', N'Computer Science', N'Cairo University', 6, 8, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5426, N'Ismail Taher', N'ismail.taher5426@student.iti.gov.eg', N'ismailtaher5426', N'2005-08-23', N'Male', N'166 Alexandria Street', N'Engineering', N'Beni-Suef University', 6, 11, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5427, N'Reem Mansour', N'reem.mansour5427@student.iti.gov.eg', N'reemmansour5427', N'2000-08-09', N'Female', N'50 Alexandria Street', N'Information Systems', N'Assiut University', 6, 11, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5428, N'Tariq Medhat', N'tariq.medhat5428@student.iti.gov.eg', N'tariqmedhat5428', N'2003-05-12', N'Male', N'134 Alexandria Street', N'Business Administration', N'Helwan University', 6, 11, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5429, N'Lamia Nabil', N'lamia.nabil5429@student.iti.gov.eg', N'lamianabil5429', N'2001-02-20', N'Female', N'127 Alexandria Street', N'Commerce', N'Minia University', 6, 2, 2, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5430, N'Tarek Sami', N'tarek.sami5430@student.iti.gov.eg', N'tareksami5430', N'2002-05-14', N'Male', N'13 Alexandria Street', N'Engineering', N'Alexandria University', 6, 13, 2, N'Active');

-- Giza Branch Students (150 students)
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5431, N'Nabil Anwar', N'nabil.anwar5431@student.iti.gov.eg', N'nabilanwar5431', N'1996-09-26', N'Male', N'186 Giza Street', N'Mathematics', N'Suez Canal University', 6, 12, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5432, N'Mariam Taher', N'mariam.taher5432@student.iti.gov.eg', N'mariamtaher5432', N'1996-06-12', N'Female', N'39 Giza Street', N'Arts', N'Assiut University', 6, 12, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5433, N'Hassan Amr', N'hassan.amr5433@student.iti.gov.eg', N'hassanamr5433', N'2001-07-01', N'Male', N'13 Giza Street', N'Engineering', N'Beni-Suef University', 6, 4, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5434, N'Engy Samir', N'engy.samir5434@student.iti.gov.eg', N'engysamir5434', N'2001-01-23', N'Female', N'27 Giza Street', N'Information Systems', N'Beni-Suef University', 6, 4, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5435, N'Ehab Adel', N'ehab.adel5435@student.iti.gov.eg', N'ehabadel5435', N'2000-06-25', N'Male', N'115 Giza Street', N'Business Administration', N'Assiut University', 6, 7, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5436, N'Safaa Shalaby', N'safaa.shalaby5436@student.iti.gov.eg', N'safaashalaby5436', N'2001-11-21', N'Female', N'36 Giza Street', N'Business Administration', N'Beni-Suef University', 6, 12, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5437, N'Mervat Adham', N'mervat.adham5437@student.iti.gov.eg', N'mervatadham5437', N'1998-03-05', N'Female', N'161 Giza Street', N'Mathematics', N'Mansoura University', 6, 7, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5438, N'Shaimaa Sherif', N'shaimaa.sherif5438@student.iti.gov.eg', N'shaimaasherif5438', N'1999-10-19', N'Female', N'35 Giza Street', N'Business Administration', N'Ain Shams University', 6, 7, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5439, N'Tamer Hassan', N'tamer.hassan5439@student.iti.gov.eg', N'tamerhassan5439', N'2005-01-22', N'Male', N'149 Giza Street', N'Information Systems', N'Alexandria University', 6, 12, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5440, N'Rania Medhat', N'rania.medhat5440@student.iti.gov.eg', N'raniamedhat5440', N'1995-03-08', N'Female', N'122 Giza Street', N'Arts', N'Cairo University', 6, 12, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5441, N'Bassem Nabil', N'bassem.nabil5441@student.iti.gov.eg', N'bassemnabil5441', N'2004-06-06', N'Male', N'20 Giza Street', N'Mathematics', N'Suez Canal University', 6, 12, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5442, N'Heba Ali', N'heba.ali5442@student.iti.gov.eg', N'hebaali5442', N'1999-09-05', N'Female', N'27 Giza Street', N'Science', N'Minia University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5443, N'Manal Hani', N'manal.hani5443@student.iti.gov.eg', N'manalhani5443', N'1999-06-05', N'Female', N'115 Giza Street', N'Information Systems', N'Cairo University', 6, 12, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5444, N'Fatma Mostafa', N'fatma.mostafa5444@student.iti.gov.eg', N'fatmamostafa5444', N'1998-09-30', N'Female', N'136 Giza Street', N'Arts', N'Helwan University', 6, 4, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5445, N'Seif Soliman', N'seif.soliman5445@student.iti.gov.eg', N'seifsoliman5445', N'2003-08-20', N'Male', N'70 Giza Street', N'Arts', N'Ain Shams University', 6, 12, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5446, N'Ibrahim Taher', N'ibrahim.taher5446@student.iti.gov.eg', N'ibrahimtaher5446', N'2002-03-01', N'Male', N'41 Giza Street', N'Computer Science', N'Ain Shams University', 6, 4, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5447, N'Samy Ahmed', N'samy.ahmed5447@student.iti.gov.eg', N'samyahmed5447', N'1997-07-08', N'Male', N'39 Giza Street', N'Commerce', N'Minia University', 6, 7, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5448, N'Mariam Lotfy', N'mariam.lotfy5448@student.iti.gov.eg', N'mariamlotfy5448', N'1995-02-04', N'Female', N'190 Giza Street', N'Science', N'Cairo University', 6, 12, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5449, N'Nesma Reda', N'nesma.reda5449@student.iti.gov.eg', N'nesmareda5449', N'2002-04-27', N'Female', N'48 Giza Street', N'Arts', N'Ain Shams University', 6, 12, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5450, N'Seif Hani', N'seif.hani5450@student.iti.gov.eg', N'seifhani5450', N'2001-08-07', N'Male', N'18 Giza Street', N'Commerce', N'Beni-Suef University', 6, 4, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5451, N'Wael Nour', N'wael.nour5451@student.iti.gov.eg', N'waelnour5451', N'2002-04-23', N'Male', N'177 Giza Street', N'Information Systems', N'Cairo University', 6, 7, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5452, N'Soha Amr', N'soha.amr5452@student.iti.gov.eg', N'sohaamr5452', N'1997-12-17', N'Female', N'182 Giza Street', N'Mathematics', N'Assiut University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5453, N'Adel Zayed', N'adel.zayed5453@student.iti.gov.eg', N'adelzayed5453', N'1996-03-27', N'Male', N'34 Giza Street', N'Science', N'Assiut University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5454, N'Raafat Nader', N'raafat.nader5454@student.iti.gov.eg', N'raafatnader5454', N'2004-04-21', N'Male', N'14 Giza Street', N'Science', N'Assiut University', 6, 7, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5455, N'Mahmoud Zaki', N'mahmoud.zaki5455@student.iti.gov.eg', N'mahmoudzaki5455', N'1997-12-25', N'Male', N'4 Giza Street', N'Computer Science', N'Ain Shams University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5456, N'Hazem Nabil', N'hazem.nabil5456@student.iti.gov.eg', N'hazemnabil5456', N'1999-07-12', N'Male', N'154 Giza Street', N'Mathematics', N'Tanta University', 6, 12, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5457, N'Samia Walid', N'samia.walid5457@student.iti.gov.eg', N'samiawalid5457', N'2003-10-26', N'Female', N'190 Giza Street', N'Computer Science', N'Ain Shams University', 6, 4, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5458, N'Naglaa Tamer', N'naglaa.tamer5458@student.iti.gov.eg', N'naglaatamer5458', N'2001-12-13', N'Female', N'71 Giza Street', N'Information Systems', N'Zagazig University', 6, 4, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5459, N'Waleed Saeed', N'waleed.saeed5459@student.iti.gov.eg', N'waleedsaeed5459', N'1996-10-05', N'Male', N'158 Giza Street', N'Engineering', N'Beni-Suef University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5460, N'Reem Salah', N'reem.salah5460@student.iti.gov.eg', N'reemsalah5460', N'2001-03-01', N'Female', N'83 Giza Street', N'Computer Science', N'Minia University', 6, 4, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5461, N'Ali Ashraf', N'ali.ashraf5461@student.iti.gov.eg', N'aliashraf5461', N'1995-12-12', N'Male', N'5 Giza Street', N'Commerce', N'Cairo University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5462, N'Nasser Fahim', N'nasser.fahim5462@student.iti.gov.eg', N'nasserfahim5462', N'2001-08-01', N'Male', N'145 Giza Street', N'Information Systems', N'Tanta University', 6, 7, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5463, N'Ghada Yousry', N'ghada.yousry5463@student.iti.gov.eg', N'ghadayousry5463', N'1996-05-11', N'Female', N'152 Giza Street', N'Information Systems', N'Suez Canal University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5464, N'Hossam Ramzy', N'hossam.ramzy5464@student.iti.gov.eg', N'hossamramzy5464', N'2002-12-01', N'Male', N'146 Giza Street', N'Business Administration', N'Mansoura University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5465, N'Khaled Lotfy', N'khaled.lotfy5465@student.iti.gov.eg', N'khaledlotfy5465', N'1999-05-25', N'Male', N'22 Giza Street', N'Science', N'Tanta University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5466, N'Hany Gamal', N'hany.gamal5466@student.iti.gov.eg', N'hanygamal5466', N'2001-03-15', N'Male', N'130 Giza Street', N'Mathematics', N'Suez Canal University', 6, 7, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5467, N'Mostafa Hamed', N'mostafa.hamed5467@student.iti.gov.eg', N'mostafahamed5467', N'2000-05-06', N'Male', N'37 Giza Street', N'Computer Science', N'Alexandria University', 6, 7, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5468, N'Yehia Maher', N'yehia.maher5468@student.iti.gov.eg', N'yehiamaher5468', N'1998-04-30', N'Male', N'197 Giza Street', N'Computer Science', N'Alexandria University', 6, 4, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5469, N'Mariam Ayman', N'mariam.ayman5469@student.iti.gov.eg', N'mariamayman5469', N'1997-09-14', N'Female', N'25 Giza Street', N'Computer Science', N'Tanta University', 6, 7, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5470, N'Fady Taher', N'fady.taher5470@student.iti.gov.eg', N'fadytaher5470', N'1999-06-29', N'Male', N'56 Giza Street', N'Information Systems', N'Zagazig University', 6, 12, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5471, N'Nesma Sami', N'nesma.sami5471@student.iti.gov.eg', N'nesmasami5471', N'1999-07-29', N'Female', N'65 Giza Street', N'Mathematics', N'Minia University', 6, 7, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5472, N'Ayman Atef', N'ayman.atef5472@student.iti.gov.eg', N'aymanatef5472', N'1996-04-06', N'Male', N'24 Giza Street', N'Arts', N'Tanta University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5473, N'Hossam Fouad', N'hossam.fouad5473@student.iti.gov.eg', N'hossamfouad5473', N'1996-02-13', N'Male', N'39 Giza Street', N'Information Systems', N'Tanta University', 6, 12, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5474, N'Nabil Ibrahim', N'nabil.ibrahim5474@student.iti.gov.eg', N'nabilibrahim5474', N'2003-11-09', N'Male', N'109 Giza Street', N'Engineering', N'Cairo University', 6, 12, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5475, N'Essam Naguib', N'essam.naguib5475@student.iti.gov.eg', N'essamnaguib5475', N'1995-01-03', N'Male', N'6 Giza Street', N'Science', N'Helwan University', 6, 12, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5476, N'Raafat Adly', N'raafat.adly5476@student.iti.gov.eg', N'raafatadly5476', N'2001-02-04', N'Male', N'129 Giza Street', N'Arts', N'Cairo University', 6, 12, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5477, N'Shaimaa Nasr', N'shaimaa.nasr5477@student.iti.gov.eg', N'shaimaanasr5477', N'1996-03-02', N'Female', N'27 Giza Street', N'Information Systems', N'Minia University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5478, N'Nesma Atef', N'nesma.atef5478@student.iti.gov.eg', N'nesmaatef5478', N'1995-03-20', N'Female', N'47 Giza Street', N'Business Administration', N'Alexandria University', 6, 12, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5479, N'Youssef Nabil', N'youssef.nabil5479@student.iti.gov.eg', N'youssefnabil5479', N'2000-12-12', N'Male', N'39 Giza Street', N'Business Administration', N'Cairo University', 6, 4, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5480, N'Hassan Ayman', N'hassan.ayman5480@student.iti.gov.eg', N'hassanayman5480', N'1999-08-25', N'Male', N'50 Giza Street', N'Commerce', N'Mansoura University', 6, 4, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5481, N'Sara Hassan', N'sara.hassan5481@student.iti.gov.eg', N'sarahassan5481', N'1997-05-29', N'Female', N'125 Giza Street', N'Commerce', N'Cairo University', 6, 7, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5482, N'Tamer Ramy', N'tamer.ramy5482@student.iti.gov.eg', N'tamerramy5482', N'2002-10-03', N'Male', N'57 Giza Street', N'Science', N'Zagazig University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5483, N'Salma Ragab', N'salma.ragab5483@student.iti.gov.eg', N'salmaragab5483', N'2002-10-27', N'Female', N'21 Giza Street', N'Engineering', N'Alexandria University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5484, N'Essam Helmy', N'essam.helmy5484@student.iti.gov.eg', N'essamhelmy5484', N'1995-03-03', N'Male', N'149 Giza Street', N'Engineering', N'Mansoura University', 6, 7, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5485, N'Tamer Lotfy', N'tamer.lotfy5485@student.iti.gov.eg', N'tamerlotfy5485', N'1996-07-29', N'Male', N'8 Giza Street', N'Business Administration', N'Mansoura University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5486, N'Ayman Medhat', N'ayman.medhat5486@student.iti.gov.eg', N'aymanmedhat5486', N'2003-02-24', N'Male', N'130 Giza Street', N'Business Administration', N'Beni-Suef University', 6, 7, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5487, N'Hamdy Sherif', N'hamdy.sherif5487@student.iti.gov.eg', N'hamdysherif5487', N'1996-07-14', N'Male', N'80 Giza Street', N'Arts', N'Helwan University', 6, 7, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5488, N'Zaki Tawfik', N'zaki.tawfik5488@student.iti.gov.eg', N'zakitawfik5488', N'2002-06-11', N'Male', N'3 Giza Street', N'Information Systems', N'Tanta University', 6, 4, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5489, N'Azza Samy', N'azza.samy5489@student.iti.gov.eg', N'azzasamy5489', N'2000-11-22', N'Female', N'132 Giza Street', N'Science', N'Zagazig University', 6, 12, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5490, N'Fatma Adham', N'fatma.adham5490@student.iti.gov.eg', N'fatmaadham5490', N'1997-01-25', N'Female', N'99 Giza Street', N'Computer Science', N'Minia University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5491, N'Wael Adly', N'wael.adly5491@student.iti.gov.eg', N'waeladly5491', N'1998-03-12', N'Male', N'106 Giza Street', N'Computer Science', N'Zagazig University', 6, 4, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5492, N'Amal Sami', N'amal.sami5492@student.iti.gov.eg', N'amalsami5492', N'2003-07-10', N'Female', N'156 Giza Street', N'Mathematics', N'Cairo University', 6, 12, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5493, N'Wael Youssef', N'wael.youssef5493@student.iti.gov.eg', N'waelyoussef5493', N'1998-12-03', N'Male', N'78 Giza Street', N'Business Administration', N'Beni-Suef University', 6, 7, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5494, N'Mohamed Maher', N'mohamed.maher5494@student.iti.gov.eg', N'mohamedmaher5494', N'2005-10-09', N'Male', N'162 Giza Street', N'Science', N'Minia University', 6, 7, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5495, N'Zaki Maher', N'zaki.maher5495@student.iti.gov.eg', N'zakimaher5495', N'2005-10-12', N'Male', N'99 Giza Street', N'Commerce', N'Alexandria University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5496, N'Mohamed Ahmed', N'mohamed.ahmed5496@student.iti.gov.eg', N'mohamedahmed5496', N'1996-10-01', N'Male', N'24 Giza Street', N'Information Systems', N'Helwan University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5497, N'Nada Adly', N'nada.adly5497@student.iti.gov.eg', N'nadaadly5497', N'2004-09-15', N'Female', N'152 Giza Street', N'Commerce', N'Zagazig University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5498, N'Ehab Adly', N'ehab.adly5498@student.iti.gov.eg', N'ehabadly5498', N'1998-03-11', N'Male', N'77 Giza Street', N'Business Administration', N'Beni-Suef University', 6, 12, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5499, N'Tamer Hamed', N'tamer.hamed5499@student.iti.gov.eg', N'tamerhamed5499', N'2001-04-21', N'Male', N'167 Giza Street', N'Arts', N'Ain Shams University', 6, 7, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5500, N'Sherif Samy', N'sherif.samy5500@student.iti.gov.eg', N'sherifsamy5500', N'2005-06-09', N'Male', N'174 Giza Street', N'Commerce', N'Mansoura University', 6, 1, 3, N'Active');
GO

INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5501, N'Karima Hamdi', N'karima.hamdi5501@student.iti.gov.eg', N'karimahamdi5501', N'1999-12-17', N'Female', N'99 Giza Street', N'Computer Science', N'Zagazig University', 6, 4, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5502, N'Shaimaa Yousry', N'shaimaa.yousry5502@student.iti.gov.eg', N'shaimaayousry5502', N'2005-02-21', N'Female', N'177 Giza Street', N'Arts', N'Minia University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5503, N'Ismail Fahmy', N'ismail.fahmy5503@student.iti.gov.eg', N'ismailfahmy5503', N'2005-03-08', N'Male', N'82 Giza Street', N'Business Administration', N'Ain Shams University', 6, 12, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5504, N'Samar Ibrahim', N'samar.ibrahim5504@student.iti.gov.eg', N'samaribrahim5504', N'1999-04-18', N'Female', N'173 Giza Street', N'Computer Science', N'Alexandria University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5505, N'Hazem Sami', N'hazem.sami5505@student.iti.gov.eg', N'hazemsami5505', N'2004-08-12', N'Male', N'95 Giza Street', N'Computer Science', N'Suez Canal University', 6, 7, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5506, N'Nesma Naguib', N'nesma.naguib5506@student.iti.gov.eg', N'nesmanaguib5506', N'2003-05-05', N'Female', N'132 Giza Street', N'Commerce', N'Zagazig University', 6, 7, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5507, N'Mai Shalaby', N'mai.shalaby5507@student.iti.gov.eg', N'maishalaby5507', N'2001-01-15', N'Female', N'97 Giza Street', N'Commerce', N'Zagazig University', 6, 12, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5508, N'Faten Zayed', N'faten.zayed5508@student.iti.gov.eg', N'fatenzayed5508', N'2003-05-03', N'Female', N'122 Giza Street', N'Engineering', N'Ain Shams University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5509, N'Yehia Nour', N'yehia.nour5509@student.iti.gov.eg', N'yehianour5509', N'1999-01-01', N'Male', N'160 Giza Street', N'Science', N'Tanta University', 6, 7, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5510, N'Ghada Ramzy', N'ghada.ramzy5510@student.iti.gov.eg', N'ghadaramzy5510', N'2000-02-01', N'Female', N'196 Giza Street', N'Engineering', N'Tanta University', 6, 7, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5511, N'Reda Ashraf', N'reda.ashraf5511@student.iti.gov.eg', N'redaashraf5511', N'2000-05-09', N'Male', N'183 Giza Street', N'Information Systems', N'Helwan University', 6, 7, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5512, N'Ibrahim Helmy', N'ibrahim.helmy5512@student.iti.gov.eg', N'ibrahimhelmy5512', N'2005-12-11', N'Male', N'83 Giza Street', N'Computer Science', N'Cairo University', 6, 12, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5513, N'Nadia Hatem', N'nadia.hatem5513@student.iti.gov.eg', N'nadiahatem5513', N'1999-04-12', N'Female', N'99 Giza Street', N'Computer Science', N'Helwan University', 6, 7, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5514, N'Ismail Lotfy', N'ismail.lotfy5514@student.iti.gov.eg', N'ismaillotfy5514', N'1997-05-28', N'Male', N'32 Giza Street', N'Science', N'Helwan University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5515, N'Zaki Sobhy', N'zaki.sobhy5515@student.iti.gov.eg', N'zakisobhy5515', N'1997-09-14', N'Male', N'36 Giza Street', N'Information Systems', N'Ain Shams University', 6, 7, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5516, N'Heba Hamed', N'heba.hamed5516@student.iti.gov.eg', N'hebahamed5516', N'1999-04-16', N'Female', N'54 Giza Street', N'Mathematics', N'Cairo University', 6, 7, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5517, N'Mostafa Essam', N'mostafa.essam5517@student.iti.gov.eg', N'mostafaessam5517', N'1996-02-10', N'Male', N'153 Giza Street', N'Computer Science', N'Alexandria University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5518, N'Hany Mostafa', N'hany.mostafa5518@student.iti.gov.eg', N'hanymostafa5518', N'2002-09-15', N'Male', N'57 Giza Street', N'Science', N'Mansoura University', 6, 12, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5519, N'Magdy Fawzy', N'magdy.fawzy5519@student.iti.gov.eg', N'magdyfawzy5519', N'1999-08-03', N'Male', N'195 Giza Street', N'Computer Science', N'Minia University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5520, N'Ibrahim Saad', N'ibrahim.saad5520@student.iti.gov.eg', N'ibrahimsaad5520', N'2000-12-16', N'Male', N'147 Giza Street', N'Science', N'Alexandria University', 6, 4, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5521, N'Amal Taha', N'amal.taha5521@student.iti.gov.eg', N'amaltaha5521', N'2004-11-14', N'Female', N'53 Giza Street', N'Computer Science', N'Assiut University', 6, 7, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5522, N'Nesma Nader', N'nesma.nader5522@student.iti.gov.eg', N'nesmanader5522', N'2001-02-26', N'Female', N'118 Giza Street', N'Business Administration', N'Mansoura University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5523, N'Abeer Hassan', N'abeer.hassan5523@student.iti.gov.eg', N'abeerhassan5523', N'1996-02-13', N'Female', N'185 Giza Street', N'Commerce', N'Helwan University', 6, 7, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5524, N'Abeer Adly', N'abeer.adly5524@student.iti.gov.eg', N'abeeradly5524', N'1998-07-12', N'Female', N'116 Giza Street', N'Science', N'Assiut University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5525, N'Manal Atef', N'manal.atef5525@student.iti.gov.eg', N'manalatef5525', N'2005-08-12', N'Female', N'164 Giza Street', N'Business Administration', N'Tanta University', 6, 7, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5526, N'Wafaa Salah', N'wafaa.salah5526@student.iti.gov.eg', N'wafaasalah5526', N'2003-08-03', N'Female', N'154 Giza Street', N'Mathematics', N'Beni-Suef University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5527, N'Ehab Ashraf', N'ehab.ashraf5527@student.iti.gov.eg', N'ehabashraf5527', N'2003-11-13', N'Male', N'156 Giza Street', N'Science', N'Alexandria University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5528, N'Tamer Nour', N'tamer.nour5528@student.iti.gov.eg', N'tamernour5528', N'1995-04-03', N'Male', N'99 Giza Street', N'Engineering', N'Suez Canal University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5529, N'Nasser Hassan', N'nasser.hassan5529@student.iti.gov.eg', N'nasserhassan5529', N'2001-08-01', N'Male', N'100 Giza Street', N'Engineering', N'Minia University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5530, N'Samar Hosny', N'samar.hosny5530@student.iti.gov.eg', N'samarhosny5530', N'2001-03-09', N'Female', N'101 Giza Street', N'Business Administration', N'Alexandria University', 6, 7, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5531, N'Salma Walid', N'salma.walid5531@student.iti.gov.eg', N'salmawalid5531', N'2004-11-03', N'Female', N'61 Giza Street', N'Information Systems', N'Assiut University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5532, N'Injy Bassem', N'injy.bassem5532@student.iti.gov.eg', N'injybassem5532', N'2002-02-01', N'Female', N'70 Giza Street', N'Information Systems', N'Cairo University', 6, 12, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5533, N'Ahmed Ali', N'ahmed.ali5533@student.iti.gov.eg', N'ahmedali5533', N'2002-09-27', N'Male', N'77 Giza Street', N'Science', N'Tanta University', 6, 7, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5534, N'Engy Saeed', N'engy.saeed5534@student.iti.gov.eg', N'engysaeed5534', N'2000-07-12', N'Female', N'168 Giza Street', N'Engineering', N'Mansoura University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5535, N'Tamer Youssef', N'tamer.youssef5535@student.iti.gov.eg', N'tameryoussef5535', N'1995-03-29', N'Male', N'162 Giza Street', N'Business Administration', N'Alexandria University', 6, 12, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5536, N'Dalia Adham', N'dalia.adham5536@student.iti.gov.eg', N'daliaadham5536', N'1996-09-14', N'Female', N'118 Giza Street', N'Information Systems', N'Ain Shams University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5537, N'Ghada Hosny', N'ghada.hosny5537@student.iti.gov.eg', N'ghadahosny5537', N'1999-07-16', N'Female', N'104 Giza Street', N'Arts', N'Mansoura University', 6, 7, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5538, N'Essam Nabil', N'essam.nabil5538@student.iti.gov.eg', N'essamnabil5538', N'2003-12-26', N'Male', N'28 Giza Street', N'Science', N'Ain Shams University', 6, 7, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5539, N'Nasser Hesham', N'nasser.hesham5539@student.iti.gov.eg', N'nasserhesham5539', N'2000-08-30', N'Male', N'24 Giza Street', N'Business Administration', N'Ain Shams University', 6, 7, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5540, N'Hanaa Helmy', N'hanaa.helmy5540@student.iti.gov.eg', N'hanaahelmy5540', N'1997-09-05', N'Female', N'42 Giza Street', N'Computer Science', N'Assiut University', 6, 4, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5541, N'Olfat Hani', N'olfat.hani5541@student.iti.gov.eg', N'olfathani5541', N'2005-01-25', N'Female', N'119 Giza Street', N'Engineering', N'Minia University', 6, 12, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5542, N'Heba Taher', N'heba.taher5542@student.iti.gov.eg', N'hebataher5542', N'1995-03-31', N'Female', N'169 Giza Street', N'Science', N'Minia University', 6, 12, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5543, N'Sherif Hamdi', N'sherif.hamdi5543@student.iti.gov.eg', N'sherifhamdi5543', N'2005-07-30', N'Male', N'193 Giza Street', N'Business Administration', N'Cairo University', 6, 4, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5544, N'Zaki Adel', N'zaki.adel5544@student.iti.gov.eg', N'zakiadel5544', N'2003-06-24', N'Male', N'94 Giza Street', N'Business Administration', N'Assiut University', 6, 4, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5545, N'Nadia Adham', N'nadia.adham5545@student.iti.gov.eg', N'nadiaadham5545', N'1997-01-31', N'Female', N'100 Giza Street', N'Mathematics', N'Zagazig University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5546, N'Gamal Waleed', N'gamal.waleed5546@student.iti.gov.eg', N'gamalwaleed5546', N'1998-07-17', N'Male', N'1 Giza Street', N'Arts', N'Minia University', 6, 12, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5547, N'Abeer Taher', N'abeer.taher5547@student.iti.gov.eg', N'abeertaher5547', N'2000-06-12', N'Female', N'99 Giza Street', N'Science', N'Minia University', 6, 4, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5548, N'Mohamed Adham', N'mohamed.adham5548@student.iti.gov.eg', N'mohamedadham5548', N'1998-04-30', N'Male', N'68 Giza Street', N'Business Administration', N'Zagazig University', 6, 4, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5549, N'Hoda Adly', N'hoda.adly5549@student.iti.gov.eg', N'hodaadly5549', N'2000-01-11', N'Female', N'139 Giza Street', N'Business Administration', N'Cairo University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5550, N'Omar Mostafa', N'omar.mostafa5550@student.iti.gov.eg', N'omarmostafa5550', N'2004-12-29', N'Male', N'175 Giza Street', N'Information Systems', N'Beni-Suef University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5551, N'Samy Fady', N'samy.fady5551@student.iti.gov.eg', N'samyfady5551', N'1996-08-06', N'Male', N'186 Giza Street', N'Science', N'Assiut University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5552, N'Ehab Naguib', N'ehab.naguib5552@student.iti.gov.eg', N'ehabnaguib5552', N'1996-12-04', N'Male', N'8 Giza Street', N'Science', N'Mansoura University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5553, N'Manal Zayed', N'manal.zayed5553@student.iti.gov.eg', N'manalzayed5553', N'1995-12-04', N'Female', N'107 Giza Street', N'Information Systems', N'Suez Canal University', 6, 4, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5554, N'Alaa Waleed', N'alaa.waleed5554@student.iti.gov.eg', N'alaawaleed5554', N'2002-04-24', N'Male', N'21 Giza Street', N'Arts', N'Cairo University', 6, 7, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5555, N'Zeinab Hamed', N'zeinab.hamed5555@student.iti.gov.eg', N'zeinabhamed5555', N'1998-06-28', N'Female', N'190 Giza Street', N'Information Systems', N'Ain Shams University', 6, 4, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5556, N'Salma Lotfy', N'salma.lotfy5556@student.iti.gov.eg', N'salmalotfy5556', N'2003-06-17', N'Female', N'47 Giza Street', N'Information Systems', N'Mansoura University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5557, N'Mona Amgad', N'mona.amgad5557@student.iti.gov.eg', N'monaamgad5557', N'2000-06-08', N'Female', N'100 Giza Street', N'Engineering', N'Mansoura University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5558, N'Hassan Lotfy', N'hassan.lotfy5558@student.iti.gov.eg', N'hassanlotfy5558', N'1996-05-20', N'Male', N'25 Giza Street', N'Information Systems', N'Beni-Suef University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5559, N'Gamal Fouad', N'gamal.fouad5559@student.iti.gov.eg', N'gamalfouad5559', N'1995-01-03', N'Male', N'83 Giza Street', N'Science', N'Mansoura University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5560, N'Tarek Bassem', N'tarek.bassem5560@student.iti.gov.eg', N'tarekbassem5560', N'1999-11-21', N'Male', N'105 Giza Street', N'Science', N'Suez Canal University', 6, 4, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5561, N'Ibrahim Badr', N'ibrahim.badr5561@student.iti.gov.eg', N'ibrahimbadr5561', N'1997-01-04', N'Male', N'188 Giza Street', N'Engineering', N'Ain Shams University', 6, 12, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5562, N'Mona Lotfy', N'mona.lotfy5562@student.iti.gov.eg', N'monalotfy5562', N'1998-02-12', N'Female', N'181 Giza Street', N'Information Systems', N'Alexandria University', 6, 4, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5563, N'Shaimaa Mansour', N'shaimaa.mansour5563@student.iti.gov.eg', N'shaimaamansour5563', N'1997-01-26', N'Female', N'71 Giza Street', N'Arts', N'Assiut University', 6, 7, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5564, N'Hany Youssef', N'hany.youssef5564@student.iti.gov.eg', N'hanyyoussef5564', N'1997-05-01', N'Male', N'194 Giza Street', N'Science', N'Tanta University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5565, N'Neveen Ghoneim', N'neveen.ghoneim5565@student.iti.gov.eg', N'neveenghoneim5565', N'2005-07-01', N'Female', N'154 Giza Street', N'Business Administration', N'Beni-Suef University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5566, N'Mariam Tamer', N'mariam.tamer5566@student.iti.gov.eg', N'mariamtamer5566', N'2002-01-15', N'Female', N'163 Giza Street', N'Mathematics', N'Suez Canal University', 6, 4, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5567, N'Amr Naguib', N'amr.naguib5567@student.iti.gov.eg', N'amrnaguib5567', N'2003-04-28', N'Male', N'173 Giza Street', N'Arts', N'Cairo University', 6, 4, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5568, N'Gamal Nabil', N'gamal.nabil5568@student.iti.gov.eg', N'gamalnabil5568', N'2003-08-28', N'Male', N'193 Giza Street', N'Commerce', N'Suez Canal University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5569, N'Zeinab Gamal', N'zeinab.gamal5569@student.iti.gov.eg', N'zeinabgamal5569', N'1996-07-12', N'Female', N'168 Giza Street', N'Arts', N'Ain Shams University', 6, 12, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5570, N'Neveen Ahmed', N'neveen.ahmed5570@student.iti.gov.eg', N'neveenahmed5570', N'1997-10-05', N'Female', N'171 Giza Street', N'Information Systems', N'Zagazig University', 6, 7, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5571, N'Dina Mansour', N'dina.mansour5571@student.iti.gov.eg', N'dinamansour5571', N'2002-05-21', N'Female', N'9 Giza Street', N'Information Systems', N'Suez Canal University', 6, 4, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5572, N'Samy Khaled', N'samy.khaled5572@student.iti.gov.eg', N'samykhaled5572', N'2000-01-06', N'Male', N'173 Giza Street', N'Computer Science', N'Zagazig University', 6, 4, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5573, N'Safaa Hossam', N'safaa.hossam5573@student.iti.gov.eg', N'safaahossam5573', N'2004-08-12', N'Female', N'118 Giza Street', N'Business Administration', N'Helwan University', 6, 12, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5574, N'Sami Ramadan', N'sami.ramadan5574@student.iti.gov.eg', N'samiramadan5574', N'1998-05-28', N'Male', N'13 Giza Street', N'Engineering', N'Ain Shams University', 6, 12, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5575, N'Fady Selim', N'fady.selim5575@student.iti.gov.eg', N'fadyselim5575', N'2005-08-15', N'Male', N'57 Giza Street', N'Mathematics', N'Tanta University', 6, 7, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5576, N'Yehia Hosny', N'yehia.hosny5576@student.iti.gov.eg', N'yehiahosny5576', N'2004-02-11', N'Male', N'103 Giza Street', N'Commerce', N'Assiut University', 6, 12, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5577, N'Essam Hossam', N'essam.hossam5577@student.iti.gov.eg', N'essamhossam5577', N'2004-08-27', N'Male', N'178 Giza Street', N'Information Systems', N'Cairo University', 6, 1, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5578, N'Hala Tawfik', N'hala.tawfik5578@student.iti.gov.eg', N'halatawfik5578', N'1996-05-15', N'Female', N'15 Giza Street', N'Business Administration', N'Alexandria University', 6, 4, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5579, N'Hazem Yousry', N'hazem.yousry5579@student.iti.gov.eg', N'hazemyousry5579', N'1996-11-01', N'Male', N'149 Giza Street', N'Information Systems', N'Tanta University', 6, 12, 3, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5580, N'Youssef Mostafa', N'youssef.mostafa5580@student.iti.gov.eg', N'youssefmostafa5580', N'1997-01-20', N'Male', N'148 Giza Street', N'Arts', N'Tanta University', 6, 7, 3, N'Active');

-- Mansoura Branch Students (120 students)
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5581, N'Youssef Ahmed', N'youssef.ahmed5581@student.iti.gov.eg', N'youssefahmed5581', N'2004-10-20', N'Male', N'140 Mansoura Street', N'Science', N'Minia University', 6, 6, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5582, N'Nada Kamal', N'nada.kamal5582@student.iti.gov.eg', N'nadakamal5582', N'1998-12-28', N'Female', N'23 Mansoura Street', N'Engineering', N'Suez Canal University', 6, 6, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5583, N'Amr Naguib', N'amr.naguib5583@student.iti.gov.eg', N'amrnaguib5583', N'2001-07-05', N'Male', N'189 Mansoura Street', N'Commerce', N'Mansoura University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5584, N'Khaled Essam', N'khaled.essam5584@student.iti.gov.eg', N'khaledessam5584', N'2005-03-12', N'Male', N'117 Mansoura Street', N'Arts', N'Beni-Suef University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5585, N'Safaa Gamal', N'safaa.gamal5585@student.iti.gov.eg', N'safaagamal5585', N'2000-05-01', N'Female', N'88 Mansoura Street', N'Science', N'Ain Shams University', 6, 6, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5586, N'Hany Tamer', N'hany.tamer5586@student.iti.gov.eg', N'hanytamer5586', N'1999-04-01', N'Male', N'65 Mansoura Street', N'Information Systems', N'Assiut University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5587, N'Noha Adham', N'noha.adham5587@student.iti.gov.eg', N'nohaadham5587', N'1999-02-05', N'Female', N'85 Mansoura Street', N'Mathematics', N'Mansoura University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5588, N'Tariq Morsy', N'tariq.morsy5588@student.iti.gov.eg', N'tariqmorsy5588', N'1999-09-23', N'Male', N'88 Mansoura Street', N'Engineering', N'Suez Canal University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5589, N'Sami Waleed', N'sami.waleed5589@student.iti.gov.eg', N'samiwaleed5589', N'1995-11-24', N'Male', N'88 Mansoura Street', N'Engineering', N'Minia University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5590, N'Hala Fawzy', N'hala.fawzy5590@student.iti.gov.eg', N'halafawzy5590', N'1995-05-13', N'Female', N'154 Mansoura Street', N'Science', N'Helwan University', 6, 6, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5591, N'Lamia Bassem', N'lamia.bassem5591@student.iti.gov.eg', N'lamiabassem5591', N'1997-01-07', N'Female', N'176 Mansoura Street', N'Computer Science', N'Suez Canal University', 6, 6, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5592, N'Karima Nasr', N'karima.nasr5592@student.iti.gov.eg', N'karimanasr5592', N'2003-04-30', N'Female', N'132 Mansoura Street', N'Commerce', N'Alexandria University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5593, N'Dina Osama', N'dina.osama5593@student.iti.gov.eg', N'dinaosama5593', N'1996-11-02', N'Female', N'41 Mansoura Street', N'Business Administration', N'Mansoura University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5594, N'Neveen Salah', N'neveen.salah5594@student.iti.gov.eg', N'neveensalah5594', N'1998-09-06', N'Female', N'65 Mansoura Street', N'Commerce', N'Minia University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5595, N'Salma Hamdi', N'salma.hamdi5595@student.iti.gov.eg', N'salmahamdi5595', N'1997-05-17', N'Female', N'100 Mansoura Street', N'Information Systems', N'Beni-Suef University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5596, N'Samia Hossam', N'samia.hossam5596@student.iti.gov.eg', N'samiahossam5596', N'2000-09-13', N'Female', N'86 Mansoura Street', N'Mathematics', N'Cairo University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5597, N'Karim Adel', N'karim.adel5597@student.iti.gov.eg', N'karimadel5597', N'2003-01-18', N'Male', N'37 Mansoura Street', N'Science', N'Cairo University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5598, N'Omar Maher', N'omar.maher5598@student.iti.gov.eg', N'omarmaher5598', N'2003-04-04', N'Male', N'136 Mansoura Street', N'Information Systems', N'Ain Shams University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5599, N'Mohamed Osama', N'mohamed.osama5599@student.iti.gov.eg', N'mohamedosama5599', N'2005-10-22', N'Male', N'197 Mansoura Street', N'Computer Science', N'Mansoura University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5600, N'Reem Mohamed', N'reem.mohamed5600@student.iti.gov.eg', N'reemmohamed5600', N'2005-06-29', N'Female', N'199 Mansoura Street', N'Arts', N'Beni-Suef University', 6, 2, 4, N'Active');
GO

INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5601, N'Ali Ramadan', N'ali.ramadan5601@student.iti.gov.eg', N'aliramadan5601', N'2005-01-07', N'Male', N'68 Mansoura Street', N'Mathematics', N'Mansoura University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5602, N'Olfat Walid', N'olfat.walid5602@student.iti.gov.eg', N'olfatwalid5602', N'1995-03-09', N'Female', N'18 Mansoura Street', N'Computer Science', N'Ain Shams University', 6, 6, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5603, N'Eman Ibrahim', N'eman.ibrahim5603@student.iti.gov.eg', N'emanibrahim5603', N'1996-04-04', N'Female', N'99 Mansoura Street', N'Science', N'Beni-Suef University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5604, N'Abeer Hosny', N'abeer.hosny5604@student.iti.gov.eg', N'abeerhosny5604', N'1995-08-16', N'Female', N'184 Mansoura Street', N'Computer Science', N'Minia University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5605, N'Faten Ibrahim', N'faten.ibrahim5605@student.iti.gov.eg', N'fatenibrahim5605', N'1999-03-05', N'Female', N'23 Mansoura Street', N'Engineering', N'Zagazig University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5606, N'Bassem Wagdy', N'bassem.wagdy5606@student.iti.gov.eg', N'bassemwagdy5606', N'1995-06-27', N'Male', N'35 Mansoura Street', N'Arts', N'Cairo University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5607, N'Raafat Nour', N'raafat.nour5607@student.iti.gov.eg', N'raafatnour5607', N'2002-12-28', N'Male', N'129 Mansoura Street', N'Computer Science', N'Cairo University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5608, N'Rana Ramy', N'rana.ramy5608@student.iti.gov.eg', N'ranaramy5608', N'2005-06-06', N'Female', N'5 Mansoura Street', N'Commerce', N'Helwan University', 6, 6, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5609, N'Hoda Mahmoud', N'hoda.mahmoud5609@student.iti.gov.eg', N'hodamahmoud5609', N'1997-09-30', N'Female', N'12 Mansoura Street', N'Computer Science', N'Alexandria University', 6, 6, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5610, N'Samar Refaat', N'samar.refaat5610@student.iti.gov.eg', N'samarrefaat5610', N'2001-02-08', N'Female', N'50 Mansoura Street', N'Engineering', N'Beni-Suef University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5611, N'Safaa Mohamed', N'safaa.mohamed5611@student.iti.gov.eg', N'safaamohamed5611', N'1999-10-24', N'Female', N'185 Mansoura Street', N'Science', N'Tanta University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5612, N'Zeinab Ragab', N'zeinab.ragab5612@student.iti.gov.eg', N'zeinabragab5612', N'1997-03-24', N'Female', N'159 Mansoura Street', N'Mathematics', N'Ain Shams University', 6, 6, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5613, N'Hala Sobhy', N'hala.sobhy5613@student.iti.gov.eg', N'halasobhy5613', N'2001-07-20', N'Female', N'129 Mansoura Street', N'Business Administration', N'Ain Shams University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5614, N'Rana Fahim', N'rana.fahim5614@student.iti.gov.eg', N'ranafahim5614', N'1995-05-03', N'Female', N'29 Mansoura Street', N'Engineering', N'Tanta University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5615, N'Karima Maher', N'karima.maher5615@student.iti.gov.eg', N'karimamaher5615', N'1996-08-04', N'Female', N'174 Mansoura Street', N'Business Administration', N'Zagazig University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5616, N'Nada Nader', N'nada.nader5616@student.iti.gov.eg', N'nadanader5616', N'2001-10-02', N'Female', N'55 Mansoura Street', N'Computer Science', N'Mansoura University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5617, N'Naglaa Sobhy', N'naglaa.sobhy5617@student.iti.gov.eg', N'naglaasobhy5617', N'2000-10-27', N'Female', N'193 Mansoura Street', N'Information Systems', N'Mansoura University', 6, 6, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5618, N'Abeer Hosny', N'abeer.hosny5618@student.iti.gov.eg', N'abeerhosny5618', N'1995-06-22', N'Female', N'19 Mansoura Street', N'Engineering', N'Beni-Suef University', 6, 6, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5619, N'Mohamed Ali', N'mohamed.ali5619@student.iti.gov.eg', N'mohamedali5619', N'2003-08-28', N'Male', N'101 Mansoura Street', N'Arts', N'Alexandria University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5620, N'Amr Nour', N'amr.nour5620@student.iti.gov.eg', N'amrnour5620', N'2000-05-28', N'Male', N'134 Mansoura Street', N'Science', N'Mansoura University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5621, N'Injy Yasser', N'injy.yasser5621@student.iti.gov.eg', N'injyyasser5621', N'1998-04-14', N'Female', N'3 Mansoura Street', N'Science', N'Beni-Suef University', 6, 6, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5622, N'Hazem Gamal', N'hazem.gamal5622@student.iti.gov.eg', N'hazemgamal5622', N'2005-08-11', N'Male', N'162 Mansoura Street', N'Science', N'Suez Canal University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5623, N'Alaa Amgad', N'alaa.amgad5623@student.iti.gov.eg', N'alaaamgad5623', N'2000-07-29', N'Male', N'137 Mansoura Street', N'Computer Science', N'Ain Shams University', 6, 6, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5624, N'Mahmoud Tawfik', N'mahmoud.tawfik5624@student.iti.gov.eg', N'mahmoudtawfik5624', N'1996-07-05', N'Male', N'176 Mansoura Street', N'Engineering', N'Beni-Suef University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5625, N'Reda Maher', N'reda.maher5625@student.iti.gov.eg', N'redamaher5625', N'2004-06-02', N'Male', N'90 Mansoura Street', N'Business Administration', N'Helwan University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5626, N'Hany Zaki', N'hany.zaki5626@student.iti.gov.eg', N'hanyzaki5626', N'1995-04-05', N'Male', N'167 Mansoura Street', N'Business Administration', N'Zagazig University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5627, N'Nasser Maged', N'nasser.maged5627@student.iti.gov.eg', N'nassermaged5627', N'2002-03-05', N'Male', N'172 Mansoura Street', N'Commerce', N'Minia University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5628, N'Reda Ghoneim', N'reda.ghoneim5628@student.iti.gov.eg', N'redaghoneim5628', N'2004-07-22', N'Male', N'152 Mansoura Street', N'Mathematics', N'Helwan University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5629, N'Karim Tawfik', N'karim.tawfik5629@student.iti.gov.eg', N'karimtawfik5629', N'1998-05-03', N'Male', N'59 Mansoura Street', N'Science', N'Ain Shams University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5630, N'Mostafa Sami', N'mostafa.sami5630@student.iti.gov.eg', N'mostafasami5630', N'2000-10-18', N'Male', N'107 Mansoura Street', N'Computer Science', N'Assiut University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5631, N'Aya Ghoneim', N'aya.ghoneim5631@student.iti.gov.eg', N'ayaghoneim5631', N'2001-10-01', N'Female', N'19 Mansoura Street', N'Arts', N'Minia University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5632, N'Heba Mohamed', N'heba.mohamed5632@student.iti.gov.eg', N'hebamohamed5632', N'2005-06-29', N'Female', N'105 Mansoura Street', N'Computer Science', N'Cairo University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5633, N'Tamer Tarek', N'tamer.tarek5633@student.iti.gov.eg', N'tamertarek5633', N'2002-01-06', N'Male', N'72 Mansoura Street', N'Mathematics', N'Minia University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5634, N'Fatma Adly', N'fatma.adly5634@student.iti.gov.eg', N'fatmaadly5634', N'2005-06-09', N'Female', N'113 Mansoura Street', N'Mathematics', N'Suez Canal University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5635, N'Rania Yousry', N'rania.yousry5635@student.iti.gov.eg', N'raniayousry5635', N'1998-02-02', N'Female', N'85 Mansoura Street', N'Computer Science', N'Assiut University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5636, N'Zeinab Ramadan', N'zeinab.ramadan5636@student.iti.gov.eg', N'zeinabramadan5636', N'2000-10-09', N'Female', N'157 Mansoura Street', N'Arts', N'Cairo University', 6, 6, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5637, N'Sherif Saeed', N'sherif.saeed5637@student.iti.gov.eg', N'sherifsaeed5637', N'2002-08-24', N'Male', N'146 Mansoura Street', N'Science', N'Ain Shams University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5638, N'Dalia Taha', N'dalia.taha5638@student.iti.gov.eg', N'daliataha5638', N'2003-07-06', N'Female', N'144 Mansoura Street', N'Business Administration', N'Mansoura University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5639, N'Olfat Atef', N'olfat.atef5639@student.iti.gov.eg', N'olfatatef5639', N'2000-05-10', N'Female', N'149 Mansoura Street', N'Science', N'Zagazig University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5640, N'Dalia Selim', N'dalia.selim5640@student.iti.gov.eg', N'daliaselim5640', N'2002-01-11', N'Female', N'170 Mansoura Street', N'Science', N'Assiut University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5641, N'Ismail Hamdi', N'ismail.hamdi5641@student.iti.gov.eg', N'ismailhamdi5641', N'2001-02-28', N'Male', N'40 Mansoura Street', N'Engineering', N'Zagazig University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5642, N'Essam Refaat', N'essam.refaat5642@student.iti.gov.eg', N'essamrefaat5642', N'1997-04-08', N'Male', N'172 Mansoura Street', N'Mathematics', N'Suez Canal University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5643, N'Nabil Shalaby', N'nabil.shalaby5643@student.iti.gov.eg', N'nabilshalaby5643', N'1995-10-11', N'Male', N'158 Mansoura Street', N'Engineering', N'Suez Canal University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5644, N'Mohamed Nabil', N'mohamed.nabil5644@student.iti.gov.eg', N'mohamednabil5644', N'2001-09-17', N'Male', N'127 Mansoura Street', N'Science', N'Assiut University', 6, 6, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5645, N'Hany Nasr', N'hany.nasr5645@student.iti.gov.eg', N'hanynasr5645', N'2002-02-17', N'Male', N'147 Mansoura Street', N'Information Systems', N'Tanta University', 6, 6, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5646, N'Wafaa Tawfik', N'wafaa.tawfik5646@student.iti.gov.eg', N'wafaatawfik5646', N'1998-12-11', N'Female', N'147 Mansoura Street', N'Computer Science', N'Minia University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5647, N'Raafat Tamer', N'raafat.tamer5647@student.iti.gov.eg', N'raafattamer5647', N'2001-07-06', N'Male', N'182 Mansoura Street', N'Engineering', N'Tanta University', 6, 6, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5648, N'Hend Naguib', N'hend.naguib5648@student.iti.gov.eg', N'hendnaguib5648', N'1995-06-06', N'Female', N'134 Mansoura Street', N'Business Administration', N'Alexandria University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5649, N'Nada Zayed', N'nada.zayed5649@student.iti.gov.eg', N'nadazayed5649', N'2003-12-20', N'Female', N'137 Mansoura Street', N'Science', N'Mansoura University', 6, 6, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5650, N'Hanaa Fawzy', N'hanaa.fawzy5650@student.iti.gov.eg', N'hanaafawzy5650', N'2004-03-03', N'Female', N'56 Mansoura Street', N'Mathematics', N'Ain Shams University', 6, 6, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5651, N'Mahmoud Anwar', N'mahmoud.anwar5651@student.iti.gov.eg', N'mahmoudanwar5651', N'2000-04-05', N'Male', N'138 Mansoura Street', N'Information Systems', N'Beni-Suef University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5652, N'Aya Hatem', N'aya.hatem5652@student.iti.gov.eg', N'ayahatem5652', N'2003-02-27', N'Female', N'157 Mansoura Street', N'Business Administration', N'Assiut University', 6, 6, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5653, N'Ali Morsy', N'ali.morsy5653@student.iti.gov.eg', N'alimorsy5653', N'1998-11-17', N'Male', N'13 Mansoura Street', N'Engineering', N'Helwan University', 6, 6, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5654, N'Tarek Amgad', N'tarek.amgad5654@student.iti.gov.eg', N'tarekamgad5654', N'1999-04-29', N'Male', N'130 Mansoura Street', N'Engineering', N'Minia University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5655, N'Noha Zaki', N'noha.zaki5655@student.iti.gov.eg', N'nohazaki5655', N'2000-02-09', N'Female', N'147 Mansoura Street', N'Commerce', N'Suez Canal University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5656, N'Wael Hosny', N'wael.hosny5656@student.iti.gov.eg', N'waelhosny5656', N'2003-05-15', N'Male', N'183 Mansoura Street', N'Arts', N'Alexandria University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5657, N'Ghada Amr', N'ghada.amr5657@student.iti.gov.eg', N'ghadaamr5657', N'2002-06-18', N'Female', N'191 Mansoura Street', N'Arts', N'Minia University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5658, N'Wael Hamed', N'wael.hamed5658@student.iti.gov.eg', N'waelhamed5658', N'1997-08-31', N'Male', N'116 Mansoura Street', N'Computer Science', N'Tanta University', 6, 6, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5659, N'Faten Saad', N'faten.saad5659@student.iti.gov.eg', N'fatensaad5659', N'1998-11-22', N'Female', N'97 Mansoura Street', N'Engineering', N'Zagazig University', 6, 6, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5660, N'Tarek Taha', N'tarek.taha5660@student.iti.gov.eg', N'tarektaha5660', N'2005-09-29', N'Male', N'121 Mansoura Street', N'Science', N'Assiut University', 6, 6, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5661, N'Nesma Selim', N'nesma.selim5661@student.iti.gov.eg', N'nesmaselim5661', N'1995-01-19', N'Female', N'33 Mansoura Street', N'Information Systems', N'Tanta University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5662, N'Reem Essam', N'reem.essam5662@student.iti.gov.eg', N'reemessam5662', N'1996-08-26', N'Female', N'95 Mansoura Street', N'Commerce', N'Cairo University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5663, N'Reda Zaki', N'reda.zaki5663@student.iti.gov.eg', N'redazaki5663', N'2000-03-07', N'Male', N'137 Mansoura Street', N'Commerce', N'Beni-Suef University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5664, N'Hany Morsy', N'hany.morsy5664@student.iti.gov.eg', N'hanymorsy5664', N'1996-11-28', N'Male', N'169 Mansoura Street', N'Business Administration', N'Assiut University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5665, N'Karim Youssef', N'karim.youssef5665@student.iti.gov.eg', N'karimyoussef5665', N'2005-11-20', N'Male', N'174 Mansoura Street', N'Science', N'Cairo University', 6, 6, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5666, N'Magdy Tamer', N'magdy.tamer5666@student.iti.gov.eg', N'magdytamer5666', N'2002-04-28', N'Male', N'134 Mansoura Street', N'Science', N'Alexandria University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5667, N'Engy Helmy', N'engy.helmy5667@student.iti.gov.eg', N'engyhelmy5667', N'2005-12-24', N'Female', N'71 Mansoura Street', N'Commerce', N'Suez Canal University', 6, 6, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5668, N'Essam Mansour', N'essam.mansour5668@student.iti.gov.eg', N'essammansour5668', N'2000-05-18', N'Male', N'190 Mansoura Street', N'Engineering', N'Suez Canal University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5669, N'Sara Taher', N'sara.taher5669@student.iti.gov.eg', N'sarataher5669', N'1997-06-08', N'Female', N'117 Mansoura Street', N'Science', N'Cairo University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5670, N'Abeer Sami', N'abeer.sami5670@student.iti.gov.eg', N'abeersami5670', N'1997-12-22', N'Female', N'136 Mansoura Street', N'Mathematics', N'Helwan University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5671, N'Zeinab Mostafa', N'zeinab.mostafa5671@student.iti.gov.eg', N'zeinabmostafa5671', N'2000-09-21', N'Female', N'65 Mansoura Street', N'Mathematics', N'Suez Canal University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5672, N'Sherif Essam', N'sherif.essam5672@student.iti.gov.eg', N'sherifessam5672', N'2002-05-26', N'Male', N'51 Mansoura Street', N'Computer Science', N'Minia University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5673, N'Sara Fawzy', N'sara.fawzy5673@student.iti.gov.eg', N'sarafawzy5673', N'2004-03-09', N'Female', N'31 Mansoura Street', N'Information Systems', N'Beni-Suef University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5674, N'Wafaa Fady', N'wafaa.fady5674@student.iti.gov.eg', N'wafaafady5674', N'1998-05-04', N'Female', N'98 Mansoura Street', N'Mathematics', N'Alexandria University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5675, N'Neveen Ahmed', N'neveen.ahmed5675@student.iti.gov.eg', N'neveenahmed5675', N'2004-03-26', N'Female', N'154 Mansoura Street', N'Science', N'Mansoura University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5676, N'Rana Fahmy', N'rana.fahmy5676@student.iti.gov.eg', N'ranafahmy5676', N'2004-09-15', N'Female', N'105 Mansoura Street', N'Science', N'Alexandria University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5677, N'Waleed Lotfy', N'waleed.lotfy5677@student.iti.gov.eg', N'waleedlotfy5677', N'1996-08-14', N'Male', N'67 Mansoura Street', N'Commerce', N'Minia University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5678, N'Hend Samy', N'hend.samy5678@student.iti.gov.eg', N'hendsamy5678', N'1999-05-22', N'Female', N'60 Mansoura Street', N'Commerce', N'Minia University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5679, N'Hany Hossam', N'hany.hossam5679@student.iti.gov.eg', N'hanyhossam5679', N'1998-06-20', N'Male', N'19 Mansoura Street', N'Computer Science', N'Minia University', 6, 6, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5680, N'Bassem Saeed', N'bassem.saeed5680@student.iti.gov.eg', N'bassemsaeed5680', N'1996-05-12', N'Male', N'74 Mansoura Street', N'Science', N'Cairo University', 6, 6, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5681, N'Amal Ali', N'amal.ali5681@student.iti.gov.eg', N'amalali5681', N'1996-05-31', N'Female', N'191 Mansoura Street', N'Commerce', N'Zagazig University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5682, N'Maha Yasser', N'maha.yasser5682@student.iti.gov.eg', N'mahayasser5682', N'1997-03-17', N'Female', N'71 Mansoura Street', N'Arts', N'Suez Canal University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5683, N'Soha Nabil', N'soha.nabil5683@student.iti.gov.eg', N'sohanabil5683', N'1995-08-05', N'Female', N'60 Mansoura Street', N'Business Administration', N'Zagazig University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5684, N'Mostafa Ghoneim', N'mostafa.ghoneim5684@student.iti.gov.eg', N'mostafaghoneim5684', N'2003-02-28', N'Male', N'126 Mansoura Street', N'Engineering', N'Zagazig University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5685, N'Nada Hassan', N'nada.hassan5685@student.iti.gov.eg', N'nadahassan5685', N'1996-08-01', N'Female', N'32 Mansoura Street', N'Commerce', N'Mansoura University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5686, N'Laila Maged', N'laila.maged5686@student.iti.gov.eg', N'lailamaged5686', N'2004-06-12', N'Female', N'54 Mansoura Street', N'Commerce', N'Zagazig University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5687, N'Lamia Hamed', N'lamia.hamed5687@student.iti.gov.eg', N'lamiahamed5687', N'1996-02-10', N'Female', N'169 Mansoura Street', N'Science', N'Assiut University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5688, N'Karima Amgad', N'karima.amgad5688@student.iti.gov.eg', N'karimaamgad5688', N'1998-11-24', N'Female', N'40 Mansoura Street', N'Mathematics', N'Ain Shams University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5689, N'Samy Tamer', N'samy.tamer5689@student.iti.gov.eg', N'samytamer5689', N'2005-12-17', N'Male', N'151 Mansoura Street', N'Science', N'Assiut University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5690, N'Ibrahim Ramzy', N'ibrahim.ramzy5690@student.iti.gov.eg', N'ibrahimramzy5690', N'2001-04-23', N'Male', N'45 Mansoura Street', N'Arts', N'Tanta University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5691, N'Omar Maher', N'omar.maher5691@student.iti.gov.eg', N'omarmaher5691', N'1998-09-25', N'Male', N'52 Mansoura Street', N'Science', N'Cairo University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5692, N'Zaki Hassan', N'zaki.hassan5692@student.iti.gov.eg', N'zakihassan5692', N'1997-02-09', N'Male', N'37 Mansoura Street', N'Arts', N'Beni-Suef University', 6, 6, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5693, N'Engy Ragab', N'engy.ragab5693@student.iti.gov.eg', N'engyragab5693', N'2002-03-22', N'Female', N'3 Mansoura Street', N'Arts', N'Helwan University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5694, N'Mostafa Naguib', N'mostafa.naguib5694@student.iti.gov.eg', N'mostafanaguib5694', N'2002-07-27', N'Male', N'191 Mansoura Street', N'Mathematics', N'Beni-Suef University', 6, 6, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5695, N'Rania Samy', N'rania.samy5695@student.iti.gov.eg', N'raniasamy5695', N'2005-03-19', N'Female', N'113 Mansoura Street', N'Commerce', N'Zagazig University', 6, 6, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5696, N'Samia Anwar', N'samia.anwar5696@student.iti.gov.eg', N'samiaanwar5696', N'1996-09-06', N'Female', N'119 Mansoura Street', N'Science', N'Ain Shams University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5697, N'Nasser Ramzy', N'nasser.ramzy5697@student.iti.gov.eg', N'nasserramzy5697', N'2001-01-21', N'Male', N'54 Mansoura Street', N'Engineering', N'Assiut University', 6, 2, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5698, N'Ibrahim Sobhy', N'ibrahim.sobhy5698@student.iti.gov.eg', N'ibrahimsobhy5698', N'2001-07-23', N'Male', N'173 Mansoura Street', N'Commerce', N'Mansoura University', 6, 6, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5699, N'Noha Samy', N'noha.samy5699@student.iti.gov.eg', N'nohasamy5699', N'1996-01-17', N'Female', N'24 Mansoura Street', N'Information Systems', N'Beni-Suef University', 6, 11, 4, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5700, N'Ahmed Labib', N'ahmed.labib5700@student.iti.gov.eg', N'ahmedlabib5700', N'1998-12-17', N'Male', N'27 Mansoura Street', N'Information Systems', N'Tanta University', 6, 6, 4, N'Active');
GO


-- Damanhur Branch Students (80 students)
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5701, N'Tamer Hani', N'tamer.hani5701@student.iti.gov.eg', N'tamerhani5701', N'1995-04-02', N'Male', N'56 Damanhur Street', N'Business Administration', N'Tanta University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5702, N'Nabil Bassem', N'nabil.bassem5702@student.iti.gov.eg', N'nabilbassem5702', N'1998-11-20', N'Male', N'8 Damanhur Street', N'Arts', N'Mansoura University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5703, N'Ghada Mostafa', N'ghada.mostafa5703@student.iti.gov.eg', N'ghadamostafa5703', N'2002-04-02', N'Female', N'135 Damanhur Street', N'Mathematics', N'Ain Shams University', 6, 1, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5704, N'Engy Samy', N'engy.samy5704@student.iti.gov.eg', N'engysamy5704', N'2000-11-24', N'Female', N'21 Damanhur Street', N'Business Administration', N'Zagazig University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5705, N'Nada Mahmoud', N'nada.mahmoud5705@student.iti.gov.eg', N'nadamahmoud5705', N'1998-07-23', N'Female', N'109 Damanhur Street', N'Engineering', N'Alexandria University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5706, N'Soha Mohamed', N'soha.mohamed5706@student.iti.gov.eg', N'sohamohamed5706', N'2005-06-19', N'Female', N'168 Damanhur Street', N'Mathematics', N'Alexandria University', 6, 1, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5707, N'Seif Waleed', N'seif.waleed5707@student.iti.gov.eg', N'seifwaleed5707', N'2003-04-28', N'Male', N'96 Damanhur Street', N'Science', N'Ain Shams University', 6, 1, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5708, N'Naglaa Hamed', N'naglaa.hamed5708@student.iti.gov.eg', N'naglaahamed5708', N'1996-04-28', N'Female', N'54 Damanhur Street', N'Mathematics', N'Assiut University', 6, 1, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5709, N'Raafat Gamal', N'raafat.gamal5709@student.iti.gov.eg', N'raafatgamal5709', N'2001-07-11', N'Male', N'122 Damanhur Street', N'Science', N'Tanta University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5710, N'Sara Taha', N'sara.taha5710@student.iti.gov.eg', N'sarataha5710', N'2005-10-27', N'Female', N'9 Damanhur Street', N'Arts', N'Cairo University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5711, N'Dina Taha', N'dina.taha5711@student.iti.gov.eg', N'dinataha5711', N'2000-05-15', N'Female', N'70 Damanhur Street', N'Engineering', N'Tanta University', 6, 1, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5712, N'Aya Yousry', N'aya.yousry5712@student.iti.gov.eg', N'ayayousry5712', N'2005-09-07', N'Female', N'151 Damanhur Street', N'Information Systems', N'Helwan University', 6, 1, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5713, N'Hanaa Mansour', N'hanaa.mansour5713@student.iti.gov.eg', N'hanaamansour5713', N'2005-11-01', N'Female', N'180 Damanhur Street', N'Commerce', N'Helwan University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5714, N'Ali Ahmed', N'ali.ahmed5714@student.iti.gov.eg', N'aliahmed5714', N'2005-09-25', N'Male', N'168 Damanhur Street', N'Arts', N'Helwan University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5715, N'Ayman Mansour', N'ayman.mansour5715@student.iti.gov.eg', N'aymanmansour5715', N'1996-11-04', N'Male', N'73 Damanhur Street', N'Science', N'Beni-Suef University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5716, N'Wael Nader', N'wael.nader5716@student.iti.gov.eg', N'waelnader5716', N'2004-06-05', N'Male', N'125 Damanhur Street', N'Information Systems', N'Beni-Suef University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5717, N'Essam Waleed', N'essam.waleed5717@student.iti.gov.eg', N'essamwaleed5717', N'2005-09-09', N'Male', N'19 Damanhur Street', N'Arts', N'Ain Shams University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5718, N'Mona Anwar', N'mona.anwar5718@student.iti.gov.eg', N'monaanwar5718', N'1996-04-24', N'Female', N'49 Damanhur Street', N'Business Administration', N'Cairo University', 6, 1, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5719, N'Hamdy Ashraf', N'hamdy.ashraf5719@student.iti.gov.eg', N'hamdyashraf5719', N'2003-02-14', N'Male', N'178 Damanhur Street', N'Mathematics', N'Suez Canal University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5720, N'Abeer Naguib', N'abeer.naguib5720@student.iti.gov.eg', N'abeernaguib5720', N'1999-12-20', N'Female', N'97 Damanhur Street', N'Business Administration', N'Minia University', 6, 1, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5721, N'Raafat Adly', N'raafat.adly5721@student.iti.gov.eg', N'raafatadly5721', N'1999-07-20', N'Male', N'160 Damanhur Street', N'Information Systems', N'Mansoura University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5722, N'Rania Taher', N'rania.taher5722@student.iti.gov.eg', N'raniataher5722', N'2004-12-12', N'Female', N'190 Damanhur Street', N'Information Systems', N'Ain Shams University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5723, N'Raafat Fouad', N'raafat.fouad5723@student.iti.gov.eg', N'raafatfouad5723', N'2000-07-12', N'Male', N'190 Damanhur Street', N'Mathematics', N'Ain Shams University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5724, N'Hala Mohamed', N'hala.mohamed5724@student.iti.gov.eg', N'halamohamed5724', N'1997-07-05', N'Female', N'140 Damanhur Street', N'Arts', N'Assiut University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5725, N'Amal Fady', N'amal.fady5725@student.iti.gov.eg', N'amalfady5725', N'2005-10-09', N'Female', N'53 Damanhur Street', N'Science', N'Tanta University', 6, 1, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5726, N'Safaa Hamed', N'safaa.hamed5726@student.iti.gov.eg', N'safaahamed5726', N'2002-05-23', N'Female', N'77 Damanhur Street', N'Information Systems', N'Minia University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5727, N'Salma Taher', N'salma.taher5727@student.iti.gov.eg', N'salmataher5727', N'2003-09-02', N'Female', N'58 Damanhur Street', N'Commerce', N'Cairo University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5728, N'Zeinab Mahmoud', N'zeinab.mahmoud5728@student.iti.gov.eg', N'zeinabmahmoud5728', N'1998-02-28', N'Female', N'156 Damanhur Street', N'Arts', N'Alexandria University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5729, N'Mai Nasr', N'mai.nasr5729@student.iti.gov.eg', N'mainasr5729', N'2004-11-13', N'Female', N'51 Damanhur Street', N'Engineering', N'Zagazig University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5730, N'Mostafa Amgad', N'mostafa.amgad5730@student.iti.gov.eg', N'mostafaamgad5730', N'2000-07-26', N'Male', N'187 Damanhur Street', N'Business Administration', N'Assiut University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5731, N'Nesma Fahim', N'nesma.fahim5731@student.iti.gov.eg', N'nesmafahim5731', N'1996-10-26', N'Female', N'131 Damanhur Street', N'Information Systems', N'Ain Shams University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5732, N'Mohamed Tarek', N'mohamed.tarek5732@student.iti.gov.eg', N'mohamedtarek5732', N'1999-02-27', N'Male', N'54 Damanhur Street', N'Information Systems', N'Beni-Suef University', 6, 1, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5733, N'Ghada Taha', N'ghada.taha5733@student.iti.gov.eg', N'ghadataha5733', N'2005-08-22', N'Female', N'108 Damanhur Street', N'Engineering', N'Alexandria University', 6, 1, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5734, N'Nabil Youssef', N'nabil.youssef5734@student.iti.gov.eg', N'nabilyoussef5734', N'2005-06-02', N'Male', N'190 Damanhur Street', N'Computer Science', N'Suez Canal University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5735, N'Olfat Helmy', N'olfat.helmy5735@student.iti.gov.eg', N'olfathelmy5735', N'2001-03-22', N'Female', N'192 Damanhur Street', N'Engineering', N'Zagazig University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5736, N'Zeinab Naguib', N'zeinab.naguib5736@student.iti.gov.eg', N'zeinabnaguib5736', N'2002-08-17', N'Female', N'21 Damanhur Street', N'Commerce', N'Beni-Suef University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5737, N'Nabil Tarek', N'nabil.tarek5737@student.iti.gov.eg', N'nabiltarek5737', N'2003-10-07', N'Male', N'200 Damanhur Street', N'Arts', N'Tanta University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5738, N'Eman Maged', N'eman.maged5738@student.iti.gov.eg', N'emanmaged5738', N'1995-07-28', N'Female', N'157 Damanhur Street', N'Computer Science', N'Cairo University', 6, 1, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5739, N'Alaa Hossam', N'alaa.hossam5739@student.iti.gov.eg', N'alaahossam5739', N'2003-01-01', N'Male', N'86 Damanhur Street', N'Mathematics', N'Tanta University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5740, N'Nabil Sherif', N'nabil.sherif5740@student.iti.gov.eg', N'nabilsherif5740', N'2000-02-04', N'Male', N'32 Damanhur Street', N'Mathematics', N'Ain Shams University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5741, N'Rania Mohamed', N'rania.mohamed5741@student.iti.gov.eg', N'raniamohamed5741', N'1999-03-21', N'Female', N'50 Damanhur Street', N'Arts', N'Minia University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5742, N'Dina Amr', N'dina.amr5742@student.iti.gov.eg', N'dinaamr5742', N'2005-09-14', N'Female', N'56 Damanhur Street', N'Science', N'Ain Shams University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5743, N'Alaa Fahmy', N'alaa.fahmy5743@student.iti.gov.eg', N'alaafahmy5743', N'2000-06-04', N'Male', N'92 Damanhur Street', N'Mathematics', N'Mansoura University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5744, N'Rania Adel', N'rania.adel5744@student.iti.gov.eg', N'raniaadel5744', N'2002-01-16', N'Female', N'20 Damanhur Street', N'Information Systems', N'Minia University', 6, 1, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5745, N'Nabil Nour', N'nabil.nour5745@student.iti.gov.eg', N'nabilnour5745', N'1998-03-14', N'Male', N'72 Damanhur Street', N'Computer Science', N'Zagazig University', 6, 1, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5746, N'Sara Taher', N'sara.taher5746@student.iti.gov.eg', N'sarataher5746', N'2001-06-22', N'Female', N'83 Damanhur Street', N'Engineering', N'Zagazig University', 6, 1, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5747, N'Salma Sayed', N'salma.sayed5747@student.iti.gov.eg', N'salmasayed5747', N'1996-06-21', N'Female', N'87 Damanhur Street', N'Business Administration', N'Assiut University', 6, 1, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5748, N'Zeinab Refaat', N'zeinab.refaat5748@student.iti.gov.eg', N'zeinabrefaat5748', N'1998-07-17', N'Female', N'103 Damanhur Street', N'Arts', N'Helwan University', 6, 1, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5749, N'Dina Samir', N'dina.samir5749@student.iti.gov.eg', N'dinasamir5749', N'1998-11-18', N'Female', N'35 Damanhur Street', N'Business Administration', N'Assiut University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5750, N'Heba Ramy', N'heba.ramy5750@student.iti.gov.eg', N'hebaramy5750', N'2002-05-13', N'Female', N'21 Damanhur Street', N'Business Administration', N'Helwan University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5751, N'Mai Badr', N'mai.badr5751@student.iti.gov.eg', N'maibadr5751', N'2002-06-04', N'Female', N'102 Damanhur Street', N'Engineering', N'Alexandria University', 6, 1, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5752, N'Nada Hesham', N'nada.hesham5752@student.iti.gov.eg', N'nadahesham5752', N'1995-03-05', N'Female', N'143 Damanhur Street', N'Information Systems', N'Helwan University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5753, N'Abeer Ali', N'abeer.ali5753@student.iti.gov.eg', N'abeerali5753', N'2000-11-07', N'Female', N'4 Damanhur Street', N'Business Administration', N'Alexandria University', 6, 1, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5754, N'Salma Hani', N'salma.hani5754@student.iti.gov.eg', N'salmahani5754', N'2003-05-18', N'Female', N'36 Damanhur Street', N'Computer Science', N'Cairo University', 6, 1, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5755, N'Youssef Saeed', N'youssef.saeed5755@student.iti.gov.eg', N'youssefsaeed5755', N'1995-05-28', N'Male', N'125 Damanhur Street', N'Computer Science', N'Assiut University', 6, 1, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5756, N'Mariam Hassan', N'mariam.hassan5756@student.iti.gov.eg', N'mariamhassan5756', N'1995-03-13', N'Female', N'183 Damanhur Street', N'Business Administration', N'Mansoura University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5757, N'Wafaa Hassan', N'wafaa.hassan5757@student.iti.gov.eg', N'wafaahassan5757', N'1998-02-07', N'Female', N'136 Damanhur Street', N'Information Systems', N'Beni-Suef University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5758, N'Hamdy Hosny', N'hamdy.hosny5758@student.iti.gov.eg', N'hamdyhosny5758', N'1998-07-28', N'Male', N'81 Damanhur Street', N'Business Administration', N'Alexandria University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5759, N'Nabil Ibrahim', N'nabil.ibrahim5759@student.iti.gov.eg', N'nabilibrahim5759', N'2003-09-15', N'Male', N'84 Damanhur Street', N'Commerce', N'Helwan University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5760, N'Yehia Reda', N'yehia.reda5760@student.iti.gov.eg', N'yehiareda5760', N'1995-06-06', N'Male', N'30 Damanhur Street', N'Science', N'Mansoura University', 6, 1, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5761, N'Sherif Amgad', N'sherif.amgad5761@student.iti.gov.eg', N'sherifamgad5761', N'2002-10-07', N'Male', N'97 Damanhur Street', N'Information Systems', N'Assiut University', 6, 1, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5762, N'Samy Khaled', N'samy.khaled5762@student.iti.gov.eg', N'samykhaled5762', N'2000-10-27', N'Male', N'20 Damanhur Street', N'Engineering', N'Minia University', 6, 1, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5763, N'Wael Medhat', N'wael.medhat5763@student.iti.gov.eg', N'waelmedhat5763', N'1999-05-24', N'Male', N'179 Damanhur Street', N'Engineering', N'Suez Canal University', 6, 1, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5764, N'Aya Hassan', N'aya.hassan5764@student.iti.gov.eg', N'ayahassan5764', N'1995-01-31', N'Female', N'188 Damanhur Street', N'Information Systems', N'Tanta University', 6, 1, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5765, N'Olfat Fahmy', N'olfat.fahmy5765@student.iti.gov.eg', N'olfatfahmy5765', N'1996-07-25', N'Female', N'15 Damanhur Street', N'Information Systems', N'Alexandria University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5766, N'Noha Fawzy', N'noha.fawzy5766@student.iti.gov.eg', N'nohafawzy5766', N'1999-10-08', N'Female', N'200 Damanhur Street', N'Arts', N'Mansoura University', 6, 1, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5767, N'Lamia Amr', N'lamia.amr5767@student.iti.gov.eg', N'lamiaamr5767', N'1999-08-11', N'Female', N'49 Damanhur Street', N'Computer Science', N'Suez Canal University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5768, N'Samia Taher', N'samia.taher5768@student.iti.gov.eg', N'samiataher5768', N'2004-03-25', N'Female', N'9 Damanhur Street', N'Engineering', N'Zagazig University', 6, 1, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5769, N'Ahmed Hesham', N'ahmed.hesham5769@student.iti.gov.eg', N'ahmedhesham5769', N'1999-11-25', N'Male', N'179 Damanhur Street', N'Computer Science', N'Minia University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5770, N'Tamer Ibrahim', N'tamer.ibrahim5770@student.iti.gov.eg', N'tameribrahim5770', N'2001-04-22', N'Male', N'199 Damanhur Street', N'Science', N'Ain Shams University', 6, 1, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5771, N'Mariam Gamal', N'mariam.gamal5771@student.iti.gov.eg', N'mariamgamal5771', N'2003-01-17', N'Female', N'164 Damanhur Street', N'Mathematics', N'Minia University', 6, 1, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5772, N'Dina Ramy', N'dina.ramy5772@student.iti.gov.eg', N'dinaramy5772', N'1996-06-27', N'Female', N'125 Damanhur Street', N'Engineering', N'Tanta University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5773, N'Maha Anwar', N'maha.anwar5773@student.iti.gov.eg', N'mahaanwar5773', N'1996-03-03', N'Female', N'58 Damanhur Street', N'Science', N'Ain Shams University', 6, 1, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5774, N'Hala Waleed', N'hala.waleed5774@student.iti.gov.eg', N'halawaleed5774', N'2000-10-29', N'Female', N'119 Damanhur Street', N'Mathematics', N'Beni-Suef University', 6, 1, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5775, N'Gamal Mahmoud', N'gamal.mahmoud5775@student.iti.gov.eg', N'gamalmahmoud5775', N'2000-11-12', N'Male', N'149 Damanhur Street', N'Business Administration', N'Beni-Suef University', 6, 1, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5776, N'Wael Helmy', N'wael.helmy5776@student.iti.gov.eg', N'waelhelmy5776', N'2000-03-25', N'Male', N'143 Damanhur Street', N'Computer Science', N'Assiut University', 6, 1, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5777, N'Essam Gamal', N'essam.gamal5777@student.iti.gov.eg', N'essamgamal5777', N'1997-04-23', N'Male', N'8 Damanhur Street', N'Science', N'Mansoura University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5778, N'Shaimaa Walid', N'shaimaa.walid5778@student.iti.gov.eg', N'shaimaawalid5778', N'1998-11-19', N'Female', N'116 Damanhur Street', N'Mathematics', N'Mansoura University', 6, 1, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5779, N'Sara Tamer', N'sara.tamer5779@student.iti.gov.eg', N'saratamer5779', N'1995-08-07', N'Female', N'156 Damanhur Street', N'Mathematics', N'Tanta University', 6, 4, 5, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5780, N'Samy Badr', N'samy.badr5780@student.iti.gov.eg', N'samybadr5780', N'2000-03-16', N'Male', N'173 Damanhur Street', N'Business Administration', N'Helwan University', 6, 1, 5, N'Active');

-- Tanta Branch Students (70 students)
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5781, N'Neveen Samy', N'neveen.samy5781@student.iti.gov.eg', N'neveensamy5781', N'2001-08-31', N'Female', N'62 Tanta Street', N'Arts', N'Beni-Suef University', 6, 2, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5782, N'Hala Nabil', N'hala.nabil5782@student.iti.gov.eg', N'halanabil5782', N'2002-12-24', N'Female', N'140 Tanta Street', N'Science', N'Beni-Suef University', 6, 5, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5783, N'Noha Salah', N'noha.salah5783@student.iti.gov.eg', N'nohasalah5783', N'1998-08-23', N'Female', N'86 Tanta Street', N'Information Systems', N'Suez Canal University', 6, 5, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5784, N'Noha Tarek', N'noha.tarek5784@student.iti.gov.eg', N'nohatarek5784', N'2002-04-29', N'Female', N'164 Tanta Street', N'Business Administration', N'Alexandria University', 6, 2, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5785, N'Aya Adel', N'aya.adel5785@student.iti.gov.eg', N'ayaadel5785', N'1996-06-24', N'Female', N'66 Tanta Street', N'Mathematics', N'Beni-Suef University', 6, 5, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5786, N'Tamer Hesham', N'tamer.hesham5786@student.iti.gov.eg', N'tamerhesham5786', N'2002-02-27', N'Male', N'102 Tanta Street', N'Commerce', N'Zagazig University', 6, 5, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5787, N'Amr Nasr', N'amr.nasr5787@student.iti.gov.eg', N'amrnasr5787', N'2004-09-20', N'Male', N'4 Tanta Street', N'Mathematics', N'Helwan University', 6, 5, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5788, N'Essam Osama', N'essam.osama5788@student.iti.gov.eg', N'essamosama5788', N'2001-10-08', N'Male', N'176 Tanta Street', N'Business Administration', N'Ain Shams University', 6, 2, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5789, N'Samy Walid', N'samy.walid5789@student.iti.gov.eg', N'samywalid5789', N'1997-12-08', N'Male', N'17 Tanta Street', N'Engineering', N'Assiut University', 6, 5, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5790, N'Sherif Sami', N'sherif.sami5790@student.iti.gov.eg', N'sherifsami5790', N'1999-03-20', N'Male', N'72 Tanta Street', N'Commerce', N'Tanta University', 6, 2, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5791, N'Mona Soliman', N'mona.soliman5791@student.iti.gov.eg', N'monasoliman5791', N'2005-10-24', N'Female', N'60 Tanta Street', N'Arts', N'Tanta University', 6, 5, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5792, N'Mai Adly', N'mai.adly5792@student.iti.gov.eg', N'maiadly5792', N'2004-10-19', N'Female', N'192 Tanta Street', N'Computer Science', N'Tanta University', 6, 5, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5793, N'Ahmed Hossam', N'ahmed.hossam5793@student.iti.gov.eg', N'ahmedhossam5793', N'1996-01-28', N'Male', N'138 Tanta Street', N'Mathematics', N'Ain Shams University', 6, 5, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5794, N'Karim Fahim', N'karim.fahim5794@student.iti.gov.eg', N'karimfahim5794', N'1997-06-25', N'Male', N'123 Tanta Street', N'Science', N'Alexandria University', 6, 5, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5795, N'Hany Fawzy', N'hany.fawzy5795@student.iti.gov.eg', N'hanyfawzy5795', N'2001-10-05', N'Male', N'163 Tanta Street', N'Information Systems', N'Beni-Suef University', 6, 5, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5796, N'Karima Naguib', N'karima.naguib5796@student.iti.gov.eg', N'karimanaguib5796', N'2004-06-21', N'Female', N'3 Tanta Street', N'Engineering', N'Suez Canal University', 6, 5, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5797, N'Hoda Nader', N'hoda.nader5797@student.iti.gov.eg', N'hodanader5797', N'1996-09-29', N'Female', N'50 Tanta Street', N'Computer Science', N'Ain Shams University', 6, 2, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5798, N'Ayman Magdy', N'ayman.magdy5798@student.iti.gov.eg', N'aymanmagdy5798', N'2004-09-21', N'Male', N'64 Tanta Street', N'Engineering', N'Ain Shams University', 6, 2, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5799, N'Eman Fekry', N'eman.fekry5799@student.iti.gov.eg', N'emanfekry5799', N'2005-07-30', N'Female', N'41 Tanta Street', N'Business Administration', N'Assiut University', 6, 5, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5800, N'Sara Mohamed', N'sara.mohamed5800@student.iti.gov.eg', N'saramohamed5800', N'2002-03-07', N'Female', N'70 Tanta Street', N'Information Systems', N'Beni-Suef University', 6, 2, 6, N'Active');
GO

INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5801, N'Hazem Ragab', N'hazem.ragab5801@student.iti.gov.eg', N'hazemragab5801', N'2004-04-30', N'Male', N'23 Tanta Street', N'Mathematics', N'Suez Canal University', 6, 5, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5802, N'Lamia Fawzy', N'lamia.fawzy5802@student.iti.gov.eg', N'lamiafawzy5802', N'1996-04-03', N'Female', N'159 Tanta Street', N'Arts', N'Mansoura University', 6, 2, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5803, N'Ibrahim Nabil', N'ibrahim.nabil5803@student.iti.gov.eg', N'ibrahimnabil5803', N'2005-04-24', N'Male', N'120 Tanta Street', N'Commerce', N'Cairo University', 6, 5, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5804, N'Wael Fady', N'wael.fady5804@student.iti.gov.eg', N'waelfady5804', N'2003-12-09', N'Male', N'31 Tanta Street', N'Arts', N'Ain Shams University', 6, 2, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5805, N'Mai Ibrahim', N'mai.ibrahim5805@student.iti.gov.eg', N'maiibrahim5805', N'2004-10-31', N'Female', N'88 Tanta Street', N'Engineering', N'Mansoura University', 6, 2, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5806, N'Youssef Saad', N'youssef.saad5806@student.iti.gov.eg', N'youssefsaad5806', N'2002-03-18', N'Male', N'94 Tanta Street', N'Computer Science', N'Beni-Suef University', 6, 2, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5807, N'Hossam Fekry', N'hossam.fekry5807@student.iti.gov.eg', N'hossamfekry5807', N'1999-05-14', N'Male', N'22 Tanta Street', N'Engineering', N'Tanta University', 6, 5, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5808, N'Naglaa Sobhy', N'naglaa.sobhy5808@student.iti.gov.eg', N'naglaasobhy5808', N'1996-06-11', N'Female', N'58 Tanta Street', N'Science', N'Mansoura University', 6, 5, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5809, N'Mervat Fawzy', N'mervat.fawzy5809@student.iti.gov.eg', N'mervatfawzy5809', N'2000-11-14', N'Female', N'93 Tanta Street', N'Business Administration', N'Assiut University', 6, 2, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5810, N'Fady Nour', N'fady.nour5810@student.iti.gov.eg', N'fadynour5810', N'2004-10-13', N'Male', N'116 Tanta Street', N'Science', N'Minia University', 6, 2, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5811, N'Faten Zaki', N'faten.zaki5811@student.iti.gov.eg', N'fatenzaki5811', N'1999-01-18', N'Female', N'111 Tanta Street', N'Business Administration', N'Ain Shams University', 6, 2, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5812, N'Fatma Hassan', N'fatma.hassan5812@student.iti.gov.eg', N'fatmahassan5812', N'2004-07-22', N'Female', N'64 Tanta Street', N'Arts', N'Helwan University', 6, 5, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5813, N'Amr Badr', N'amr.badr5813@student.iti.gov.eg', N'amrbadr5813', N'1997-06-23', N'Male', N'67 Tanta Street', N'Business Administration', N'Assiut University', 6, 5, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5814, N'Ghada Wagdy', N'ghada.wagdy5814@student.iti.gov.eg', N'ghadawagdy5814', N'1998-01-13', N'Female', N'120 Tanta Street', N'Engineering', N'Helwan University', 6, 2, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5815, N'Mai Maged', N'mai.maged5815@student.iti.gov.eg', N'maimaged5815', N'1997-02-18', N'Female', N'65 Tanta Street', N'Arts', N'Suez Canal University', 6, 2, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5816, N'Sherif Hamed', N'sherif.hamed5816@student.iti.gov.eg', N'sherifhamed5816', N'1996-04-23', N'Male', N'70 Tanta Street', N'Arts', N'Beni-Suef University', 6, 5, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5817, N'Rana Waleed', N'rana.waleed5817@student.iti.gov.eg', N'ranawaleed5817', N'2005-02-21', N'Female', N'76 Tanta Street', N'Science', N'Tanta University', 6, 5, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5818, N'Noha Adel', N'noha.adel5818@student.iti.gov.eg', N'nohaadel5818', N'2002-07-18', N'Female', N'81 Tanta Street', N'Mathematics', N'Tanta University', 6, 2, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5819, N'Hazem Waleed', N'hazem.waleed5819@student.iti.gov.eg', N'hazemwaleed5819', N'1995-08-03', N'Male', N'170 Tanta Street', N'Mathematics', N'Helwan University', 6, 2, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5820, N'Amal Hossam', N'amal.hossam5820@student.iti.gov.eg', N'amalhossam5820', N'1996-05-12', N'Female', N'10 Tanta Street', N'Mathematics', N'Mansoura University', 6, 2, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5821, N'Hany Mostafa', N'hany.mostafa5821@student.iti.gov.eg', N'hanymostafa5821', N'2003-07-26', N'Male', N'131 Tanta Street', N'Arts', N'Ain Shams University', 6, 2, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5822, N'Hala Salah', N'hala.salah5822@student.iti.gov.eg', N'halasalah5822', N'1997-03-29', N'Female', N'181 Tanta Street', N'Engineering', N'Mansoura University', 6, 2, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5823, N'Eman Hassan', N'eman.hassan5823@student.iti.gov.eg', N'emanhassan5823', N'2000-04-09', N'Female', N'131 Tanta Street', N'Arts', N'Tanta University', 6, 2, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5824, N'Alaa Yasser', N'alaa.yasser5824@student.iti.gov.eg', N'alaayasser5824', N'1998-02-06', N'Male', N'153 Tanta Street', N'Engineering', N'Assiut University', 6, 2, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5825, N'Engy Sobhy', N'engy.sobhy5825@student.iti.gov.eg', N'engysobhy5825', N'2001-07-15', N'Female', N'156 Tanta Street', N'Mathematics', N'Minia University', 6, 5, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5826, N'Mona Fahmy', N'mona.fahmy5826@student.iti.gov.eg', N'monafahmy5826', N'2001-05-01', N'Female', N'196 Tanta Street', N'Engineering', N'Alexandria University', 6, 2, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5827, N'Ismail Gamal', N'ismail.gamal5827@student.iti.gov.eg', N'ismailgamal5827', N'1998-11-02', N'Male', N'33 Tanta Street', N'Engineering', N'Mansoura University', 6, 5, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5828, N'Ali Khaled', N'ali.khaled5828@student.iti.gov.eg', N'alikhaled5828', N'2005-06-09', N'Male', N'61 Tanta Street', N'Business Administration', N'Cairo University', 6, 5, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5829, N'Fatma Maged', N'fatma.maged5829@student.iti.gov.eg', N'fatmamaged5829', N'2001-12-09', N'Female', N'95 Tanta Street', N'Engineering', N'Assiut University', 6, 5, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5830, N'Waleed Atef', N'waleed.atef5830@student.iti.gov.eg', N'waleedatef5830', N'1998-03-20', N'Male', N'187 Tanta Street', N'Mathematics', N'Cairo University', 6, 2, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5831, N'Fady Sami', N'fady.sami5831@student.iti.gov.eg', N'fadysami5831', N'1997-03-07', N'Male', N'145 Tanta Street', N'Business Administration', N'Tanta University', 6, 5, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5832, N'Amal Fady', N'amal.fady5832@student.iti.gov.eg', N'amalfady5832', N'1996-02-08', N'Female', N'153 Tanta Street', N'Computer Science', N'Cairo University', 6, 2, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5833, N'Tarek Yasser', N'tarek.yasser5833@student.iti.gov.eg', N'tarekyasser5833', N'2004-06-28', N'Male', N'95 Tanta Street', N'Commerce', N'Zagazig University', 6, 2, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5834, N'Hazem Mahmoud', N'hazem.mahmoud5834@student.iti.gov.eg', N'hazemmahmoud5834', N'2004-07-14', N'Male', N'135 Tanta Street', N'Computer Science', N'Helwan University', 6, 5, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5835, N'Hossam Ramy', N'hossam.ramy5835@student.iti.gov.eg', N'hossamramy5835', N'2005-10-07', N'Male', N'28 Tanta Street', N'Arts', N'Alexandria University', 6, 5, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5836, N'Hany Sayed', N'hany.sayed5836@student.iti.gov.eg', N'hanysayed5836', N'1998-11-21', N'Male', N'57 Tanta Street', N'Science', N'Alexandria University', 6, 5, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5837, N'Rania Fahmy', N'rania.fahmy5837@student.iti.gov.eg', N'raniafahmy5837', N'1998-10-26', N'Female', N'172 Tanta Street', N'Arts', N'Beni-Suef University', 6, 5, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5838, N'Essam Ghoneim', N'essam.ghoneim5838@student.iti.gov.eg', N'essamghoneim5838', N'1995-02-08', N'Male', N'168 Tanta Street', N'Science', N'Ain Shams University', 6, 5, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5839, N'Sami Walid', N'sami.walid5839@student.iti.gov.eg', N'samiwalid5839', N'2000-04-24', N'Male', N'129 Tanta Street', N'Engineering', N'Ain Shams University', 6, 2, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5840, N'Fady Mansour', N'fady.mansour5840@student.iti.gov.eg', N'fadymansour5840', N'1999-02-24', N'Male', N'44 Tanta Street', N'Science', N'Ain Shams University', 6, 5, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5841, N'Omar Ibrahim', N'omar.ibrahim5841@student.iti.gov.eg', N'omaribrahim5841', N'2004-09-21', N'Male', N'76 Tanta Street', N'Information Systems', N'Mansoura University', 6, 2, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5842, N'Aya Hamed', N'aya.hamed5842@student.iti.gov.eg', N'ayahamed5842', N'2000-09-06', N'Female', N'37 Tanta Street', N'Engineering', N'Tanta University', 6, 5, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5843, N'Ghada Hani', N'ghada.hani5843@student.iti.gov.eg', N'ghadahani5843', N'1999-03-02', N'Female', N'48 Tanta Street', N'Science', N'Assiut University', 6, 2, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5844, N'Omar Soliman', N'omar.soliman5844@student.iti.gov.eg', N'omarsoliman5844', N'1998-02-23', N'Male', N'40 Tanta Street', N'Information Systems', N'Helwan University', 6, 2, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5845, N'Nasser Ibrahim', N'nasser.ibrahim5845@student.iti.gov.eg', N'nasseribrahim5845', N'2004-10-11', N'Male', N'65 Tanta Street', N'Science', N'Ain Shams University', 6, 5, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5846, N'Heba Hossam', N'heba.hossam5846@student.iti.gov.eg', N'hebahossam5846', N'2001-08-01', N'Female', N'64 Tanta Street', N'Business Administration', N'Tanta University', 6, 5, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5847, N'Nesma Walid', N'nesma.walid5847@student.iti.gov.eg', N'nesmawalid5847', N'2005-06-27', N'Female', N'30 Tanta Street', N'Arts', N'Cairo University', 6, 5, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5848, N'Ghada Zaki', N'ghada.zaki5848@student.iti.gov.eg', N'ghadazaki5848', N'2004-11-17', N'Female', N'171 Tanta Street', N'Science', N'Alexandria University', 6, 2, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5849, N'Mostafa Shalaby', N'mostafa.shalaby5849@student.iti.gov.eg', N'mostafashalaby5849', N'1999-10-06', N'Male', N'67 Tanta Street', N'Engineering', N'Alexandria University', 6, 2, 6, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5850, N'Amal Ashraf', N'amal.ashraf5850@student.iti.gov.eg', N'amalashraf5850', N'1996-06-17', N'Female', N'58 Tanta Street', N'Information Systems', N'Alexandria University', 6, 2, 6, N'Active');

-- Asyut Branch Students (60 students)
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5851, N'Ghada Saad', N'ghada.saad5851@student.iti.gov.eg', N'ghadasaad5851', N'1997-01-17', N'Female', N'133 Asyut Street', N'Engineering', N'Cairo University', 6, 4, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5852, N'Bassem Fawzy', N'bassem.fawzy5852@student.iti.gov.eg', N'bassemfawzy5852', N'2000-05-16', N'Male', N'145 Asyut Street', N'Commerce', N'Tanta University', 6, 9, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5853, N'Adel Tamer', N'adel.tamer5853@student.iti.gov.eg', N'adeltamer5853', N'1998-02-10', N'Male', N'173 Asyut Street', N'Information Systems', N'Minia University', 6, 4, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5854, N'Zaki Amr', N'zaki.amr5854@student.iti.gov.eg', N'zakiamr5854', N'1998-06-21', N'Male', N'65 Asyut Street', N'Business Administration', N'Assiut University', 6, 9, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5855, N'Rania Sayed', N'rania.sayed5855@student.iti.gov.eg', N'raniasayed5855', N'2003-08-19', N'Female', N'24 Asyut Street', N'Engineering', N'Suez Canal University', 6, 9, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5856, N'Engy Wagdy', N'engy.wagdy5856@student.iti.gov.eg', N'engywagdy5856', N'2004-09-11', N'Female', N'170 Asyut Street', N'Information Systems', N'Zagazig University', 6, 4, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5857, N'Neveen Youssef', N'neveen.youssef5857@student.iti.gov.eg', N'neveenyoussef5857', N'1998-06-20', N'Female', N'115 Asyut Street', N'Arts', N'Suez Canal University', 6, 9, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5858, N'Olfat Fady', N'olfat.fady5858@student.iti.gov.eg', N'olfatfady5858', N'2003-05-14', N'Female', N'65 Asyut Street', N'Arts', N'Assiut University', 6, 9, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5859, N'Ehab Khaled', N'ehab.khaled5859@student.iti.gov.eg', N'ehabkhaled5859', N'1996-06-28', N'Male', N'145 Asyut Street', N'Science', N'Tanta University', 6, 4, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5860, N'Samia Zaki', N'samia.zaki5860@student.iti.gov.eg', N'samiazaki5860', N'1997-02-26', N'Female', N'79 Asyut Street', N'Commerce', N'Minia University', 6, 9, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5861, N'Khaled Nabil', N'khaled.nabil5861@student.iti.gov.eg', N'khalednabil5861', N'1995-03-26', N'Male', N'90 Asyut Street', N'Computer Science', N'Beni-Suef University', 6, 4, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5862, N'Naglaa Saeed', N'naglaa.saeed5862@student.iti.gov.eg', N'naglaasaeed5862', N'1995-06-09', N'Female', N'41 Asyut Street', N'Commerce', N'Alexandria University', 6, 4, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5863, N'Wael Morsy', N'wael.morsy5863@student.iti.gov.eg', N'waelmorsy5863', N'1998-04-15', N'Male', N'113 Asyut Street', N'Commerce', N'Suez Canal University', 6, 4, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5864, N'Mona Saad', N'mona.saad5864@student.iti.gov.eg', N'monasaad5864', N'2004-04-30', N'Female', N'122 Asyut Street', N'Commerce', N'Alexandria University', 6, 4, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5865, N'Hend Samir', N'hend.samir5865@student.iti.gov.eg', N'hendsamir5865', N'2003-04-18', N'Female', N'167 Asyut Street', N'Computer Science', N'Assiut University', 6, 4, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5866, N'Heba Adham', N'heba.adham5866@student.iti.gov.eg', N'hebaadham5866', N'1996-07-17', N'Female', N'29 Asyut Street', N'Commerce', N'Beni-Suef University', 6, 4, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5867, N'Reda Sherif', N'reda.sherif5867@student.iti.gov.eg', N'redasherif5867', N'1995-07-11', N'Male', N'100 Asyut Street', N'Mathematics', N'Minia University', 6, 9, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5868, N'Dina Ramzy', N'dina.ramzy5868@student.iti.gov.eg', N'dinaramzy5868', N'2004-12-18', N'Female', N'45 Asyut Street', N'Computer Science', N'Minia University', 6, 4, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5869, N'Rania Adham', N'rania.adham5869@student.iti.gov.eg', N'raniaadham5869', N'1997-11-14', N'Female', N'51 Asyut Street', N'Mathematics', N'Tanta University', 6, 4, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5870, N'Raafat Waleed', N'raafat.waleed5870@student.iti.gov.eg', N'raafatwaleed5870', N'1996-03-27', N'Male', N'76 Asyut Street', N'Arts', N'Helwan University', 6, 9, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5871, N'Engy Lotfy', N'engy.lotfy5871@student.iti.gov.eg', N'engylotfy5871', N'1999-12-24', N'Female', N'159 Asyut Street', N'Business Administration', N'Alexandria University', 6, 9, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5872, N'Shaimaa Sobhy', N'shaimaa.sobhy5872@student.iti.gov.eg', N'shaimaasobhy5872', N'2000-08-15', N'Female', N'31 Asyut Street', N'Arts', N'Cairo University', 6, 4, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5873, N'Ayman Refaat', N'ayman.refaat5873@student.iti.gov.eg', N'aymanrefaat5873', N'1999-12-01', N'Male', N'172 Asyut Street', N'Information Systems', N'Minia University', 6, 9, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5874, N'Seif Ahmed', N'seif.ahmed5874@student.iti.gov.eg', N'seifahmed5874', N'1996-11-15', N'Male', N'99 Asyut Street', N'Mathematics', N'Minia University', 6, 4, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5875, N'Tamer Fahim', N'tamer.fahim5875@student.iti.gov.eg', N'tamerfahim5875', N'2005-02-23', N'Male', N'125 Asyut Street', N'Information Systems', N'Ain Shams University', 6, 4, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5876, N'Mohamed Mostafa', N'mohamed.mostafa5876@student.iti.gov.eg', N'mohamedmostafa5876', N'1997-02-16', N'Male', N'150 Asyut Street', N'Computer Science', N'Cairo University', 6, 4, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5877, N'Bassem Yousry', N'bassem.yousry5877@student.iti.gov.eg', N'bassemyousry5877', N'2003-04-28', N'Male', N'3 Asyut Street', N'Science', N'Tanta University', 6, 4, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5878, N'Ehab Wagdy', N'ehab.wagdy5878@student.iti.gov.eg', N'ehabwagdy5878', N'2004-06-27', N'Male', N'131 Asyut Street', N'Mathematics', N'Mansoura University', 6, 4, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5879, N'Eman Morsy', N'eman.morsy5879@student.iti.gov.eg', N'emanmorsy5879', N'1995-05-09', N'Female', N'49 Asyut Street', N'Mathematics', N'Mansoura University', 6, 4, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5880, N'Sherif Mostafa', N'sherif.mostafa5880@student.iti.gov.eg', N'sherifmostafa5880', N'1999-04-10', N'Male', N'53 Asyut Street', N'Science', N'Mansoura University', 6, 9, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5881, N'Waleed Taha', N'waleed.taha5881@student.iti.gov.eg', N'waleedtaha5881', N'2003-08-14', N'Male', N'81 Asyut Street', N'Mathematics', N'Zagazig University', 6, 9, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5882, N'Noha Ramy', N'noha.ramy5882@student.iti.gov.eg', N'noharamy5882', N'2000-09-03', N'Female', N'107 Asyut Street', N'Commerce', N'Helwan University', 6, 9, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5883, N'Ahmed Youssef', N'ahmed.youssef5883@student.iti.gov.eg', N'ahmedyoussef5883', N'1995-03-25', N'Male', N'161 Asyut Street', N'Engineering', N'Helwan University', 6, 4, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5884, N'Wael Mostafa', N'wael.mostafa5884@student.iti.gov.eg', N'waelmostafa5884', N'2004-01-02', N'Male', N'174 Asyut Street', N'Arts', N'Suez Canal University', 6, 4, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5885, N'Ehab Zaki', N'ehab.zaki5885@student.iti.gov.eg', N'ehabzaki5885', N'2003-05-12', N'Male', N'33 Asyut Street', N'Information Systems', N'Alexandria University', 6, 4, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5886, N'Rana Hesham', N'rana.hesham5886@student.iti.gov.eg', N'ranahesham5886', N'1995-08-22', N'Female', N'174 Asyut Street', N'Engineering', N'Helwan University', 6, 9, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5887, N'Sherif Kamal', N'sherif.kamal5887@student.iti.gov.eg', N'sherifkamal5887', N'1997-11-04', N'Male', N'94 Asyut Street', N'Commerce', N'Zagazig University', 6, 4, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5888, N'Karim Mahmoud', N'karim.mahmoud5888@student.iti.gov.eg', N'karimmahmoud5888', N'2003-01-31', N'Male', N'13 Asyut Street', N'Computer Science', N'Assiut University', 6, 4, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5889, N'Rania Amgad', N'rania.amgad5889@student.iti.gov.eg', N'raniaamgad5889', N'2005-05-08', N'Female', N'88 Asyut Street', N'Engineering', N'Beni-Suef University', 6, 4, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5890, N'Wafaa Osama', N'wafaa.osama5890@student.iti.gov.eg', N'wafaaosama5890', N'2005-02-13', N'Female', N'182 Asyut Street', N'Commerce', N'Suez Canal University', 6, 9, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5891, N'Amr Adel', N'amr.adel5891@student.iti.gov.eg', N'amradel5891', N'2001-06-13', N'Male', N'1 Asyut Street', N'Information Systems', N'Alexandria University', 6, 4, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5892, N'Reda Fouad', N'reda.fouad5892@student.iti.gov.eg', N'redafouad5892', N'1998-08-04', N'Male', N'28 Asyut Street', N'Engineering', N'Ain Shams University', 6, 4, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5893, N'Mostafa Samy', N'mostafa.samy5893@student.iti.gov.eg', N'mostafasamy5893', N'2002-04-04', N'Male', N'86 Asyut Street', N'Commerce', N'Cairo University', 6, 4, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5894, N'Karim Adly', N'karim.adly5894@student.iti.gov.eg', N'karimadly5894', N'1995-12-14', N'Male', N'142 Asyut Street', N'Business Administration', N'Mansoura University', 6, 9, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5895, N'Tarek Gamal', N'tarek.gamal5895@student.iti.gov.eg', N'tarekgamal5895', N'2001-01-01', N'Male', N'168 Asyut Street', N'Engineering', N'Assiut University', 6, 4, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5896, N'Shaimaa Maher', N'shaimaa.maher5896@student.iti.gov.eg', N'shaimaamaher5896', N'2002-11-21', N'Female', N'21 Asyut Street', N'Information Systems', N'Helwan University', 6, 9, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5897, N'Rana Adham', N'rana.adham5897@student.iti.gov.eg', N'ranaadham5897', N'1999-03-18', N'Female', N'140 Asyut Street', N'Arts', N'Tanta University', 6, 9, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5898, N'Heba Naguib', N'heba.naguib5898@student.iti.gov.eg', N'hebanaguib5898', N'1995-11-09', N'Female', N'99 Asyut Street', N'Computer Science', N'Zagazig University', 6, 9, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5899, N'Nasser Taha', N'nasser.taha5899@student.iti.gov.eg', N'nassertaha5899', N'1997-03-04', N'Male', N'28 Asyut Street', N'Mathematics', N'Cairo University', 6, 9, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5900, N'Reem Wagdy', N'reem.wagdy5900@student.iti.gov.eg', N'reemwagdy5900', N'1998-08-07', N'Female', N'151 Asyut Street', N'Mathematics', N'Tanta University', 6, 9, 7, N'Active');
GO

INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5901, N'Mariam Maher', N'mariam.maher5901@student.iti.gov.eg', N'mariammaher5901', N'2005-04-29', N'Female', N'138 Asyut Street', N'Engineering', N'Suez Canal University', 6, 9, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5902, N'Mariam Hosny', N'mariam.hosny5902@student.iti.gov.eg', N'mariamhosny5902', N'2000-03-15', N'Female', N'191 Asyut Street', N'Arts', N'Helwan University', 6, 9, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5903, N'Rana Ghoneim', N'rana.ghoneim5903@student.iti.gov.eg', N'ranaghoneim5903', N'1996-01-22', N'Female', N'193 Asyut Street', N'Commerce', N'Tanta University', 6, 9, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5904, N'Ahmed Walid', N'ahmed.walid5904@student.iti.gov.eg', N'ahmedwalid5904', N'2002-09-02', N'Male', N'135 Asyut Street', N'Arts', N'Minia University', 6, 9, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5905, N'Amr Saad', N'amr.saad5905@student.iti.gov.eg', N'amrsaad5905', N'1995-05-21', N'Male', N'51 Asyut Street', N'Mathematics', N'Zagazig University', 6, 4, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5906, N'Mostafa Nader', N'mostafa.nader5906@student.iti.gov.eg', N'mostafanader5906', N'1999-01-16', N'Male', N'124 Asyut Street', N'Computer Science', N'Mansoura University', 6, 9, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5907, N'Ibrahim Samir', N'ibrahim.samir5907@student.iti.gov.eg', N'ibrahimsamir5907', N'2003-06-22', N'Male', N'6 Asyut Street', N'Computer Science', N'Alexandria University', 6, 4, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5908, N'Hazem Hani', N'hazem.hani5908@student.iti.gov.eg', N'hazemhani5908', N'1995-05-19', N'Male', N'68 Asyut Street', N'Arts', N'Ain Shams University', 6, 4, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5909, N'Karima Amgad', N'karima.amgad5909@student.iti.gov.eg', N'karimaamgad5909', N'2005-05-14', N'Female', N'120 Asyut Street', N'Mathematics', N'Alexandria University', 6, 9, 7, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5910, N'Karim Mohamed', N'karim.mohamed5910@student.iti.gov.eg', N'karimmohamed5910', N'2003-02-04', N'Male', N'200 Asyut Street', N'Science', N'Helwan University', 6, 9, 7, N'Active');

-- Ismailia Branch Students (50 students)
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5911, N'Noha Reda', N'noha.reda5911@student.iti.gov.eg', N'nohareda5911', N'2000-06-22', N'Female', N'53 Ismailia Street', N'Information Systems', N'Helwan University', 6, 8, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5912, N'Alaa Fady', N'alaa.fady5912@student.iti.gov.eg', N'alaafady5912', N'2005-06-20', N'Male', N'48 Ismailia Street', N'Engineering', N'Mansoura University', 6, 3, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5913, N'Essam Tawfik', N'essam.tawfik5913@student.iti.gov.eg', N'essamtawfik5913', N'2005-05-26', N'Male', N'58 Ismailia Street', N'Information Systems', N'Helwan University', 6, 3, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5914, N'Hossam Samir', N'hossam.samir5914@student.iti.gov.eg', N'hossamsamir5914', N'2001-11-13', N'Male', N'147 Ismailia Street', N'Information Systems', N'Tanta University', 6, 3, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5915, N'Hossam Tamer', N'hossam.tamer5915@student.iti.gov.eg', N'hossamtamer5915', N'1996-05-18', N'Male', N'113 Ismailia Street', N'Arts', N'Tanta University', 6, 8, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5916, N'Amr Amgad', N'amr.amgad5916@student.iti.gov.eg', N'amramgad5916', N'2004-12-23', N'Male', N'145 Ismailia Street', N'Commerce', N'Zagazig University', 6, 3, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5917, N'Ahmed Fekry', N'ahmed.fekry5917@student.iti.gov.eg', N'ahmedfekry5917', N'2000-01-14', N'Male', N'116 Ismailia Street', N'Engineering', N'Helwan University', 6, 8, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5918, N'Mervat Nabil', N'mervat.nabil5918@student.iti.gov.eg', N'mervatnabil5918', N'2000-10-01', N'Female', N'98 Ismailia Street', N'Computer Science', N'Minia University', 6, 8, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5919, N'Nesma Nabil', N'nesma.nabil5919@student.iti.gov.eg', N'nesmanabil5919', N'1997-03-18', N'Female', N'130 Ismailia Street', N'Engineering', N'Zagazig University', 6, 3, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5920, N'Engy Hamdi', N'engy.hamdi5920@student.iti.gov.eg', N'engyhamdi5920', N'2000-08-28', N'Female', N'185 Ismailia Street', N'Business Administration', N'Ain Shams University', 6, 8, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5921, N'Shaimaa Fouad', N'shaimaa.fouad5921@student.iti.gov.eg', N'shaimaafouad5921', N'2000-05-12', N'Female', N'67 Ismailia Street', N'Science', N'Ain Shams University', 6, 3, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5922, N'Soha Essam', N'soha.essam5922@student.iti.gov.eg', N'sohaessam5922', N'1996-12-27', N'Female', N'160 Ismailia Street', N'Information Systems', N'Beni-Suef University', 6, 3, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5923, N'Yehia Atef', N'yehia.atef5923@student.iti.gov.eg', N'yehiaatef5923', N'2003-05-20', N'Male', N'193 Ismailia Street', N'Mathematics', N'Zagazig University', 6, 3, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5924, N'Maha Samy', N'maha.samy5924@student.iti.gov.eg', N'mahasamy5924', N'2001-12-18', N'Female', N'28 Ismailia Street', N'Commerce', N'Assiut University', 6, 3, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5925, N'Injy Samir', N'injy.samir5925@student.iti.gov.eg', N'injysamir5925', N'1996-02-29', N'Female', N'111 Ismailia Street', N'Information Systems', N'Beni-Suef University', 6, 8, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5926, N'Amal Hassan', N'amal.hassan5926@student.iti.gov.eg', N'amalhassan5926', N'1998-01-10', N'Female', N'163 Ismailia Street', N'Business Administration', N'Cairo University', 6, 3, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5927, N'Nasser Sayed', N'nasser.sayed5927@student.iti.gov.eg', N'nassersayed5927', N'2005-07-01', N'Male', N'152 Ismailia Street', N'Engineering', N'Beni-Suef University', 6, 8, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5928, N'Adel Zayed', N'adel.zayed5928@student.iti.gov.eg', N'adelzayed5928', N'1995-09-11', N'Male', N'170 Ismailia Street', N'Arts', N'Suez Canal University', 6, 8, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5929, N'Mostafa Taha', N'mostafa.taha5929@student.iti.gov.eg', N'mostafataha5929', N'2002-10-23', N'Male', N'63 Ismailia Street', N'Commerce', N'Ain Shams University', 6, 8, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5930, N'Karim Ramzy', N'karim.ramzy5930@student.iti.gov.eg', N'karimramzy5930', N'2004-10-16', N'Male', N'170 Ismailia Street', N'Computer Science', N'Mansoura University', 6, 3, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5931, N'Tariq Hatem', N'tariq.hatem5931@student.iti.gov.eg', N'tariqhatem5931', N'1997-03-29', N'Male', N'121 Ismailia Street', N'Information Systems', N'Ain Shams University', 6, 8, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5932, N'Waleed Amgad', N'waleed.amgad5932@student.iti.gov.eg', N'waleedamgad5932', N'2003-03-25', N'Male', N'21 Ismailia Street', N'Engineering', N'Assiut University', 6, 8, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5933, N'Samy Mansour', N'samy.mansour5933@student.iti.gov.eg', N'samymansour5933', N'1997-04-02', N'Male', N'78 Ismailia Street', N'Commerce', N'Tanta University', 6, 3, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5934, N'Zeinab Samir', N'zeinab.samir5934@student.iti.gov.eg', N'zeinabsamir5934', N'2003-06-22', N'Female', N'94 Ismailia Street', N'Information Systems', N'Zagazig University', 6, 8, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5935, N'Tariq Nabil', N'tariq.nabil5935@student.iti.gov.eg', N'tariqnabil5935', N'2002-10-04', N'Male', N'62 Ismailia Street', N'Science', N'Beni-Suef University', 6, 3, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5936, N'Olfat Refaat', N'olfat.refaat5936@student.iti.gov.eg', N'olfatrefaat5936', N'2001-06-21', N'Female', N'170 Ismailia Street', N'Mathematics', N'Alexandria University', 6, 3, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5937, N'Mona Samy', N'mona.samy5937@student.iti.gov.eg', N'monasamy5937', N'2001-05-12', N'Female', N'16 Ismailia Street', N'Commerce', N'Tanta University', 6, 3, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5938, N'Yehia Maged', N'yehia.maged5938@student.iti.gov.eg', N'yehiamaged5938', N'1998-08-27', N'Male', N'45 Ismailia Street', N'Business Administration', N'Ain Shams University', 6, 8, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5939, N'Ismail Hassan', N'ismail.hassan5939@student.iti.gov.eg', N'ismailhassan5939', N'1997-09-10', N'Male', N'71 Ismailia Street', N'Information Systems', N'Zagazig University', 6, 3, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5940, N'Nadia Amgad', N'nadia.amgad5940@student.iti.gov.eg', N'nadiaamgad5940', N'2000-06-17', N'Female', N'90 Ismailia Street', N'Mathematics', N'Ain Shams University', 6, 8, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5941, N'Rana Hossam', N'rana.hossam5941@student.iti.gov.eg', N'ranahossam5941', N'2000-06-18', N'Female', N'141 Ismailia Street', N'Engineering', N'Minia University', 6, 8, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5942, N'Heba Samir', N'heba.samir5942@student.iti.gov.eg', N'hebasamir5942', N'2004-02-11', N'Female', N'89 Ismailia Street', N'Arts', N'Minia University', 6, 3, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5943, N'Gamal Essam', N'gamal.essam5943@student.iti.gov.eg', N'gamalessam5943', N'1996-02-10', N'Male', N'18 Ismailia Street', N'Arts', N'Minia University', 6, 3, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5944, N'Engy Labib', N'engy.labib5944@student.iti.gov.eg', N'engylabib5944', N'1996-03-11', N'Female', N'29 Ismailia Street', N'Commerce', N'Suez Canal University', 6, 3, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5945, N'Ahmed Hamed', N'ahmed.hamed5945@student.iti.gov.eg', N'ahmedhamed5945', N'2001-07-21', N'Male', N'133 Ismailia Street', N'Arts', N'Tanta University', 6, 3, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5946, N'Khaled Taha', N'khaled.taha5946@student.iti.gov.eg', N'khaledtaha5946', N'2002-04-07', N'Male', N'4 Ismailia Street', N'Mathematics', N'Minia University', 6, 3, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5947, N'Wael Hesham', N'wael.hesham5947@student.iti.gov.eg', N'waelhesham5947', N'2002-05-18', N'Male', N'32 Ismailia Street', N'Engineering', N'Helwan University', 6, 8, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5948, N'Neveen Hassan', N'neveen.hassan5948@student.iti.gov.eg', N'neveenhassan5948', N'1997-10-14', N'Female', N'32 Ismailia Street', N'Science', N'Zagazig University', 6, 8, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5949, N'Neveen Fekry', N'neveen.fekry5949@student.iti.gov.eg', N'neveenfekry5949', N'1998-08-07', N'Female', N'80 Ismailia Street', N'Information Systems', N'Helwan University', 6, 8, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5950, N'Sherif Hamdi', N'sherif.hamdi5950@student.iti.gov.eg', N'sherifhamdi5950', N'1995-11-09', N'Male', N'35 Ismailia Street', N'Business Administration', N'Suez Canal University', 6, 3, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5951, N'Hany Naguib', N'hany.naguib5951@student.iti.gov.eg', N'hanynaguib5951', N'2005-06-01', N'Male', N'63 Ismailia Street', N'Arts', N'Alexandria University', 6, 8, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5952, N'Tarek Fawzy', N'tarek.fawzy5952@student.iti.gov.eg', N'tarekfawzy5952', N'2005-07-06', N'Male', N'53 Ismailia Street', N'Commerce', N'Zagazig University', 6, 8, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5953, N'Adel Hamdi', N'adel.hamdi5953@student.iti.gov.eg', N'adelhamdi5953', N'1996-02-01', N'Male', N'199 Ismailia Street', N'Engineering', N'Beni-Suef University', 6, 3, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5954, N'Gamal Ragab', N'gamal.ragab5954@student.iti.gov.eg', N'gamalragab5954', N'1997-09-14', N'Male', N'106 Ismailia Street', N'Arts', N'Alexandria University', 6, 8, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5955, N'Essam Hamdi', N'essam.hamdi5955@student.iti.gov.eg', N'essamhamdi5955', N'2003-09-16', N'Male', N'14 Ismailia Street', N'Computer Science', N'Assiut University', 6, 8, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5956, N'Salma Walid', N'salma.walid5956@student.iti.gov.eg', N'salmawalid5956', N'1999-09-18', N'Female', N'78 Ismailia Street', N'Business Administration', N'Tanta University', 6, 8, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5957, N'Samar Samy', N'samar.samy5957@student.iti.gov.eg', N'samarsamy5957', N'1997-11-13', N'Female', N'82 Ismailia Street', N'Arts', N'Beni-Suef University', 6, 8, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5958, N'Rana Fouad', N'rana.fouad5958@student.iti.gov.eg', N'ranafouad5958', N'2001-08-24', N'Female', N'37 Ismailia Street', N'Business Administration', N'Cairo University', 6, 3, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5959, N'Mervat Ahmed', N'mervat.ahmed5959@student.iti.gov.eg', N'mervatahmed5959', N'1996-07-02', N'Female', N'183 Ismailia Street', N'Commerce', N'Ain Shams University', 6, 8, 8, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5960, N'Nadia Morsy', N'nadia.morsy5960@student.iti.gov.eg', N'nadiamorsy5960', N'2001-01-03', N'Female', N'43 Ismailia Street', N'Mathematics', N'Minia University', 6, 8, 8, N'Active');

-- Port Said Branch Students (25 students)
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5961, N'Ghada Taher', N'ghada.taher5961@student.iti.gov.eg', N'ghadataher5961', N'1999-12-04', N'Female', N'36 Port Said Street', N'Commerce', N'Minia University', 6, 2, 9, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5962, N'Mohamed Selim', N'mohamed.selim5962@student.iti.gov.eg', N'mohamedselim5962', N'2003-08-30', N'Male', N'35 Port Said Street', N'Arts', N'Beni-Suef University', 6, 2, 9, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5963, N'Sami Adly', N'sami.adly5963@student.iti.gov.eg', N'samiadly5963', N'2001-03-20', N'Male', N'176 Port Said Street', N'Science', N'Mansoura University', 6, 2, 9, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5964, N'Mervat Walid', N'mervat.walid5964@student.iti.gov.eg', N'mervatwalid5964', N'1997-10-17', N'Female', N'80 Port Said Street', N'Business Administration', N'Assiut University', 6, 2, 9, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5965, N'Hossam Mostafa', N'hossam.mostafa5965@student.iti.gov.eg', N'hossammostafa5965', N'1995-03-16', N'Male', N'102 Port Said Street', N'Information Systems', N'Assiut University', 6, 2, 9, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5966, N'Rania Hossam', N'rania.hossam5966@student.iti.gov.eg', N'raniahossam5966', N'2004-09-03', N'Female', N'161 Port Said Street', N'Commerce', N'Ain Shams University', 6, 2, 9, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5967, N'Hanaa Shalaby', N'hanaa.shalaby5967@student.iti.gov.eg', N'hanaashalaby5967', N'1995-11-08', N'Female', N'74 Port Said Street', N'Business Administration', N'Assiut University', 6, 2, 9, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5968, N'Mona Morsy', N'mona.morsy5968@student.iti.gov.eg', N'monamorsy5968', N'1999-09-26', N'Female', N'191 Port Said Street', N'Computer Science', N'Beni-Suef University', 6, 2, 9, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5969, N'Youssef Labib', N'youssef.labib5969@student.iti.gov.eg', N'yousseflabib5969', N'1999-08-06', N'Male', N'153 Port Said Street', N'Mathematics', N'Helwan University', 6, 2, 9, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5970, N'Engy Ashraf', N'engy.ashraf5970@student.iti.gov.eg', N'engyashraf5970', N'2002-10-04', N'Female', N'31 Port Said Street', N'Commerce', N'Tanta University', 6, 2, 9, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5971, N'Mohamed Amr', N'mohamed.amr5971@student.iti.gov.eg', N'mohamedamr5971', N'2001-08-03', N'Male', N'143 Port Said Street', N'Engineering', N'Cairo University', 6, 2, 9, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5972, N'Hanaa Samir', N'hanaa.samir5972@student.iti.gov.eg', N'hanaasamir5972', N'2005-07-09', N'Female', N'177 Port Said Street', N'Computer Science', N'Beni-Suef University', 6, 2, 9, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5973, N'Hanaa Hani', N'hanaa.hani5973@student.iti.gov.eg', N'hanaahani5973', N'1996-10-07', N'Female', N'140 Port Said Street', N'Mathematics', N'Beni-Suef University', 6, 2, 9, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5974, N'Naglaa Waleed', N'naglaa.waleed5974@student.iti.gov.eg', N'naglaawaleed5974', N'2003-02-08', N'Female', N'33 Port Said Street', N'Engineering', N'Beni-Suef University', 6, 2, 9, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5975, N'Zeinab Maher', N'zeinab.maher5975@student.iti.gov.eg', N'zeinabmaher5975', N'2004-01-28', N'Female', N'19 Port Said Street', N'Commerce', N'Minia University', 6, 2, 9, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5976, N'Samia Nour', N'samia.nour5976@student.iti.gov.eg', N'samianour5976', N'1996-06-01', N'Female', N'18 Port Said Street', N'Science', N'Beni-Suef University', 6, 2, 9, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5977, N'Adel Yousry', N'adel.yousry5977@student.iti.gov.eg', N'adelyousry5977', N'2003-11-10', N'Male', N'83 Port Said Street', N'Science', N'Assiut University', 6, 2, 9, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5978, N'Ismail Mansour', N'ismail.mansour5978@student.iti.gov.eg', N'ismailmansour5978', N'2003-08-16', N'Male', N'189 Port Said Street', N'Business Administration', N'Ain Shams University', 6, 2, 9, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5979, N'Ibrahim Hamed', N'ibrahim.hamed5979@student.iti.gov.eg', N'ibrahimhamed5979', N'1997-01-18', N'Male', N'148 Port Said Street', N'Computer Science', N'Minia University', 6, 2, 9, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5980, N'Amr Khaled', N'amr.khaled5980@student.iti.gov.eg', N'amrkhaled5980', N'2004-08-18', N'Male', N'67 Port Said Street', N'Engineering', N'Zagazig University', 6, 2, 9, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5981, N'Gamal Adel', N'gamal.adel5981@student.iti.gov.eg', N'gamaladel5981', N'2002-02-07', N'Male', N'75 Port Said Street', N'Engineering', N'Zagazig University', 6, 2, 9, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5982, N'Olfat Ramadan', N'olfat.ramadan5982@student.iti.gov.eg', N'olfatramadan5982', N'1995-08-01', N'Female', N'160 Port Said Street', N'Information Systems', N'Alexandria University', 6, 2, 9, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5983, N'Essam Khaled', N'essam.khaled5983@student.iti.gov.eg', N'essamkhaled5983', N'2005-07-28', N'Male', N'166 Port Said Street', N'Arts', N'Mansoura University', 6, 2, 9, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5984, N'Zaki Amgad', N'zaki.amgad5984@student.iti.gov.eg', N'zakiamgad5984', N'1998-01-17', N'Male', N'17 Port Said Street', N'Engineering', N'Alexandria University', 6, 2, 9, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5985, N'Nabil Hamdi', N'nabil.hamdi5985@student.iti.gov.eg', N'nabilhamdi5985', N'1995-08-19', N'Male', N'46 Port Said Street', N'Computer Science', N'Helwan University', 6, 2, 9, N'Active');

-- Minya Branch Students (15 students)
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5986, N'Ibrahim Khaled', N'ibrahim.khaled5986@student.iti.gov.eg', N'ibrahimkhaled5986', N'2000-04-13', N'Male', N'153 Minya Street', N'Science', N'Suez Canal University', 6, 1, 10, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5987, N'Seif Adel', N'seif.adel5987@student.iti.gov.eg', N'seifadel5987', N'2003-05-07', N'Male', N'189 Minya Street', N'Business Administration', N'Minia University', 6, 1, 10, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5988, N'Mahmoud Fahmy', N'mahmoud.fahmy5988@student.iti.gov.eg', N'mahmoudfahmy5988', N'2003-01-04', N'Male', N'15 Minya Street', N'Engineering', N'Helwan University', 6, 1, 10, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5989, N'Hanaa Soliman', N'hanaa.soliman5989@student.iti.gov.eg', N'hanaasoliman5989', N'1996-07-01', N'Female', N'116 Minya Street', N'Mathematics', N'Alexandria University', 6, 1, 10, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5990, N'Sherif Soliman', N'sherif.soliman5990@student.iti.gov.eg', N'sherifsoliman5990', N'2005-11-09', N'Male', N'40 Minya Street', N'Commerce', N'Mansoura University', 6, 1, 10, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5991, N'Ali Khaled', N'ali.khaled5991@student.iti.gov.eg', N'alikhaled5991', N'2002-06-12', N'Male', N'198 Minya Street', N'Engineering', N'Suez Canal University', 6, 1, 10, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5992, N'Lamia Sami', N'lamia.sami5992@student.iti.gov.eg', N'lamiasami5992', N'2000-07-27', N'Female', N'27 Minya Street', N'Business Administration', N'Cairo University', 6, 1, 10, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5993, N'Amal Fawzy', N'amal.fawzy5993@student.iti.gov.eg', N'amalfawzy5993', N'1999-05-30', N'Female', N'165 Minya Street', N'Computer Science', N'Minia University', 6, 1, 10, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5994, N'Ahmed Salah', N'ahmed.salah5994@student.iti.gov.eg', N'ahmedsalah5994', N'2003-09-09', N'Male', N'22 Minya Street', N'Arts', N'Helwan University', 6, 1, 10, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5995, N'Karima Gamal', N'karima.gamal5995@student.iti.gov.eg', N'karimagamal5995', N'1995-01-19', N'Female', N'88 Minya Street', N'Commerce', N'Ain Shams University', 6, 1, 10, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5996, N'Nesma Reda', N'nesma.reda5996@student.iti.gov.eg', N'nesmareda5996', N'2002-01-11', N'Female', N'66 Minya Street', N'Information Systems', N'Tanta University', 6, 1, 10, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5997, N'Azza Selim', N'azza.selim5997@student.iti.gov.eg', N'azzaselim5997', N'2002-05-04', N'Female', N'6 Minya Street', N'Information Systems', N'Mansoura University', 6, 1, 10, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5998, N'Mostafa Fahim', N'mostafa.fahim5998@student.iti.gov.eg', N'mostafafahim5998', N'1995-03-22', N'Male', N'7 Minya Street', N'Computer Science', N'Cairo University', 6, 1, 10, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (5999, N'Rana Zaki', N'rana.zaki5999@student.iti.gov.eg', N'ranazaki5999', N'1997-04-01', N'Female', N'105 Minya Street', N'Engineering', N'Helwan University', 6, 1, 10, N'Active');
INSERT INTO dbo.Student ([ST_ID], [ST_Name], [Email], [user_Name], [Date_of_Birth], [Gender], [Address], [College], [University], [Intake_ID], [Track_id], [Bran_ID], [Status])
VALUES (6000, N'Zeinab Khaled', N'zeinab.khaled6000@student.iti.gov.eg', N'zeinabkhaled6000', N'2000-04-04', N'Female', N'127 Minya Street', N'Mathematics', N'Helwan University', 6, 1, 10, N'Active');
GO


SET IDENTITY_INSERT dbo.Student OFF;
GO

PRINT 'Step 6/10: 1000 New students added successfully! (IDs: 5001-6000)';
GO
