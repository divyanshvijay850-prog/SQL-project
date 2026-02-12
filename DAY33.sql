create database self;
use self;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(30),
    join_date DATE
);

INSERT INTO customers VALUES
(1, 'Amit', 'Delhi', '2023-01-10'),
(2, 'Neha', 'Mumbai', '2023-03-15'),
(3, 'Rahul', 'Delhi', '2023-05-20'),
(4, 'Priya', 'Pune', '2024-01-05'),
(5, 'Karan', 'Bangalore', '2024-02-12');

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    status VARCHAR(20)
);

INSERT INTO orders VALUES
(101, 1, '2024-01-10', 'Completed'),
(102, 2, '2024-01-15', 'Completed'),
(103, 1, '2024-02-01', 'Cancelled'),
(104, 3, '2024-02-10', 'Completed'),
(105, 4, '2024-02-18', 'Pending');

CREATE TABLE order_items (
    item_id INT PRIMARY KEY,
    order_id INT,
    product_name VARCHAR(50),
    quantity INT,
    price INT
);

INSERT INTO order_items VALUES
(1, 101, 'Laptop', 1, 50000),
(2, 101, 'Mouse', 2, 500),
(3, 102, 'Mobile', 1, 20000),
(4, 104, 'Tablet', 2, 15000),
(5, 105, 'Keyboard', 1, 2000);

CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    amount INT,
    payment_mode VARCHAR(20)
);

INSERT INTO payments VALUES
(1, 101, 51000, 'Card'),
(2, 102, 20000, 'UPI'),
(3, 104, 30000, 'Card');

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary INT,
    manager_id INT
);

INSERT INTO employees VALUES
(1, 'Ravi', 'IT', 70000, NULL),
(2, 'Suman', 'IT', 50000, 1),
(3, 'Ankit', 'HR', 40000, NULL),
(4, 'Pooja', 'HR', 45000, 3),
(5, 'Vikas', 'Sales', 60000, 1);

select *from customers;
select* from orders;
select *from order_items;
select  *from employees;


-- Sabhi customers ka data dikhao
select *from customers;

select customer_name from customers where city='Delhi';
select emp_name from employees where salary>5000;
select count(*) from customers;
select max(salary) from employees;

select *from customers;
select count(customer_name) ,city from customers group by city;

select *from orders;
select *from customers;
select *from order_items;

SELECT c.customer_name,
       SUM(oi.quantity * oi.price) AS total_amount
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.customer_name;



select *from employees;
select* from orders;

-- Department jinki avg salary > 50000
select department salary from employees group by department having avg(salary)>50000;
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;

SELECT o.*
FROM orders o
JOIN payments p
ON o.order_id = p.order_id;

select *from (select * , rank() over(order by	salary desc)   rnk from employees) t
where rnk =1;

 --
 -- Customer name + order date dikhao
 select c.customer_name,o.order_date from customers as c
 join orders as o
 on c.customer_id=o.customer_id;
 
 select o.status from orders as o
 join order_items as i
 on o.order_id=i.order_id
 where status='completed';
 
 









