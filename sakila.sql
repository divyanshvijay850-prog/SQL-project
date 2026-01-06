use sakila;
show tables;
select first_name,last_name ,email from customer;
select *from film;
select title ,rental_rate ,replacement_cost from film;
select count(title) from film;
select *from category;
select*from film_category;
select s.title from film as s
join film_category as f
on s.film_id =f.film_id
join category as c
on f.category_id= c.category_id
where c.name='Action';
select *from actor;
select *from film;
select*from film_actor;
select a.first_name, a.last_name from actor as a
join film_actor as f
on a.actor_id=f.actor_id
join film as d
on f.film_id= d.film_id
where title= "ACADEMY DINOSAUR";
select* from rental;
select customer_id ,count(rental_id) from rental group by customer_id;
select customer_id ,count(rental_id) from rental group by customer_id
 having count( rental_id >10);
 select* from film;
 select title from film where rental_rate>4;
 select* from inventory;
 select* from film;
 select* from rental;
 select f.title ,count(r.rental_id) from film  as f
 join inventory as i
 on f.film_id=i.film_id
 join rental as r
 on i.inventory_id= r.inventory_id
 group by f.title
 order by count(r.rental_id) desc
 limit 5;
 
 



