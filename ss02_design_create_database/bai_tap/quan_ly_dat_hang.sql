drop database if exists quan_ly_dat_hang;
create database if not exists quan_ly_dat_hang;
use quan_ly_dat_hang;

create table phieu_xuat(
	so_px int not null primary key auto_increment,
    ngay_xuat datetime not null
);
create table vat_tu(
	ma_vtu varchar(10) not null primary key,
    ten_vtu varchar(60) not null
);
create table phieu_nhap(
	so_pn int not null primary key auto_increment,
    ngay_nhap datetime not null
);
create table nha_cung_cap(
	ma_ncc varchar(10) not null primary key,
    ten_ncc varchar(60) not null,
    dia_chi varchar(60) not null
);
create table don_dat_hang(
	so_dh int not null primary key auto_increment,
    ngay_dh datetime not null,
    ma_ncc varchar(10) not null,
    foreign key(ma_ncc) references nha_cung_cap(ma_ncc)
);
create table ncc_sdt(
	ma_ncc varchar(10) not null unique,
    sdt varchar(10) not null unique,
    primary key(ma_ncc),
    foreign key(ma_ncc) references nha_cung_cap(ma_ncc)
);

create table chi_tiet_phieu_xuat(
	don_gia_xuat double check(don_gia_xuat > 0),
    sl_xuat int check(sl_xuat >= 0),
    so_px int,
    ma_vtu varchar(10) not null,
    primary key(so_px, ma_vtu),
    foreign key(so_px) references phieu_xuat(so_px),
    foreign key(ma_vtu) references vat_tu(ma_vtu)
);
create table chi_tiet_phieu_nhap(
	don_gia_nhap double not null,
    sl_nhap int check(sl_nhap > 0),
    so_pn int not null,
    ma_vtu varchar(10) not null,
    primary key(so_pn, ma_vtu),
    foreign key(so_pn) references phieu_nhap(so_pn),
    foreign key(ma_vtu) references vat_tu(ma_vtu)
);
create table chi_tiet_don_dat_hang(
	ma_vtu varchar(10) not null,
    so_dh int,
    primary key(ma_vtu, so_dh),
    foreign key(ma_vtu) references vat_tu(ma_vtu),
    foreign key(so_dh) references don_dat_hang(so_dh)
);
