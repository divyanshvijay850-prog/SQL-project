use sakila;
-- table
-- DDL statement (data defination language)
-- struture (data defination language)
-- create,alter,drop,truncate
create database  regex1;
use regex1;
create table test1(sno int); -- tables create (sno.column name)
describe test1;
-- dml(insert,update,delete,merge)
insert into test1 values(10);
select * from test1;
insert into  test1(sno) values(11);
insert into  test1(sno) values(20),(null),(30);  -- 3 rows insert (multiple values)
select count(sno),count(*) from test1;
--- count(*)-- all rows count krtha h includeing null values
-- count(coulmn) -- not null values 
-- constraint
create table test2(sno int not null ,salary int);
insert into test2(sno,salary) values(20,1000);
insert into test2(sno,salary) values(20,null);
insert into test2(sno,salary) values(null,1000); -- we have set constraint (error)
insert into test2(sno) values(10000);
insert into test2(salary) values(500000); -- error (because no null and no default set)

select *from test2;
-- deafult 
create table test3(sno int not null default 80,salary int);
insert into test3(salary) values(1000);
insert into test3(sno) values(50000);

select* from test3;

-- unique
create table test4(sno int not null ,salary int unique default 100);
insert into test4(sno,salary) values(10001,20000);
insert into test4(sno,salary) values(10001,20000); -- error duplicate values
insert into test4(sno) values(600);
select* from test4;
insert into test4(sno) values(700);  -- error 100 is a value already in table
insert into test4(sno,salary) values(1001,null); -- unique m multiple null value aa sakti h
insert into test4(sno,salary) values(200012,null); -- allow null values

select *from test4;

-- check constrin 
-- chcek column_name condition
create table test5(sno int,salary int,
check (sno between 1 and 100),
check (salary in (1000,2000) ));

insert into test5(sno,salary) values(4,1000);
select * from test5;
insert into test5(sno,salary) values(150,1000); -- error 
insert into test5(sno,salary) values(90,1500); -- error 


-- employeee  name (varchar), ID is primary key
-- email column with unique 
--- college with a deafult values
-- age  with condition >18
-- gardgen should be pailndrome

create table employees(
eid int primary key,
ename varchar(20),
email varchar(50) unique,
college varchar(50) default "Regex_software" ,
age int check(age>18),
guardian varchar(30) check (guardian=reverse(guardian)
));


describe employees;








