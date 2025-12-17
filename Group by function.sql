use sakila;
show tables;
select*from payment;
select count(*) from payment where amount=2.99;
select amonnt, count(*) from payment group by amount;
select customer_id,sum(amount)from payment group by customer_id ;
select customer_id,sum(amount)from payment where amount>3 group by customer_id ;
select * from payment;
select customer_id,count(amount)from payment where month(payment_date)=5 group by customer_id ;
select*from payment;
select staff_id, count(amount) ,avg(amount),sum(amount) from payment group by staff_id ;
select *from payment where customer_id%2=0;
-- get the aomunt and the total trasnation of each amount only for the payment done through only one staff _id and total trasnation amount should be grater then 30
select amount,count(*) from payment where staff_id=1 group by amount
having count(*)>30;
select*from payment;
select count(customer_id ), avg(amount),sum(amount) ,extract(month from payment_date) from payment where staff_id =1 or staff_id=2
group by extract(month from payment_date);
select count(customer_id ), avg(amount),sum(amount),extract(year from payment_date) ,extract(month from payment_date) 
from payment where staff_id =1 or staff_id=2
 group by extract(year from payment_date),extract(month from payment_date);
-- Order by
select *from payment order by customer_id;
select *from payment order by customer_id, amount;
select *from payment order by customer_id, amount desc;
select *from payment order by customer_id desc, amount ;





 








