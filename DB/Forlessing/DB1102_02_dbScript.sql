SELECT Name, Population
FROM city
WHERE CountryCode = 'NOR' 
ORDER BY Population DESC;

SELECT COUNT(*) AS 'Antall byer'
FROM City;

SELECT COUNT(*) AS AntLand
FROM Country;

SELECT COUNT(*) AS AntLand
FROM country
WHERE IndepYear > 1814
OR IndepYear <= 1814;

SELECT COUNT(*) AS AntLand
FROM country
WHERE IndepYear > 1814 OR IndepYear <= 1814
OR IndepYear = NULL;

SELECT COUNT(*) AS AntLand
FROM country
WHERE IndepYear > 1814 OR IndepYear <= 1814
OR IndepYear IS NULL;

SELECT DISTINCT CountryCode
FROM city
ORDER BY CountryCode ASC;

SELECT COUNT(*), MIN(SurfaceArea), MAX(IndepYear),AVG(LifeExpectancy), SUM(GNP)
FROM country;

SELECT Continent, COUNT(*), MIN(SurfaceArea), MAX(IndepYear),AVG(LifeExpectancy), SUM(GNP)
FROM country
GROUP BY Continent;

SELECT Continent, COUNT(*), MIN(SurfaceArea), MAX(IndepYear),AVG(LifeExpectancy), SUM(GNP)
FROM country
GROUP BY Continent
HAVING COUNT(*) > 20 AND MIN(SurfaceArea) > 20;

SELECT Continent, COUNT(*), MIN(SurfaceArea), MAX(IndepYear),AVG(LifeExpectancy), SUM(GNP)
FROM country
WHERE IndepYear < 1950
GROUP BY Continent
HAVING COUNT(*) > 20 AND MIN(SurfaceArea) > 20;