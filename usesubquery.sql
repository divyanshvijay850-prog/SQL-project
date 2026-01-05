use sakila;
show tables;
select *from payment;
select *from payment where staff_id =(select staff_id from payment where payment_id=7);
select *from payment where amount=(select max(amount) from payment);
select amount, count(*) from payment where amount <(select sum(amount) from payment)group by amount;
select month(payment_date) ,sum(amount) from payment where month(payment_date) <(select month(payment_date) from payment where customer_id=1 and payment_id= 3) group by month(payment_date);