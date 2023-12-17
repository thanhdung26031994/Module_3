drop database if exists seles_management;
create database if not exists seles_management;
use seles_management;
create table customer(
	c_id int not null primary key unique,
    c_name varchar(60) not null,
    c_age int not null,
    check(c_age >= 18)
);
create table product(
	p_id varchar(10) not null primary key unique,
    p_name varchar(60) not null,
    p_price int not null,
    check(p_price > 0)
);
create table order_cus(
	o_id int not null primary key unique,   
    c_id int not null,
    o_date datetime not null,
    o_total_price long not null,
    foreign key(c_id) references customer(c_id)
);
create table order_detail(
	o_id int not null,
    p_id varchar(10) not null,
    od_qty int not null,
    check(od_qty > 0),
    primary key(o_id, p_id),
    foreign key(o_id) references order_cus(o_id),
    foreign key(p_id) references product(p_id)
);