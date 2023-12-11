-- Hiển thị tất cả các sinh viên có tên bắt đầu bằng ký tự 'h':
SELECT *
FROM Students
WHERE StudentName LIKE 'h%';
-- Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12:
SELECT *
FROM Classes
WHERE MONTH(StartTime) = 12;
-- Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5:
SELECT *
FROM Subjects
WHERE Credit BETWEEN 3 AND 5;
-- Thay đổi mã lớp (ClassID) của sinh viên có tên 'Hung' thành 2:
UPDATE Students
SET ClassID = 2
WHERE StudentName = 'Hung';
-- Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. Nếu trùng sắp theo tên tăng dần:
SELECT s.StudentName, su.SubName, m.Mark
FROM Students s
JOIN Marks m ON s.StudentID = m.StudentID
JOIN Subjects su ON m.SubjectID = su.SubjectID
ORDER BY m.Mark DESC, s.StudentName ASC;