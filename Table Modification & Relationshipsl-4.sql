USE SchoolDB;

SHOW TABLES;
CREATE TABLE teachers (
    teacher_id INT PRIMARY KEY,
    name VARCHAR(50),
    subject VARCHAR(30)
);
DESC teachers;
INSERT INTO teachers (teacher_id, name, subject)
VALUES
(1, 'Amit', 'SQL'),
(2, 'Neha', 'Excel'),
(3, 'Rahul', 'Power BI');
SELECT * FROM teachers;
ALTER TABLE teachers
ADD email VARCHAR(100);
DESC teachers;
ALTER TABLE teachers
RENAME COLUMN subject TO subject_name;
DESC teachers;
ALTER TABLE teachers
DROP COLUMN email;
DESC teachers;
RENAME TABLE teachers TO faculty;
SHOW TABLES;
CREATE TABLE faculty_salary (
    salary_id INT PRIMARY KEY,
    teacher_id INT,
    salary INT,
    FOREIGN KEY (teacher_id)
        REFERENCES faculty(teacher_id)
        ON DELETE CASCADE
);
INSERT INTO faculty_salary (salary_id, teacher_id, salary)
VALUES
(101, 1, 30000),
(102, 2, 35000),
(103, 3, 40000);
SELECT * FROM faculty;
SELECT * FROM faculty_salary;
DELETE FROM faculty
WHERE teacher_id = 1;
TRUNCATE TABLE faculty_salary;
SELECT * FROM faculty_salary;
DROP TABLE faculty_salary;
DROP TABLE faculty;
DROP TABLE faculty_salary;
DROP TABLE faculty;
SHOW TABLES;