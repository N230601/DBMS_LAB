USE PlaystoreDB;

#------ LEVEL_0 ------#

select count(*)
from apps;

select avg(rating)
from apps;

select max(rating)
from apps;

select min(rating)
from apps;

select sum(downloads)
from apps;

select *
from apps 
order by rating desc;

#-------  LEVEL_1-------#

select count(*)
from apps 
group by CategoryID; 

select avg(rating)
from apps 
group by CategoryID;

select min(price),max(price)
from apps;

select *
from apps 
order by Downloads desc;

select count(*)
from apps 
group by developerID;

select categoryID,count(*)
from apps 
group by CategoryID
having  count(*)> 1;

#------ LEVEL_2 ------#

select count(*)
from apps 
group by DeveloperID;

select avg(rating)
from apps 
group by PublisherID;

select DeveloperID,count(*)
from apps 
group by DeveloperID
having count(*)>1;

select CategoryID,avg(rating)
from apps 
group by categoryID
having avg(rating)> 4.3;

select CategoryID, count(*)
from apps
group by categoryID
order by count(*) desc;

select *
from apps 
where rating =(select max(rating)
from apps );

select sum(price)
from apps 
group by DeveloperID;
        
