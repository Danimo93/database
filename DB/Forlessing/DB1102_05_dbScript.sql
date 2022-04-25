CREATE OR REPLACE VIEW EuropeCountry_view 
AS SELECT Code, Name, Population
FROM country
WHERE Continent = 'Europe';

SELECT * FROM europecountry_view;

CREATE OR REPLACE VIEW EuropeCountry_view 
AS SELECT Code AS ID, Name AS Country, Population
FROM country
WHERE Continent = 'Europe';

CREATE OR REPLACE VIEW EuropeCountry_view 
(ID, Country, Population)
AS SELECT Code, Name, Population
FROM country
WHERE Continent = 'Europe';

SELECT * FROM europecountry_view;

CREATE OR REPLACE VIEW ContinentPopulation_view 
AS SELECT Continent, SUM(Population) AS Population
   FROM country
   GROUP BY Continent
   ORDER BY Population ASC;

SELECT * FROM continentpopulation_view;

CREATE OR REPLACE VIEW largeCities
(city, population, country)
AS
SELECT ci.name, ci.population, co.name
FROM city ci LEFT JOIN country co ON ci.countryCode = co.Code
WHERE ci.Population > 5000000
ORDER BY population DESC;

SELECT * FROM largeCities LIMIT 7;

UPDATE EuropeCountry_view
SET ID = 'A_Z'
WHERE Country = 'Austria';

SELECT ID, Country
FROM EuropeCountry_view;

SELECT Code, Name, Population
FROM country
WHERE Name = 'Austria';

CREATE OR REPLACE VIEW EuropeCountry_view 
AS SELECT Code, Name, Continent
   FROM country
   WHERE Continent = 'Europe'
WITH CHECK OPTION;

SELECT * 
FROM EuropeCountry_view;

UPDATE EuropeCountry_view
SET Continent = 'Asia'
WHERE Name = 'Austria';

DROP VIEW EuropeCountry_view;

select count(*) 
from City
where Population >= 
(select avg(Population) from City);

SELECT Name, SurfaceArea
FROM Country
ORDER BY SurfaceArea DESC
LIMIT 3;

SELECT name, 
CASE
	WHEN population>5000000 THEN 'Really big!'
    WHEN population>1000000 THEN 'Big!'
    WHEN population>50000 THEN 'Medium'
    WHEN population>0 THEN 'Small'
    ELSE '???'
END AS citySize
FROM city;

SELECT name, language, IF(IsOfficial = 'T', 'Official', 'Not official') AS LanguageStatus
FROM country JOIN countrylanguage ON code = countryCode
WHERE code = 'NOR';

SELECT name, COALESCE(IndepYear, 'Unknown') as IndepYear
from country;

SELECT name, IFNULL(IndepYear, 'Unknown') as IndepYear
from country;

-- Alle byer i land som har areal mindre enn 100
SELECT * FROM City WHERE CountryCode IN(
SELECT code from country
WHERE SurfaceArea < 100);


SELECT language FROM CountryLanguage;

SELECT DISTINCT language FROM CountryLanguage;

SELECT COUNT(DISTINCT language) AS 'Antall unike språk i verden' FROM CountryLanguage;