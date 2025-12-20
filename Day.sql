CREATE DATABASE company_db;

USE company_db;
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    join_date DATE,
    city VARCHAR(50)
);
SHOW TABLES;
DESC Employees;
INSERT INTO Employees VALUES
(101, 'Alice', 'HR', 50000, '2021-01-15', 'New York'),
(102, 'Bob', 'IT', 70000, '2020-03-10', 'London'),
(103, 'Charlie', 'IT', 65000, '2019-07-23', 'London');
use company_db;
show tables;
select department, sum(salary) from employees group by department;
INSERT INTO Employees (emp_id, emp_name, department, salary, join_date, city)
VALUES
(101, 'Alice', 'HR', 50000, '2021-01-15', 'New York'),
(102, 'Bob', 'IT', 70000, '2020-03-10', 'London'),
(103, 'Charlie', 'IT', 65000, '2019-07-23', 'London'),
(104, 'Diana', 'HR', 52000, '2021-06-01', 'New York'),
(105, 'Edward', 'Finance', 80000, '2018-11-12', 'Sydney'),
(106, 'Fiona', 'Finance', 75000, '2020-02-20', 'Sydney'),
(107, 'George', 'IT', 72000, '2022-04-18', 'New York');
SELECT * FROM Employees;
TRUNCATE TABLE Employees;
INSERT INTO Employees (emp_id, emp_name, department, salary, join_date, city)
VALUES
(101, 'Alice', 'HR', 50000, '2021-01-15', 'New York'),
(102, 'Bob', 'IT', 70000, '2020-03-10', 'London'),
(103, 'Charlie', 'IT', 65000, '2019-07-23', 'London'),
(104, 'Diana', 'HR', 52000, '2021-06-01', 'New York'),
(105, 'Edward', 'Finance', 80000, '2018-11-12', 'Sydney'),
(106, 'Fiona', 'Finance', 75000, '2020-02-20', 'Sydney'),
(107, 'George', 'IT', 72000, '2022-04-18', 'New York');
select*from	employees;
select department,sum(salary) from employees group by department;
select count(*), department from employees group by department;
select  emp_name,upper(substring(emp_name,1,3)),substring(emp_name,4) from employees ;
select emp_name from employees where length(emp_name)>6;
select emp_name from employees where join_date> '2020-11-30';
SELECT 
    emp_name,
    (2025 - YEAR(join_date)) AS years_since_joining
FROM Employees;
select emp_name,round(salary,-3) from employees;
SELECT city, COUNT(*) FROM Employees
GROUP BY city
HAVING COUNT(*) > 2;
SELECT city, AVG(salary) FROM Employees
GROUP BY city
HAVING AVG(salary) BETWEEN 60000 AND 75000;
SELECT department, city, AVG(salary) AS avg_salary
FROM Employees
GROUP BY department, city
ORDER BY avg_salary DESC
LIMIT 1;
SELECT department
FROM Employees
GROUP BY department
HAVING COUNT(DISTINCT city) > 1;















