drop database if exists quan_ly_sinh_vien;
create database if not exists quan_ly_sinh_vien;
use quan_ly_sinh_vien;

create table lop(
	ma_lop int not null primary key auto_increment,
    ten_lop varchar(60) not null,
    thoi_gian_bat_dau datetime not null,
    trang_thai_lop bit
);
create table hoc_sinh(
	ma_hs int not null primary key auto_increment,
    ten_hs varchar(30) not null,
    dia_chi varchar(50),
    sdt varchar(20),
    trang_thai_hs bit,
    ma_lop int,
    foreign key(ma_lop) references lop(ma_lop)
);
create table doi_tuong(
	ma_dt int not null primary key auto_increment,
    ten_dt varchar(30),
    thanh_toan tinyint not null default 1 check (thanh_toan >= 1),
    trang_thai_dt bit default 1
);
create table mark(
	mark_id int not null primary key auto_increment,
    sub_id int not null unique key,
    student_id int not null unique key,
    mark float default 0 check(mark between 0 and 100),
    exam_times tinyint default 1,
    foreign key(sub_id) references subjects(sub_id),
    foreign key(student_id) references student(student_id)
);
