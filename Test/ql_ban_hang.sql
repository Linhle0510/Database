--Tạo bảng Don_Vi_Tinh
CREATE TABLE Don_Vi_Tinh(
  id_dvt INT PRIMARY KEY AUTO_INCREMENT,
  dvt VARCHAR(20)
);
----Tạo bảng Danh_Muc
CREATE TABLE Danh_Muc(
  id_dm INT PRIMARY KEY AUTO_INCREMENT,
  ten_dm VARCHAR(100)
);
--Tạo bảng San_Pham
CREATE TABLE San_Pham(
  id_sp INT PRIMARY KEY AUTO_INCREMENT,
  ten_sp VARCHAR(200),
  mo_ta VARCHAR(200),
  anh VARCHAR(200),
  so_luong INT,
  gia_ban INT,
  id_dm INT,
  id_dvt INT,
  FOREIGN KEY (id_dm) REFERENCES Danh_Muc(id_dm),
  FOREIGN KEY (id_dvt) REFERENCES Don_Vi_Ting(id_dvt)
);
--Tạo bảng Khach_Hang
CREATE TABLE Khach_Hang(
  id_kh INT PRIMARY KEY,
  ten_kh VARCHAR(100),
  sdt VARCHAR(10),
  dia_chi VARCHAR(100)
);
--Tạo bảng Nhan_Vien
CREATE TABLE Nhan_Vien(
  id_nv INT PRIMARY KEY,
  ten_nv VARCHAR(100),
  sdt VARCHAR(10),
  dia_chi VARCHAR(100),
  gioi_tinh VARCHAR(10),
  ngay_sinh DATE
);
--Tạo bảng Hoa_Don_Ban
CREATE TABLE Hoa_Don_Ban(
  id_hd INT PRIMARY KEY AUTO_INCREMENT,
  id_kh INT,
  id_nv INT,
  ngay_ban DATE,
  FOREIGN KEY (id_kh) REFERENCES Khach_Hang(id_kh),
  FOREIGN KEY (id_nv) REFERENCES Nhan_Vien(id_nv)
);
--Tạo bảng Chi_Tiet_Hoa_Don
CREATE TABLE Chi_Tiet_Hoa_Don(
  id_hd INT,
  id_sp INT,
  so_luong INT,
  CONSTRAINT hoa_don PRIMARY KEY(id_hd, id_sp),
  FOREIGN KEY (id_hd) REFERENCES Hoa_Don_Ban(id_hd),
  FOREIGN KEY (id_sp) REFERENCES San_Pham(id_sp)
);

--1, In ra danh sách các sản phẩm thuộc danh mục thức ăn cho mèo và thức ăn cho chó
SELECT
  ten_sp,
  ten_dm
FROM
  Danh_Muc dm,
  San_Pham sp
WHERE
  dm.id_dm = sp.id_dm
  AND dm.ten_dm = 'Thức ăn cho mèo'
  OR dm.ten_dm = 'Thức ăn cho chó';

  --2, In ra danh sách khách hàng đã mua hàng
SELECT
  kh.ten_kh,
  kh.sdt,
  kh.dia_chi,
  hd.ngay_ban
FROM
  Hoa_Don_Ban hd,
  Khach_Hang kh
WHERE
  hd.id_kh = kh.id_kh

   --3 In ra thông tin bao gồm tên sp, số lượng bán, giá bán, thành tiền của các sản phẩm đã được khách hàng Jenilee MCGorman 
SELECT
  sp.ten_sp,
  hd.so_luong,
  sp.gia_ban,
  sp.gia_ban * sp.so_luong AS thanh_tien
FROM
  Chi_Tiet_Hoa_Don hd,
  Khach_Hang kh,
  Hoa_Don_Ban hdb,
  San_Pham sp
WHERE
  hd.id_sp = sp.id_sp
AND hdb.id_hd = hd.id_hd
AND kh.id_kh = hdb.id_kh
AND kh.ten_kh = 'Jenilee MCGorman'

--4, Tìm sản phẩm bán được nhiều nhất
SELECT
  sp.ten_sp AS San_Pham_Ban_Chay_Nhat,
  hd.so_luong
FROM
  San_Pham sp,
  Chi_Tiet_Hoa_Don hd
WHERE
  hd.id_sp = sp.id_sp
AND hd.so_luong IN (
    SELECT
      MAX(hd.so_luong)
    FROM
      Chi_Tiet_Hoa_Don hd
  )