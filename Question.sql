use world;
select name ,continent from country where continent in ('Asia','Europe');
select name, population from country where population between 100000 and 1000000;
select name from country where name like 'A%';
select name from country where name like '%land';
select continent,count(*) from country group by continent;
select continent,sum(population) from country group by continent;
select continent,sum(population) from country group by continent having sum(population)>30000000;
select ct.name,count(cy.language) from countrylanguage as cy
join
country as ct
where ct.code=cy.countrycode
group by ct.name;
