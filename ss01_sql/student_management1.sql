drop database if exists student_managament;
create database if not exists student_managament;
use student_managament;
create table lop(
	ma_lop int primary key auto_increment,
    ten_lop varchar(100)
);

create table giao_vien(
	ma_gv int primary key auto_increment,
    ten_gv varchar(100),
    tuoi int,
    dia_chi varchar(100),
    ma_lop int,
    foreign key (ma_lop) references lop(ma_lop)
);
select * from teacher;