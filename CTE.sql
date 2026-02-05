use regex;
with vasu_cte as
(select *from sakila.actor where actor_id between 1 and 100)

select count(*)from vasu_cte;

with cte as
(select month(payment_date)from sakila.payment)

select month(payment_date), count(*) from sakila.payment group by month(payment_date);

select*, month(payment_date)from sakila.payment;
-- find out second highest amount of each customer 
with cte as
(select*,dense_rank() over(partition by customer_id order by amount desc) as ranking from sakila.payment)

select* from cte where ranking=2;

create database test55;
use test55;

CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary INT,
    hire_date DATE
);

INSERT INTO employee VALUES
(101, 'Amit',   'IT',      60000, '2020-01-15'),
(102, 'Rohit',  'IT',      75000, '2019-03-20'),
(103, 'Neha',   'HR',      45000, '2021-07-10'),
(104, 'Priya',  'HR',      55000, '2018-11-25'),
(105, 'Vikas',  'Sales',   50000, '2020-05-30'),
(106, 'Anita',  'Sales',   65000, '2017-09-18'),
(107, 'Rahul',  'IT',      80000, '2016-12-01'),
(108, 'Sneha',  'Finance', 70000, '2019-06-14'),
(109, 'Karan',  'Finance', 48000, '2021-02-22'),
(110, 'Pooja',  'HR',      60000, '2015-08-05');

select*from employee;

select department, avg(salary) from employee  group by department;


select emp_id,emp_name,department,salary from employee as e
where salary>(select avg(salary) from employee where department=e.department);

with cte as(
select department as dept, avg(salary) as deptsalary from employee group by department)

select emp_id,emp_name,department,salary dept, deptsalary from employee as e join cte  where e.department=cte.dept
and salary>deptsalary;








