-- case
/* when --condition or expression  then output
 when contion then output
 */
 -- end
 use world;
 select name, population,
 case
     when population =0 then "no population"
     when population between 6000 and 7000 then "medium population"
     else "condition is false" 
end as "status" 
from country;

select count(*),
 case
     when population =0 then "no population"
     when population between 6000 and 7000 then "medium population"
     else "condition is false" 
end as "status" 
from country group by status;

select continent,
sum(case
when population between 8000 and 70000 then 1 else 0
end)
from country
group by continent;

select continent,
count(case
when population between 8000 and 70000 then 1 else 0
end)
from country
group by continent;


































