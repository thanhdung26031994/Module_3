drop database if exists farm;
create database if not exists farm;
use farm;

create table cage(
	id_cage int primary key auto_increment,
    type_cage varchar(50),
    capacity int check (capacity >= 0)
);

create table pig(
	id int primary key,
    name_pig varchar(100) not null,
    weight float check(weight > 0),
    age int check(age > 0),
    gender bit(1),
    id_cage int,
    foreign key(id_cage) references cage(id_cage)
);