use world;
show tables;
select* from city;
select *from country;
select* from countrylanguage;
describe city;
-- city table - ID is primary key and countrycode foreign key
-- country table (code pk)
select count(code) ,count(distinct code) from country;
select cy.id,cy.name,cy.countrycode,cnt.code,cnt.name,cnt.continent from city as cy
join
country as cnt
where cy.countrycode=cnt.code;
-- find the the city name the population the country name along with the governmentfrom for each city
select cy.name,cy.population,cnt.name,cnt.governmentform from city as cy
join
country as cnt
where cy.countrycode=cnt.code;

-- get the country name is population and language spkoken with the percentage of each language
select cnt.name,cnt.population,cl.language,cl.percentage from countrylanguage as cl
join
country as cnt
on cnt.code=cl.countrycode;










