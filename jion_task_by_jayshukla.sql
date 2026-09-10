CREATE DATABASE SchoolDB;

USE SchoolDB;

DROP TABLE IF EXISTS marks;

DROP TABLE IF EXISTS students;

CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    course VARCHAR(30)
);
CREATE TABLE marks (
    mark_id INT PRIMARY KEY,
    student_id INT,
    marks INT,
    FOREIGN KEY (student_id) REFERENCES students(id) ON DELETE CASCADE
);


SELECT s.id, s.name, s.course, m.mark_id, m.marks
FROM students s
INNER JOIN marks m
ON s.id = m.student_id;


SELECT s.id, s.name, s.course, m.marks
FROM students s
LEFT JOIN marks m
ON s.id = m.student_id;


SELECT s.name, AVG(m.marks) AS AvgMarks
FROM students s
JOIN marks m
ON s.id = m.student_id
GROUP BY s.name;


SELECT s.id, s.name, s.course, m.mark_id, m.marks
FROM students s
INNER JOIN marks m
ON s.id = m.student_id;


SELECT s.id, s.name, s.course, m.marks
FROM students s
LEFT JOIN marks m
ON s.id = m.student_id;


SELECT s.name, AVG(m.marks) AS AvgMarks
FROM students s
JOIN marks m
ON s.id = m.student_id
GROUP BY s.name;


SELECT s.id, s.name, s.course, m.mark_id, m.marks
FROM students s
INNER JOIN marks m
ON s.id = m.student_id;


SELECT s.id, s.name, s.course, m.marks
FROM students s
LEFT JOIN marks m
ON s.id = m.student_id;


SELECT s.course, SUM(m.marks) AS TotalMarks
FROM students s
JOIN marks m
ON s.id = m.student_id
GROUP BY s.course;
