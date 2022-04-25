SELECT Name
FROM country
WHERE Name LIKE 'Ar%';

SELECT Name
FROM city
WHERE Name LIKE 'Ar%';

SELECT Name
FROM country
WHERE Name LIKE 'Ar%'
UNION
SELECT Name
FROM city
WHERE Name LIKE 'Ar%';

SELECT Name
FROM country
WHERE Name LIKE 'Ar%'
UNION ALL
SELECT Name
FROM city
WHERE Name LIKE 'Ar%';

SELECT Name
FROM country
WHERE Name IN (
SELECT Name
FROM city
WHERE Name LIKE 'Ar%');