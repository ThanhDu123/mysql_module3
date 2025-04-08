create database test_quan_ly_truong_hoc;

use test_quan_ly_truong_hoc;

create table giao_vien(
ma_gv char(5) primary key,
ho_ten_gv varchar(255)
);

create table lop (
ma_lop char(5) primary key,
ten_lop varchar(255),
ma_gv char(5),
nam_hoc varchar(50),
foreign key (ma_gv) references giao_vien(ma_gv)
);

create table hoc_sinh (
ma_hs char(5) primary key,
ho_ten_hs varchar(255),
ho_ten_ph varchar(255),
gioi_tinh char(10),
dia_chi varchar(255),
ma_lop char(5),
foreign key (ma_lop) references lop(ma_lop)
);

create table mon_hoc (
ma_mh char(5) primary key,
ten_mh varchar(255)
);

create table ket_qua_hoc_tap (
ma_hs char(5),
ma_mh char(5),
hoc_ky varchar(10),
diem_thi_giua_ky float,
diem_thi_cuoi_ky float,

primary key (ma_hs,ma_mh),
foreign key (ma_hs) references hoc_sinh(ma_hs),
foreign key (ma_mh) references mon_hoc(ma_mh)
);

alter table ket_qua_hoc_tap add column ngay_gio_thi_cuoi_ky datetime;

create table phu_trach_bo_mon (
ma_gv char(5),
ma_lop char(5),
ma_mh char(5),
hoc_ky varchar(10),
primary key (ma_gv,ma_lop,ma_mh,hoc_ky),
foreign key (ma_gv) references giao_vien(ma_gv),
foreign key (ma_lop) references lop(ma_lop),
foreign key (ma_mh) references mon_hoc(ma_mh)
);

insert into giao_vien(ma_gv,ho_ten_gv)
value ('GV001','Nguyễn Văn Anh'),
      ('GV002','Trần Quốc Bảo'),
      ('GV003','Lê Thị Lan'),
      ('GV004','Phạm Minh Đức'),
      ('GV005','Võ Văn Nghĩa'),
      ('GV006','Huỳnh Thị Hòa'),
      ('GV007','Nguyễn Hoàng Nam'),
      ('GV008','Trần Văn Khánh'),
      ('GV009','Lê Thị Mai'),
      ('GV010','Hoàng Xuân Thanh');
      
  insert into lop(ma_lop,ten_lop,ma_gv,nam_hoc)
  value ('L0001','Lớp 1A','GV001','2022-2023'),
        ('L0002','Lớp 2A','GV001','2022-2023'),
        ('L0003','Lớp 1B','GV001','2022-2023'),
        ('L0004','Lớp 2B','GV001','2022-2023'),
        ('L0005','Lớp 3A','GV001','2022-2023'),
        ('L0006','Lớp 4A','GV001','2022-2023'),
        ('L0007','Lớp 3B','GV001','2022-2023'),
        ('L0008','Lớp 4B','GV001','2022-2023'),
        ('L0009','Lớp 5A','GV001','2022-2023'),
        ('L0010','Lớp 5B','GV001','2022-2023');
        
INSERT INTO hoc_sinh (ma_hs, ho_ten_hs, ho_ten_ph, gioi_tinh, dia_chi, ma_lop)
VALUES ('HS001', 'Nguyễn Văn Minh', 'Nguyễn Hoàng Linh', 'Nam', 'Thanh Khê', 'L0001'),
('HS002', 'Trần Thị Mai', 'Trần Văn Tuyến', 'Nữ', 'Hải Châu', 'L0002'),
('HS003', 'Lê Tuấn Anh', 'Lê Văn Tường', 'Nam', 'Thanh Khê', 'L0001'),
('HS004', 'Phạm Thị Hoa', 'Phạm Văn Lợi', 'Nữ', 'Sơn Trà', 'L0003'),
('HS005', 'Võ Minh Tuấn', 'Võ Văn Đại', 'Nam', 'Liên Chiểu', 'L0004'),
('HS006', 'Huỳnh Thị Lan', 'Huỳnh Văn Sơn', 'Nữ', 'Cẩm Lệ', 'L0005'),
('HS007', 'Nguyễn Hoàng Nam', 'Nguyễn Văn Quang', 'Nam', 'Hòa Vang', 'L0006'),
('HS008', 'Trần Minh Trí', 'Trần Văn Hoàng', 'Nam', 'Hải Châu', 'L0007'),
('HS009', 'Lê Thị Thanh', 'Lê Văn Tâm', 'Nữ', 'Thanh Khê', 'L0008'),
('HS010', 'Hoàng Quốc Bảo', 'Hoàng Văn Lâm', 'Nam', 'Cẩm Lệ', 'L0009'),
('HS011', 'Nguyễn Thị Thu', 'Nguyễn Văn Hùng', 'Nữ', 'Thanh Khê', 'L0001'),
('HS012', 'Trần Minh Hiếu', 'Trần Văn Hoàn', 'Nam', 'Hải Châu', 'L0002'),
('HS013', 'Lê Thị Bình', 'Lê Văn Tuấn', 'Nữ', 'Thanh Khê', 'L0001'),
('HS014', 'Phạm Minh Tuấn', 'Phạm Văn Đông', 'Nam', 'Sơn Trà', 'L0003'),
('HS015', 'Võ Thị Hoài', 'Võ Văn An', 'Nữ', 'Liên Chiểu', 'L0004'),
('HS016', 'Huỳnh Văn Thanh', 'Huỳnh Thị Trang', 'Nam', 'Cẩm Lệ', 'L0005'),
('HS017', 'Nguyễn Văn Hải', 'Nguyễn Thị Ngọc', 'Nam', 'Hòa Vang', 'L0006'),
('HS018', 'Trần Thị Hương', 'Trần Văn Đạo', 'Nữ', 'Hải Châu', 'L0007'),
('HS019', 'Lê Minh Quân', 'Lê Thị Thảo', 'Nam', 'Thanh Khê', 'L0008'),
('HS020', 'Hoàng Văn Phú', 'Hoàng Thị Lệ', 'Nam', 'Cẩm Lệ', 'L0009'),
('HS021', 'Nguyễn Minh Huy', 'Nguyễn Thị Mai', 'Nam', 'Thanh Khê', 'L0001'),
('HS022', 'Trần Thị Thảo', 'Trần Văn Tùng', 'Nữ', 'Hải Châu', 'L0002'),
('HS023', 'Lê Văn Đức', 'Lê Thị Hương', 'Nam', 'Thanh Khê', 'L0001'),
('HS024', 'Phạm Thị Hoa', 'Phạm Văn Trung', 'Nữ', 'Sơn Trà', 'L0003'),
('HS025', 'Võ Minh Tuấn', 'Võ Thị Ngọc', 'Nam', 'Liên Chiểu', 'L0004'),
('HS026', 'Huỳnh Văn Quý', 'Huỳnh Thị Lan', 'Nam', 'Cẩm Lệ', 'L0005'),
('HS027', 'Nguyễn Thị Tâm', 'Nguyễn Văn Anh', 'Nữ', 'Hòa Vang', 'L0006'),
('HS028', 'Trần Văn Hoàng', 'Trần Thị Bình', 'Nam', 'Hải Châu', 'L0007'),
('HS029', 'Lê Minh Tuấn', 'Lê Văn Thanh', 'Nam', 'Thanh Khê', 'L0008'),
('HS030', 'Hoàng Thị Ngân', 'Hoàng Văn Phương', 'Nữ', 'Cẩm Lệ', 'L0009'),
('HS031', 'Nguyễn Minh Thuận', 'Nguyễn Thị Hoài', 'Nam', 'Hòa Minh, Liên Chiểu, Đà Nẵng', 'L0001'),
('HS032', 'Trần Thanh Thảo', 'Trần Văn Quân', 'Nữ', 'Hải Châu, Đà Nẵng', 'L0002'),
('HS033', 'Lê Thị Kim', 'Lê Văn Trọng', 'Nữ', 'Cẩm Lệ, Đà Nẵng', 'L0003'),
('HS034', 'Phạm Văn Hoàng', 'Phạm Thị Hà', 'Nam', 'Sơn Trà, Đà Nẵng', 'L0004'),
('HS035', 'Võ Thị Lan', 'Võ Văn Sơn', 'Nữ', 'Ngũ Hành Sơn, Đà Nẵng', 'L0005'),
('HS036', 'Huỳnh Văn Nam', 'Huỳnh Thị Thanh', 'Nam', 'Thanh Khê, Đà Nẵng', 'L0006'),
('HS037', 'Nguyễn Thị Hương', 'Nguyễn Văn Huy', 'Nữ', 'Hòa Vang, Đà Nẵng', 'L0007'),
('HS038', 'Trần Văn Đức', 'Trần Thị Ngọc', 'Nam', 'Hải Châu, Đà Nẵng', 'L0008'),
('HS039', 'Lê Văn Quyền', 'Lê Thị Thu', 'Nam', 'Cẩm Lệ, Đà Nẵng', 'L0009'),
('HS040', 'Hoàng Minh Tuấn', 'Hoàng Văn Hoa', 'Nam', 'Sơn Trà, Đà Nẵng', 'L0010'),
('HS041', 'Trần Văn Hưng', 'Trần Thị Lan', 'Nam', 'Hòa Minh, Liên Chiểu, Đà Nẵng', 'L0001'),
('HS042', 'Nguyễn Thị Hà', 'Nguyễn Văn Tâm', 'Nữ', 'Hải Châu, Đà Nẵng', 'L0002'),
('HS043', 'Lê Minh Hoàng', 'Lê Thị Hoàng', 'Nam', 'Cẩm Lệ, Đà Nẵng', 'L0003'),
('HS044', 'Phạm Thị Quỳnh', 'Phạm Văn Trung', 'Nữ', 'Sơn Trà, Đà Nẵng', 'L0004'),
('HS045', 'Võ Minh Quân', 'Võ Thị Lan', 'Nam', 'Ngũ Hành Sơn, Đà Nẵng', 'L0005'),
('HS046', 'Huỳnh Văn Thanh', 'Huỳnh Thị Thảo', 'Nam', 'Thanh Khê, Đà Nẵng', 'L0006'),
('HS047', 'Nguyễn Văn Hùng', 'Nguyễn Thị Hương', 'Nam', 'Hòa Vang, Đà Nẵng', 'L0007'),
('HS048', 'Trần Minh Tuấn', 'Trần Thị Phương', 'Nam', 'Hải Châu, Đà Nẵng', 'L0008'),
('HS049', 'Lê Thị Bích', 'Lê Văn Trọng', 'Nữ', 'Cẩm Lệ, Đà Nẵng', 'L0009'),
('HS050', 'Hoàng Văn Lâm', 'Hoàng Thị Thu', 'Nam','Sơn Trà, Đà Nẵng', 'L0010');


insert into mon_hoc (ma_mh, ten_mh)
value
('MH001', 'Toán học'),
('MH002', 'Ngữ văn'),
('MH003', 'Lịch sử'),
('MH004', 'Địa lý'),
('MH005', 'Sinh học'),
('MH006', 'Vật lí'),
('MH007', 'Hóa học'),
('MH008', 'Giáo dục công dân'),
('MH009', 'Thể dục'),
('MH010', 'Âm nhạc');


INSERT INTO ket_qua_hoc_tap (ma_hs, hoc_ky, ma_mh, diem_thi_giua_ky, diem_thi_cuoi_ky, ngay_gio_thi_cuoi_ky)
value
('HS001', 'Học kỳ 1', 'MH001', 8.5, 9.0, '2023-01-15 08:00:00'),
('HS002', 'Học kỳ 1', 'MH001', 7.0, 7.5, '2023-01-15 09:30:00'),
('HS003', 'Học kỳ 1', 'MH001', 6.5, 7.0, '2023-01-15 08:00:00'),
('HS004', 'Học kỳ 1', 'MH001', 8.0, 8.5, '2023-01-15 09:30:00'),
('HS005', 'Học kỳ 1', 'MH001', 9.0, 9.5, '2023-01-15 08:00:00'),
('HS006', 'Học kỳ 1', 'MH001', 7.5, 8.0, '2023-01-15 09:30:00'),
('HS007', 'Học kỳ 1', 'MH001', 6.0, 6.5, '2023-01-15 08:00:00'),
('HS008', 'Học kỳ 1', 'MH001', 8.5, 9.0, '2023-01-15 09:30:00'),
('HS009', 'Học kỳ 1', 'MH001', 7.0, 7.5, '2023-01-15 08:00:00'),
('HS010', 'Học kỳ 1', 'MH001', 6.5, 7.0, '2023-01-15 09:30:00'),
('HS011', 'Học kỳ 1', 'MH001', 8.0, 8.5, '2023-01-15 08:00:00'),
('HS012', 'Học kỳ 1', 'MH001', 9.0, 9.5, '2023-01-15 09:30:00'),
('HS013', 'Học kỳ 1', 'MH001', 7.5, 8.0, '2023-01-15 08:00:00'),
('HS014', 'Học kỳ 1', 'MH001', 6.0, 6.5, '2023-01-15 09:30:00'),
('HS015', 'Học kỳ 1', 'MH001', 8.5, 9.0, '2023-01-15 08:00:00'),
('HS016', 'Học kỳ 1', 'MH001', 7.0, 7.5, '2023-01-15 09:30:00'),
('HS017', 'Học kỳ 1', 'MH001', 6.5, 7.0, '2023-01-15 08:00:00'),
('HS018', 'Học kỳ 1', 'MH001', 8.0, 8.5, '2023-01-15 09:30:00'),
('HS019', 'Học kỳ 1', 'MH001', 9.0, 9.5, '2023-01-15 08:00:00'),
('HS020', 'Học kỳ 1', 'MH001', 7.5, 8.0, '2023-01-15 09:30:00'),
('HS021', 'Học kỳ 1', 'MH001', 6.0, 6.5, '2023-01-15 08:00:00'),
('HS022', 'Học kỳ 1', 'MH001', 8.5, 9.0, '2023-01-15 09:30:00'),
('HS023', 'Học kỳ 1', 'MH001', 6.5, 7.0, '2023-01-15 08:00:00');

insert into phu_trach_bo_mon (ma_gv,ma_lop,ma_mh,hoc_ky)
values
('GV001', 'L0001', 'MH001', 'Học kỳ 1'),
('GV002', 'L0003', 'MH002', 'Học kỳ 1'),
('GV003', 'L0002', 'MH003', 'Học kỳ 1'),
('GV004', 'L0004', 'MH004', 'Học kỳ 1'),
('GV005', 'L0005', 'MH005', 'Học kỳ 1'),
('GV006', 'L0006', 'MH006', 'Học kỳ 1'),
('GV007', 'L0007', 'MH007', 'Học kỳ 1'),
('GV008', 'L0008', 'MH008', 'Học kỳ 1'),
('GV009', 'L0009', 'MH009', 'Học kỳ 1'),
('GV010', 'L0010', 'MH010', 'Học kỳ 1'),
('GV001', 'L0001', 'MH001', 'Học kỳ 2'),
('GV002', 'L0003', 'MH002', 'Học kỳ 2'),
('GV003', 'L0002', 'MH003', 'Học kỳ 2'),
('GV004', 'L0004', 'MH004', 'Học kỳ 2'),
('GV005', 'L0005', 'MH005', 'Học kỳ 2'),
('GV006', 'L0006', 'MH006', 'Học kỳ 2'),
('GV007', 'L0007', 'MH007', 'Học kỳ 2'),
('GV008', 'L0008', 'MH008', 'Học kỳ 2'),
('GV009', 'L0009', 'MH009', 'Học kỳ 2'),
('GV010', 'L0010', 'MH010', 'Học kỳ 2');



-- Câu 1: liệt kê thông tin giáo viên, học sinh và lớp học trong trường
-- 1a. Toàn bộ thông tin của toàn bộ giáo viên trong trường
select * from giao_vien;
-- 1b. Họ tên học sinh, giới tính, họ tên phụ huynh của toàn bộ học sinh trong trường
select ho_ten_hs , ho_ten_ph , gioi_tinh from hoc_sinh;
-- 1c.Toàn bộ thông tin của tất cả các lớp trong trường
select * from lop;

-- Câu 2: Truy vấn dữ liệu học sinh và lớp học
-- 2a: Những học sinh có giới tính là nam
select * from hoc_sinh;
select * from hoc_sinh where gioi_tinh = 'nam';

-- 2b 
select ho_ten_hs, gioi_tinh, dia_chi from hoc_sinh where ho_ten_ph is null;

-- 2c: Những lớp chưa có giáo viên chủ nhiệm
select * from lop where ma_gvcn IS NULL;

-- 2d: Những học sinh chưa được phân lớp
select * from hoc_sinh where ma_lop is null ;

-- 2e: Những học sinh nữ có địa chỉ ở thanh khuê
select * from hoc_sinh where gioi_tinh = 'Nữ' and dia_chi like '%Thanh Khê%' ;

-- 2f. Những học sinh nam có địa chỉ ở Hải Châu hoặc những học sinh nữ có địa chỉ ở Thanh Khê.
select * from hoc_sinh where (gioi_tinh = 'nam' and dia_chi like '%Hải Châu%') or (gioi_tinh = 'nữ' and dia_chi like '%Thanh Khê%');

-- 2g. Những học sinh nam chưa có tên phụ huynh và những học sinh nữ chưa được phân lớp.
select * from hoc_sinh where (gioi_tinh = 'Nam' and ho_ten_ph is null) and (gioi_tinh = 'Nữ' and ma_lop is null);

-- 2h. Những học sinh nam chưa được phân lớp và những học sinh nam chưa có tên phụ huynh.
select * from hoc_sinh where gioi_tinh = 'Nam' and  (ma_lop is null or ho_ten_ph is null);

-- 2i. Mã môn học của những môn học được dạy trong học kỳ 1.
select * from ket_qua_hoc_tap;
select distinct ma_mh from phu_trach_bo_mon where hoc_ky = 'Học Kỳ 1';



-- câu 3 Like
-- a. Những học sinh có họ bắt đầu bằng từ Nguyễn.
select * from hoc_sinh where ho_ten_hs like "Nguyễn%";

-- b. Những học sinh có họ kết thúc bằng từ Nở.
SELECT * FROM hoc_sinh WHERE  ho_ten_hs LIKE  "%Nở";

-- c. Những học sinh có họ tên chỨa từ Thị.
select * from hoc_sinh where ho_ten_hs like "%Thị%";

-- d. Những học sinh chứa từ Thị ở giữa (không được chửa ở đầu và ở cuối).
select * from hoc_sinh where ho_ten_hs like "% Thị %";

-- e. Những học sinh có họ tên với độ dài là 30 ký tự (kể cả khoảng trắng).
-- không được
SELECT * FROM hoc_sinh WHERE length(ho_ten_hs) = 30;

-- f. Những học sinh có họ tên với độ dài tối đa là 30 ký tự.
SELECT * FROM hoc_sinh WHERE length(ho_ten_hs) <= 30;

-- g. Những học sinh có họ tên với độ dài tối đa 30 ký tự và bắt đầu bằng ký tự N.
SELECT * FROM hoc_sinh WHERE length(ho_ten_hs) <= 30 and ho_ten_hs like'N%';

-- h. Những học sinh có họ tên bắt đầu bằng các ký tự: N, T, V.
SELECT * FROM hoc_sinh WHERE ho_ten_hs like 'N%' or ho_ten_hs like 'T%' or ho_ten_hs like 'V%' ;

-- i. Những học sinh có họ tên không được bắt đầu bằng các ký tự: N, T, V.
SELECT * FROM hoc_sinh WHERE ho_ten_hs not like 'N%' and ho_ten_hs not like 'T%' and  ho_ten_hs not like 'V%' ;

-- j. Những học sinh có họ tên với phần họ có đúng 4 ký tự.



-- Câu 4: Luyện tập về DISTINCT
-- a. Họ tên của toàn bộ học sinh trong trường, nếu họ tên nào trùng nhau thì chỉ hiển thị 1 lần.
select distinct ho_ten_hs from hoc_sinh ;

-- b. Mã lớp của các lớp đã có học sinh học ở lớp đó. Nếu mã lớp nào trùng nhau thì chỉ hiển thị 1 lần.
select distinct ma_lop from hoc_sinh ;

-- c. Mã môn học của những môn học đã có ít nhất 1 giáo viên được phân công phụ trách rồi. (*)
-- không được
select distinct ma_gvpt from phu_trach_bo_mon where ma_mh is null;

-- d. Mã môn học của những môn học đã từng được tổ chức thi ít nhất 1 lần.
select distinct ma_mh from ket_qua_hoc_tap ;

-- e. Mã giáo viên của những giáo viên đã từng làm chủ nhiệm cho ít nhất 1 lớp nào đó.
select distinct ma_gvcn from lop ;


-- Câu 5: Luyện tập về ORDER BY
-- asc : tăng dần ( mặc định )
-- desc: giảm dần

-- a. Thông tin của toàn bộ học sinh trong trường. Kết quả trả về cần được sắp xếp tăng dần theo tên học sinh.
select * from hoc_sinh ORDER BY ho_ten_hs ; 

-- b. Thông tin của toàn bộ học sinh trong trường. Kết quả trả về cần được sắp xếp giảm dần theo địa chỉ.
select * from hoc_sinh ORDER BY dia_chi desc;

-- c. Thông tin của toàn bộ học sinh trong trường. Kết quả trả về cần được sắp xếp tăng dần theo tên học sinh và giảm dần theo địa chỉ.
select * from hoc_sinh ORDER BY ho_ten_hs asc, dia_chi desc;

-- d. Thông tin của toàn bộ học sinh trong trường. Kết quả trả về cần được sắp xếp tăng dần theo tên học sinh và tăng dần theo địa chỉ.
select * from hoc_sinh ORDER BY ho_ten_hs , dia_chi ;

-- e. Thông tin của toàn bộ học sinh trong trường. Kết quả trả về cần được sắp xếp giảm dần theo tên học sinh, giảm dần theo địa chỉ.
select * from hoc_sinh ORDER BY ho_ten_hs desc , dia_chi desc;

-- f. Thông tin của toàn bộ học sinh trong trường. Kết quả trả về cần được sắp xếp giảm dần theo tên học sinh, giảm dần theo địa chỉ và tăng dần theo tên phụ huynh.
select * from hoc_sinh ORDER BY ho_ten_hs desc , dia_chi desc , ho_ten_ph asc;

-- Câu 6: Luyện tập về JOIN 2 bảng
-- a. Liệt kê ma_hoc_sinh, ho_ten_hoc_sinh, gioi_tinh, ma_lop, ten_lop, ma_gvcn của tất cả học sinh trong trường.
select hs.ma_hs, hs.ho_ten_hs, hs.gioi_tinh, hs.ma_lop, lop.ten_lop, lop.ma_gvcn
from hoc_sinh hs
inner join lop on hs.ma_lop = lop.ma_lop;

-- b. Liệt kê ma_hoc_sinh, ho_ten_hoc_sinh, hoc_ky, ma_mon_hoc, diem_thi_giua_ky, diem_thi_cuoi_ky của tất cả học sinh và các môn học có kết quả tương ứng với từng học sinh trong trường.
select hs.ma_hs, hs.ho_ten_hs, kq.hoc_ky, kq.ma_mh, kq.diem_thi_giua_ky, kq.diem_thi_cuoi_ky
from hoc_sinh hs
inner join  ket_qua_hoc_tap kq on hs.ma_hs = kq.ma_hs;

-- c. Liệt kê ma_giao_vien, ho_ten_giao_vien, ma_lop, ma_mon_hoc, hoc_ky của những giáo viên đã được phân công phụ trách ít nhất một môn học.
select gv.ma_gv, gv.ho_ten_gv, pt.ma_lop, pt.ma_mh, pt.hoc_ky
from giao_vien gv
inner join  phu_trach_bo_mon pt on gv.ma_gv = pt.ma_gvpt;

-- d. Suy nghĩ về yêu cầu a ở trên: Nếu học sinh chưa được phân lớp thì liệu có liệt kê được học sinh đó không?
-- e. Suy nghĩ về yêu cầu b ở trên: Nếu học sinh chưa có kết quả thi của môn nào cả thì liệu có liệt kê được học sinh đó không?
-- f. Suy nghĩ về yêu cầu c ở trên: Nếu giáo viên chưa phụ trách một môn nào cả thì liệu có liệt kê được giáo viên đó không?


