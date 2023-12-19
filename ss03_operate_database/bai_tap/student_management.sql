drop database if exists student_management;
create database if not exists student_management;
use student_management;

create table student_class(
class_id int not null primary key auto_increment,
class_name varchar(60) not null,
start_date datetime not null,
statuses bit
);
create table student(
student_id int not null primary key,
student_name varchar(30) not null,
address varchar(50),
phone varchar(20),
statuses bit,
class_id int not null,
foreign key(class_id) references student_class(class_id)
);
create table subjects(
sub_id int not null primary key auto_increment,
sub_name varchar(30) not null,
credit tinyint not null default 1 check(credit >= 1),
statuses bit default 1
);
create table mark(
mark_id int not null primary key auto_increment,
sub_id int not null,
student_id int not null,
unique(sub_id, student_id),
mark float default 0,
check(mark between 0 and 100),
foreign key(sub_id) references subjects(sub_id),
foreign key(student_id) references student(student_id)
);
insert into student_class
value (1, 'A1', '2008-12-20', 1),
(2, 'A2', '2008-12-22', 1),
(3, 'A3', '2024-01-10', 0);

insert into student
value (1, 'Hanh', 'Da Nang', '0987654321', 1, 1),
(2, 'Hoa', 'Hue', '0987635241', 0, 2),
(3, 'Thuong', 'Quang Ngai', '0356230012', 0,1),
(4, 'An', 'Da Nang', '0384848484', 1, 2),
(5, 'Chi', 'Hue', '0321654987', 0, 2);

insert into subjects 
value (1, 'CF', 5, 1),
(2, 'C', 6, 1),
(3, 'HDJ', 5, 1),
(4, 'RDBMS', 10, 1);
 
 insert into mark(sub_id, student_id, mark_id, mark)
 value (1, 1, 8, 1),
 (1, 2, 10, 2),
 (2, 1, 12, 1);
    
-- Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’
select student_name from student
where student_name like 'h%';

-- Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12.
select start_date from student_class
where start_date like '%-12-%';

-- Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5.
select * from subjects
where credit between 3 and 5;

-- Thay đổi mã lớp(class_id) của sinh viên có tên ‘Chi’ là 1.
update student
set class_id = 1 where student_id = 5;

-- Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần.
SELECT 
    std.student_id, sub.sub_id, m.mark
FROM
    (mark m
    JOIN student std ON m.student_id = std.student_id
    JOIN subjects sub ON sub.sub_id = m.sub_id)
ORDER BY mark DESC , student_name ASC;
/*Bài 4*/
-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
SELECT 
    s.sub_name, MAX(credit)
FROM
    subjects s
HAVING MAX(credit);
