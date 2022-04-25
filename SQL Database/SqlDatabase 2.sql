select Name as 'Land',LifeExpectancy as 'LeveAlder', Population as 'FolkeTall'
from Country
order by LifeExpectancy desc;

select Name as 'Land',LifeExpectancy as 'LeveAlder', Population as 'FolkeTall'
from Country
order by Population asc;


select Name, Population, LifeExpectancy
from Country
order by LifeExpectancy desc;



## Oppgave til økt 2

select * from Country; 

# 1
Select Name, round((Population/SurfaceArea),2) as PopDensity from Country order by PopDensity;


# 2
select Continent, sum(Population) as PerPop from Country 
group by Continent 
order by Perpop desc;

# 4
select Code, name, IndepYear from Country where IndepYear not like "NULL"
order by IndepYear, name;

# 5
select * from Country where Code like "_W_";

# 6
select * from Country where Name like "N%" or name like "o%" or name like "P%";

select * from CountryLanguage;

# 7
select Language, IsOfficial, Percentage from CountryLanguage where not IsOfficial = "F" and Percentage >= 99 order by Percentage  desc, Language desc;

# 8
select code, name , Continent from Country where Continent = "North America" or Continent = "South America" order by Code;

# 9
select count(name) as Countries, Continent from Country group by Continent order by Countries desc;

# 10 
Select Continent, count(name) as 
Countries from Country group by Continent 
having count(countries) >= 30 
Order by Countries desc;

































