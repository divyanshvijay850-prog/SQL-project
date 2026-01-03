use sakila;
show tables;
select *from actor;
select*from film_actor;
select s.first_name ,s.last_name ,f.film_id from actor as s
join film_actor as f
on s.actor_id=f.actor_id;
desc actor;
show tables;
desc category;
desc film_category;
select *from category;
select*from film_category;
select count(*), name from category as c
join film_category as f
on c.category_id=f.category_id
group by name;
use regex;
show tables;
select* from customers;
select *from enrollments;
select *from students;
select s.student_name ,course_name from students as s
join enrollments as e
on s.student_id=e.student_id;
use sakila;
select *from customer;
select first_name ,email from customer;
select title ,release_year from film;
SELECT title
FROM film
WHERE rental_rate = 2.99;
select c.first_name, c.last_name
FROM customer c
JOIN address a ON c.address_id = a.address_id
JOIN city ci ON a.city_id = ci.city_id
JOIN country co ON ci.country_id = co.country_id
WHERE co.country = 'India';
select *from film_category;
select* from category;
select* from rental;
SELECT c.first_name, f.title
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id;










