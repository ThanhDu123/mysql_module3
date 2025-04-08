create database Cua_hang_sach;

use Cua_hang_sach;

create table tac_gia (
 id_tac_gia INT PRIMARY KEY AUTO_INCREMENT,
 ten_tac_gia VARCHAR(50) NOT NULL
);

create table sach (
id_sach INT PRIMARY KEY AUTO_INCREMENT,
ten_sach VARCHAR(50) NOT NULL,
gia_sach INT NOT NULL,
id_tac_gia INT,
FOREIGN KEY (id_tac_gia) REFERENCES tac_gia(id_tac_gia)
);
create table nhan_vien (
id_nhan_vien INT PRIMARY KEY AUTO_INCREMENT,
ten_nhan_vien VARCHAR(50) NOT NULL,
dia_chi VARCHAR(50) NOT NULL
);

create table nhan_vien_ban_sach (
id_sach INT,
id_nhan_vien INT,
PRIMARY KEY (id_sach,id_nhan_vien),
FOREIGN KEY (id_sach) REFERENCES sach(id_sach),
FOREIGN KEY (id_nhan_vien) REFERENCES nhan_vien(id_nhan_vien)
);