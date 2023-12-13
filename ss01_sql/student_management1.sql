drop database if exists student_managament;
create database if not exists student_managament;
use student_managament;
create table class(
	class_id int primary key auto_increment,
    class_name varchar(100)
);

create table teacher(
	teacher_id int primary key auto_increment,
    teacher_name varchar(100),
    age int,
    country varchar(100),
    class_id int,
    foreign key (class_id) references class(class_id)
);
select * from teacher;