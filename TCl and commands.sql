use sakila;
use regex1;
create table actor_cp2 as select actor_id, first_name from sakila.actor 
where actor_id between 1 and 5;
select* from actor_cp2;
insert into actor_cp2 values(6,'Divyansh');
set @@autocommit=0;
insert into actor_cp2 values(7,'raj');
select*from actor_cp2;
commit;
insert into actor_cp2 values(8,'vasu');
update actor_cp2 set actor_id=10000;
select*from actor_cp2;
rollback;
set @@autocommit=1;

start transaction;
insert into actor_cp2 values(9,'div');
commit;
select*from actor_cp2;
start transaction;
insert into actor_cp2 values(10,'rd');
select*from actor_cp2;
create table xyz (id int);

start transaction;
insert into actor_cp2 values(11,'rxd');
insert into actor_cp2 values(12,'rdd');
savepoint actor_cp2_sp1;
delete from actor_cp2 where actor_id in(4,5,6);
rollback to actor_cp2_sp1;
select*from actor_cp2;
commit;
start transaction;
delete from actor_cp2 where actor_id in(10,11,12);
savepoint actor_cp2_sp2;
insert into actor_cp2 values(13,'ram');
rollback to actor_cp2_sp2;
select*from actor_cp2;
commit;




