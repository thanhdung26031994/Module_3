create database student_management;
use student_management;

create table Class(
	class_id int,
    class_name varchar(100)
);

create table Teacher(
	teacher_id int,
    teacher_name varchar(100),
    age int,
    country varchar(100)
);