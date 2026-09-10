USE SchoolDB;

USE SchoolDB;
SHOW TABLES;
DESCRIBE Students;
SELECT Course, AVG(Marks) AS AvgMarks
FROM Students
WHERE Marks > 40
GROUP BY Course
HAVING AVG(Marks) > 50
ORDER BY AvgMarks DESC
LIMIT 3;
SELECT StudentName, Marks
FROM Students
WHERE Marks BETWEEN 60 AND 90
ORDER BY Marks DESC
LIMIT 3;
SELECT StudentName, Course, Marks
FROM Students
WHERE Course IN ('Science', 'Commerce', 'Arts');
SELECT StudentName, Course, Marks
FROM Students
WHERE Marks BETWEEN 60 AND 80;
SELECT StudentName, Marks
FROM Students
WHERE Marks BETWEEN 60 AND 90;
SELECT StudentName, Course, Marks
FROM Students
WHERE Course IN ('BCA','MCA');
SELECT COUNT(DISTINCT Course) AS UniqueCourses
FROM Students;
SELECT StudentName
FROM Students
WHERE StudentName LIKE 'N%';