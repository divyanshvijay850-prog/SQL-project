use world;
show tables;
select*from country;
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

