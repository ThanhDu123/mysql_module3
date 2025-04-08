create database danh_ba;

 use danh_ba;
 
 create table nguoi(
 id_nguoi int primary key auto_increment,
 ten varchar(50) not null
 );
 
 create table so_dien_thoai (
 id_so_dien_thoai int primary key auto_increment,
 id_nguoi int,
 so int not null,
 foreign key (id_nguoi) references nguoi(id_nguoi)
 );
 
 create table email (
 id_email int primary key auto_increment,
 id_nguoi int,
 dia_chi_email varchar(255) not null,
 foreign key (id_nguoi) references nguoi(id_nguoi)
 );
 

insert into nguoi(id_nguoi,ten) value ('001','Nguyen Van A');
insert into nguoi(id_nguoi,ten) value ('002','Nguyen Van B');
insert into nguoi(id_nguoi,ten) value ('003','Nguyen Van C');
insert into nguoi(id_nguoi,ten) value ('004','Nguyen Van D');
insert into nguoi(id_nguoi,ten) value ('005','Nguyen Van E');

SELECT * FROM nguoi;



