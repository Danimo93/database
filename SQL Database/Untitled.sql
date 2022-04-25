#1
/* 1.	Lager en rangert liste over land etter antall mennesker per kvadratkilometer.
(Tips: Se etter tabell som inneholder befolkning og km2 for å komme igang. Bruk matematiske operatorer i spørringen.)
*/

Select * From Country;

Select name, round((population/SurfaceArea),2) as PopDenity from Country order by PopDenity;

Select * From Country;











select Continent, count(name) as Countries 
from Country GROUP BY Continent 
order by Countries desc;






Select * from City;
select * from Country;
Select * from CountryLanguage;











Select Name, Continent from Country where Continent = 'Asia';




