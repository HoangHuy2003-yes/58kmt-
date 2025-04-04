USE [QLSV]
GO
INSERT [dbo].[SinhVien] ([masv], [hoten], [NgaySinh]) VALUES (N'SV001', N'Pham Van X', NULL)
INSERT [dbo].[SinhVien] ([masv], [hoten], [NgaySinh]) VALUES (N'SV002', N'Nguyen Thuy Y', NULL)
INSERT [dbo].[SinhVien] ([masv], [hoten], [NgaySinh]) VALUES (N'SV003', N'Tran Van Z', NULL)
GO
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'L001', N'CNTT1')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'L002', N'CNTT2')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'L003', N'KTPM1')
GO
INSERT [dbo].[LopSV] ([maLop], [masv], [ChucVu]) VALUES (N'L001', N'SV001', N'L?p tru?ng')
INSERT [dbo].[LopSV] ([maLop], [masv], [ChucVu]) VALUES (N'L001', N'SV002', N'Sinh viên')
INSERT [dbo].[LopSV] ([maLop], [masv], [ChucVu]) VALUES (N'L002', N'SV003', N'Sinh viên')
GO
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'K01', N'Công ngh? thông tin')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'K02', N'Ði?n t? vi?n thông')
GO
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'BM01', N'Công ngh? ph?n m?m', N'K01')
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'BM02', N'H? th?ng thông tin', N'K01')
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'BM03', N'M?ng máy tính', N'K01')
GO
INSERT [dbo].[GiaoVien] ([magv], [hoten], [NgaySinh], [maBM]) VALUES (N'GV01', N'Nguy?n Van A', CAST(N'1980-05-15' AS Date), N'BM01')
INSERT [dbo].[GiaoVien] ([magv], [hoten], [NgaySinh], [maBM]) VALUES (N'GV02', N'Tr?n Th? B', CAST(N'1985-10-20' AS Date), N'BM02')
INSERT [dbo].[GiaoVien] ([magv], [hoten], [NgaySinh], [maBM]) VALUES (N'GV03', N'Lê Van C', CAST(N'1975-03-30' AS Date), N'BM03')
GO
INSERT [dbo].[MonHoc] ([mamon], [Tenmon], [STC]) VALUES (N'MH001', N'Lap trinh co ban', 3)
INSERT [dbo].[MonHoc] ([mamon], [Tenmon], [STC]) VALUES (N'MH002', N'Co s? d? li?u', 4)
INSERT [dbo].[MonHoc] ([mamon], [Tenmon], [STC]) VALUES (N'MH003', N'M?ng máy tính', 3)
INSERT [dbo].[MonHoc] ([mamon], [Tenmon], [STC]) VALUES (N'MH004', N'C?u trúc d? li?u và gi?i thu?t', 4)
GO
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [maMon], [maGV]) VALUES (N'LHP001', N'lap trinh co ban', N'HK1-2024', N'MH001', N'GV01')
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [maMon], [maGV]) VALUES (N'LHP002', N'Co s? d? li?u 1', N'HK1-2024', N'MH002', N'GV02')
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [maMon], [maGV]) VALUES (N'LHP003', N'M?ng máy tính 1', N'HK1-2024', N'MH003', N'GV03')
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [maMon], [maGV]) VALUES (N'LHP004', N'CTDL và GT 1', N'HK1-2024', N'MH004', N'GV01')
GO
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [masv], [DiemTP], [DiemThi], [PhanTramThi]) VALUES (1, N'LHP001', N'SV001', NULL, 8.5, 60)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [masv], [DiemTP], [DiemThi], [PhanTramThi]) VALUES (2, N'LHP002', N'SV001', NULL, 7.5, 60)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [masv], [DiemTP], [DiemThi], [PhanTramThi]) VALUES (3, N'LHP001', N'SV002', NULL, 9, 60)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [masv], [DiemTP], [DiemThi], [PhanTramThi]) VALUES (4, N'LHP003', N'SV002', NULL, 8, 60)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [masv], [DiemTP], [DiemThi], [PhanTramThi]) VALUES (5, N'LHP002', N'SV003', NULL, 7, 60)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [masv], [DiemTP], [DiemThi], [PhanTramThi]) VALUES (6, N'LHP004', N'SV003', NULL, 8.5, 60)
GO
INSERT [dbo].[GVCN] ([maLop], [magv], [HK]) VALUES (N'L001', N'GV01', N'HK1-2024')
INSERT [dbo].[GVCN] ([maLop], [magv], [HK]) VALUES (N'L002', N'GV02', N'HK1-2024')
INSERT [dbo].[GVCN] ([maLop], [magv], [HK]) VALUES (N'L003', N'GV03', N'HK1-2024')
GO
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (1, 1, N'8.0')
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (2, 2, N'7.0')
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (3, 3, N'8.5')
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (4, 4, N'7.5')
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (5, 5, N'6.5')
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (6, 6, N'8.0')
GO
