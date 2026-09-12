USE CompanyDB;
SHOW TABLES;
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT
);
DESC employees;
SELECT * FROM employees;
DESC departments;
SELECT * FROM departments;
USE CompanyDB;

SHOW TABLES;

DESC employees;
SELECT * FROM employees;
USE CompanyDB;

SHOW TABLES;
DESC departments;
SELECT * FROM departments;
DESC employees;
SELECT * FROM employees;
USE CompanyDB;
SHOW TABLES;
DESC employees;
DESC departments;
USE CompanyDB;

USE CompanyDB;

DESC employees;
USE CompanyDB;
DESC employees;
INSERT INTO employees (EmpID, EmpName, Department, Location, Salary, JoiningYear, IsActive) VALUES
(1, 'Amit', 'HR', 'Mumbai', 40000.00, 2020, 1),
(2, 'Sneha', 'IT', 'Delhi', 55000.00, 2021, 1),
(3, 'Raj', 'Finance', 'Pune', 30000.00, 2019, 0),
(4, 'Meera', 'IT', 'Chennai', 60000.00, 2022, 1);
SELECT * FROM employees;
SHOW TABLES;
DESC departments;
DESC employees;
INSERT INTO departments (department_id, department_name) VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');

INSERT INTO employees (employee_id, employee_name, department_id) VALUES
(101, 'Amit', 1),
(102, 'Sneha', 2),
(103, 'Raj', NULL),
(104, 'Meera', 2);
DESC employees;
DESC employees;
DESC employees;


SELECT * FROM employees;
INSERT INTO employees (EmpID, EmpName, Department, Location, Salary, JoiningYear, IsActive) VALUES
(101, 'Amit', 'HR', 'Mumbai', 40000.00, 2020, 1),
(102, 'Sneha', 'IT', 'Delhi', 55000.00, 2021, 1),
(103, 'Raj', 'Finance', 'Pune', 30000.00, 2019, 0),
(104, 'Meera', 'IT', 'Chennai', 60000.00, 2022, 1),
(105, 'Karan', 'HR', 'Ahmedabad', 45000.00, 2023, 1);
SELECT e.EmpName, e.Salary, d.department_name
FROM employees e
INNER JOIN departments d
ON e.Department = d.department_name;
SELECT * FROM employees;
SELECT EmpName, Department, Salary
FROM employees
WHERE IsActive = 1;
SELECT Department, AVG(Salary) AS AvgSalary
FROM employees
GROUP BY Department;
SELECT EmpName, Department, Salary
FROM employees
ORDER BY Salary DESC
LIMIT 1;
SELECT e.EmpName, e.Department, d.department_name
FROM employees e
INNER JOIN departments d
ON e.Department = d.department_name;
SELECT Department, AVG(Salary) AS AvgSalary, MAX(Salary) AS MaxSalary, MIN(Salary) AS MinSalary
FROM employees
GROUP BY Department;
SELECT EmpName, Department, JoiningYear
FROM employees
WHERE JoiningYear > 2020;
SELECT EmpName, Department, Salary
FROM employees
ORDER BY Salary DESC
LIMIT 1;
SELECT e.EmpName, e.Salary, d.department_name
FROM employees e
INNER JOIN departments d
ON e.Department = d.department_name;
CREATE TABLE projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100),
    Department VARCHAR(50),
    StartYear INT,
    EndYear INT
);

INSERT INTO projects VALUES
(201, 'Payroll System', 'HR', 2021, 2022),
(202, 'Website Upgrade', 'IT', 2022, 2023),
(203, 'Budget Planning', 'Finance', 2020, 2021),
(204, 'CRM Implementation', 'Sales', 2023, NULL);
SELECT * FROM projects;
SELECT e.EmpName, e.Department, d.department_name, p.ProjectName, p.StartYear, p.EndYear
FROM employees e
INNER JOIN departments d
ON e.Department = d.department_name
LEFT JOIN projects p
ON e.Department = p.Department;
SELECT Department, COUNT(ProjectID) AS TotalProjects
FROM projects
GROUP BY Department;
SELECT e.EmpName, e.Salary, p.ProjectName
FROM employees e
LEFT JOIN projects p
ON e.Department = p.Department;
SELECT 
    e.Department,
    COUNT(e.EmpID) AS TotalEmployees,
    SUM(e.Salary) AS TotalSalary,
    AVG(e.Salary) AS AvgSalary,
    COUNT(DISTINCT p.ProjectID) AS TotalProjects
FROM employees e
LEFT JOIN projects p
    ON e.Department = p.Department
GROUP BY e.Department;

SELECT 
    p.Department,
    COUNT(e.EmpID) AS TotalEmployees,
    SUM(e.Salary) AS TotalSalary,
    AVG(e.Salary) AS AvgSalary,
    COUNT(DISTINCT p.ProjectID) AS TotalProjects
FROM employees e
LEFT JOIN projects p
    ON e.Department = p.Department
GROUP BY p.Department;