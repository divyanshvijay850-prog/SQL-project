use sakila;
show tables;
select *from film;
desc film;
select *from actor;
desc actor;
select *from film_actor;
desc film_actor;
select a.actor_id ,a.first_name,f.actor_id ,f.film_id from actor as a
join
film_actor as f
on a.actor_id =f.actor_id;
desc actor; -- actor id pk
desc film_actor  ;  -- fim_id actor_id
desc film;          -- film_id
SELECT a.first_name, a.last_name, f.title
FROM actor a
JOIN film_actor fa
ON a.actor_id = fa.actor_id
JOIN film f
ON fa.film_id = f.film_id;
show tables;
select *from category;
select *from film_category;
select *from film;
select *from customer;
select *from rental;
select cu.first_name,cu.last_name,re.rental_date from customer as cu
join rental as re
on cu.customer_id =re.customer_id
WHERE re.rental_date >= '2005-07-01';
SELECT cu.first_name, cu.last_name, re.rental_date
FROM customer cu
LEFT JOIN rental re
ON cu.customer_id = re.customer_id;
SELECT c.first_name, r.rental_date
FROM customer c
JOIN rental r
ON c.customer_id = r.customer_id;
select*from rental;
select *from customer;
select* from film;
SELECT c.first_name, r.rental_date
FROM customer c
LEFT JOIN rental r
ON c.customer_id = r.customer_id;
select c.first_name ,t.rental_id from customer as c
left join
rental as t
on c.customer_id=t.customer_id
where t.rental_id is null;
