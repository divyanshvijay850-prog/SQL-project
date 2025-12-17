use world;
show tables;
select * from country;
select name, population from country;
select * from country where Continent= 'Asia';
select * from country where IndepYear= 1984;
select * from country where IndepYear is null;
select * from country where IndepYear is  not null;
SELECT name, continent
FROM country
WHERE region != 'Southern Europe';
select name, continent, substr(name,1,1),substr(continent,1,1)
from country where substr(name,1,1)=substr(continent,1,1);
select sum(population) from country;
select continent,region, count(name) from country group by continent ,region;
select continent , count(name) from country where indepyear>1950
group by continent;
select continent , count(name) from country 
group by continent having count(name)>30;
select* from country;
select continent,sum(population) from country group by continent 
having sum(population)>100;
select indepyear, count(name)from country group by indepyear;
select indepyear, count(name)from country where indepyear>1930 group by indepyear;
select indepyear, count(name)from country where indepyear>1930 group by indepyear
having count(name)>2;
select * from country;
select governmentform,count(name) from country group by governmentform
having count(name)>20;
select governmentform,count(name) from country where capital>30 group by governmentform;
select continent,count(name),sum(population),count(region) from country where lifeexpectancy>38 group by continent
having sum(population)>300000;
use world;
select *from country;
select name ,population from country;
select name,population, population+1000 from country;
select *from country where continent ='Asia';
select distinct continent,region from country;
select distinct continent from country;
select count(distinct continent) from country;
select* from country;
select name,population from country;
select name, population from country where population>1000000;
select *from country;
select name, indepyear from country where indepyear>1947;
select name, indepyear from country where indepyear!='null';
select*from country;
select name,lifeexpectancy
 from country where lifeexpectancy between 50 and 80;
 select name, continent from country where continent in('Asia','Europe');
 select name from country where name like 'in%';
 select name ,continent from country where name like '%land';
 select * from country;
 select continent, count(*) from country group by continent;
 select continent ,sum(population) from country group by continent;
 select  name , avg(population) from country group by name;
 select continent , count(*) from country where population>1000000 group by continent;
 SELECT continent, COUNT(*)
FROM country
GROUP BY continent
HAVING COUNT(*) > 10;
use world;
select continent,sum(population) from country group by continent;
select region,count(name) from country group by region;
SELECT region, COUNT(*)
FROM country
GROUP BY region;
select region, count(continent) from country where continent='Asia' group by region;
select continent,count(name) from country group by continent having count(continent)>10;
select continent,avg(population) from country group by continent having avg(population)>5000000;
select region,sum(population) from country group by region having sum(population)>10000000;
select*from country;

select region, avg(population) from country group by region having count(*) >=2;
-- WHERE  → rows filter karta hai
-- GROUP BY → rows ko group banata hai
--  having → groups ko filter karta hai
select *from country ;
use world;
select* from country;









 



















