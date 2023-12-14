drop database if exists quan_ly_don_dat_hang;
create database if not exists quan_ly_don_dat_hang;
use quan_ly_don_dat_hang;

create table don_vi_khach(
	ma_dv int not null primary key auto_increment,
    ten_dv varchar(60),
    dia_chi varchar(20),
    sdt varchar(10)
    
    
);
create table nguoi_dat(
	ma_so_nd int not null primary key auto_increment,
    ho_ten_nd varchar(60),
	ma_dv int,
    foreign key(ma_dv) references don_vi_khach(ma_dv)
);

create table nguoi_nhan(
	ma_nn int not null primary key auto_increment,
    ho_ten_nn varchar(60),
    ma_dv int,
    foreign key(ma_dv) references don_vi_khach(ma_dv)
);
create table hang(
	ma_hang int not null primary key auto_increment,
    ten_hang varchar(60),
    dv_tinh double default 0.0,
    mo_ta_hang varchar(60)
);

create table dat(
	so_hd int not null primary key auto_increment,
    ngay_dat datetime,
    so_luong int default 1,
    ma_nn int,
    ma_hang int,
    foreign key(ma_nn) references nguoi_nhan(ma_nn),
    foreign key(ma_hang) references hang(ma_hang)
);

create table nguoi_giao(
	ma_ng int not null primary key auto_increment,
    ho_ten_ng varchar(60)
);
create table noi_giao(
	ma_ddg int not null primary key auto_increment,
    ten_noi_giao varchar(60)
);

create table giao(
	so_pg int not null primary key auto_increment,
    ngay_giao datetime,
    so_luong int default 1,
    don_gia double default 0.0,
    ma_hang int,
    ma_ng int,
    ma_ddg int,
    ma_nn int,
    foreign key(ma_hang) references hang(ma_hang),
    foreign key(ma_ng) references nguoi_giao(ma_ng),
    foreign key(ma_ddg) references noi_giao(ma_ddg),
    foreign key(ma_nn) references nguoi_nhan(ma_nn)
);
