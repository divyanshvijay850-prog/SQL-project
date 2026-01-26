use  window_fn_practice;
show tables;
select*from employees;
select* from sales;
select *,row_number() over(order by salary desc) from employees;
select *,rank() over(order by full_name) from employees;
select*,dense_rank() over(order by salary) from employees; 
select*,row_number() over(partition by department order by salary desc) from employees;
select *,lead(salary) over() from employees;
select *,lead(salary,2) over() from employees;
select *,lag(salary,1) over() from employees;
select *,lag(salary,1) over(partition by department) from employees;
select *,lag(salary,1) over(partition by department order by hire_date),
salary- lag(salary,1) over(partition by department order by hire_date)from employees;
select*,lag(salary) over(order by salary desc),
lead(salary) over(order by salary desc) from employees;
select*,sum(amount) over(order by sale_date) from sales;

select*,sum(amount) over(partition by emp_id order by sale_date) from sales;
select*,sum(amount) over() from sales;
select*,avg(salary) over(partition by department) from employees;
-- intermediate
-- subquery saved to a variable named as "tempdata"
-- first the subquery is sloved to the variable
-- and then we access the column and filter out of data
-- Top 2 salaries in each department (use ROW_NUMBER)
select*from
(select*,row_number() over(partition by department order by salary) as row_value from employees) tempdata where row_value<=2;
-- Salary difference vs department average
select*,avg(salary) over(partition by department),
salary-avg(salary) over(partition by department) from employees;

-- Percent rank of employees by salary (overall)
select *,sum(salary) over(),
rank() over(order by salary),
percent_rank() over (order by salary) from employees;







