use quan_ly_sinh_vien;
select * from Student;

select * from Student 
where Status = true;

SELECT * FROM Subject
WHERE Credit < 10;

-- join 2 bảng Student và Class
select S.StudentId, S.StudentName, C.ClassName
from Student S join Class C on S.ClassId = C.ClassID;

-- câu lệnh Where C.ClassName ='A1' để hiển thị danh sách học viên lớp A1
SELECT S.StudentId, S.StudentName, C.ClassName
FROM Student S join Class C on S.ClassId = C.ClassID
WHERE C.ClassName = 'A1';

-- Hiển thị tất cả các điểm đang có của học viên
-- SELECT S.StudentId, S.StudentName, Sub.SubName, M.Mark
-- FROM Student S join Mark M on S.StudentId = M.StudentId join Subject Sub on M.SubId = Sub.SubId

-- Where để hiển thị điểm môn CF của các học viên
SELECT S.StudentId, S.StudentName, Sub.SubName, M.Mark
FROM Student S join Mark M on S.StudentId = M.StudentId join Subject Sub on M.SubId = Sub.SubId
WHERE Sub.SubName = 'CF';