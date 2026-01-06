use sakila;
show tables;
select* from payment;
-- 1. in => given list of values me se check krta hai

select *from payment where amount in (select amount from payment where payment_id=3 or payment_id=2);
select *from payment where amount not in (select amount from payment where payment_id=3 or payment_id=2);
--  used any (dono me se koi sa bhi)
select *from payment where amount=any (select amount from payment where payment_id=3 or payment_id=2);
-- --  subquery ki kisi bhi value se bda
select *from payment where amount>any (select amount from payment where payment_id=3 or payment_id=2);

select *from payment where amount<any (select amount from payment where payment_id=3 or payment_id=2);
-- >all
select *from payment where amount>all (select amount from payment where payment_id=3 or payment_id=2);
select *from payment where amount<all (select amount from payment where payment_id=3 or payment_id=2);
--  subquery ki kisi bhi value se bda
select *from payment where amount>=all (select amount from payment where payment_id=3 or payment_id=2);
-- get the all payment infromation where month of payment should be same as of payment_id =2 and 3
-- get the all payment infromation whose amount is larger then among all the amount of from the payment id =2 to 8
select * from payment where month(payment_date)in
(select month(payment_date) from payment where payment_id=2 or payment_id=3);
use sakila;
select * from payment where amount>all (select amount from payment where payment_id=2 or payment_id=8);







