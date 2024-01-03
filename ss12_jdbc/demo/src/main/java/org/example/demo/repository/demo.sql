drop database if exists demo;
create database if not exists demo;
use demo;
create table users(
	id int(3) not null auto_increment primary key,
    name varchar(120) not null,
    email varchar(120) not null,
    country varchar(120)
);

insert into users(name, email, country) values('Minh','minh@codegym.vn','Viet Nam');
insert into users(name, email, country) values('Kante','kante@che.uk','Kenia');