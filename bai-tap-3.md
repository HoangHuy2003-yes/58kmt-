
## BÀI TẬP SỐ 3 - HỆ QUẢN TRỊ CƠ SỞ DỮ LIỆU
---
### Người thực hiện: Chu Hoàng Huy
### Lớp: K57KMT
---
### Thực hiện yêu cầu
1. **Sửa bảng DKMH và Diem**
- Sửa bảng DKMH
  ![image](https://github.com/user-attachments/assets/488316aa-ecbf-4649-be38-34b0aca8246c)
  
- Tạo bảng diem và thêm khoá phụ
  ![image](https://github.com/user-attachments/assets/d6e38caf-492f-4225-bbe4-094821314a26)

2. **Nhập dữ liệu demo cho các bảng theo các ràng buộc**

![image](https://github.com/user-attachments/assets/4bf84247-d795-44c4-ab8f-e960fe61ef75)

3. **Viết câu lệnh truy vấn tính điểm thành phần của 1 sinh vien đang học tại 1 lớp học phần**
```sql
-- Truy vấn tính điểm tổng kết của sinh viên SV001 trong lớp học phần LHP001
SELECT 
    dk.maSV,
    s.hoten AS TenSinhVien,
    lhp.maLopHP, 
    lhp.TenLopHP,
    mh.Tenmon AS TenMonHoc, 
    mh.STC AS SoTinChi,
    d.diem AS DiemQuaTrinh,
    dk.DiemThi,
    ROUND((d.diem * (100 - dk.PhanTramThi) / 100) + (dk.DiemThi * dk.PhanTramThi / 100), 2) AS DiemTongKet
FROM 
    DKMH dk
JOIN 
    Diem d ON dk.id_dk = d.id_dk
JOIN 
    LopHP lhp ON dk.maLopHP = lhp.maLopHP
JOIN 
    MonHoc mh ON lhp.maMon = mh.mamon
JOIN
    SinhVien s ON dk.maSV = s.masv
WHERE 
    dk.maSV = 'SV001' 
    AND lhp.maLopHP = 'LHP001';
```

4. **Sơ đồ thực thể liên kết**

![image](https://github.com/user-attachments/assets/60f625ca-bb14-4991-988c-616c661f904a)

