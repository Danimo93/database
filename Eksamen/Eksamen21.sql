select * from Ansatt;
SELECT * FROM Fylke;
SELECT * FROM Kommune;
SELECT * FROM Spiller;
SELECT * FROM Trekning;
SELECT * FROM Vinner;


Select Navn, Innbyggertall from Kommune
order by Innbyggertall desc;

SELECT spiller.Navn, Kommune.Navn from spiller
join Kommune on Spiller.KommuneID = Kommune.KommuneID 
where Kommune.Navn like 'Herøy';

SELECT * FROM Fylke;
SELECT * FROM Kommune;




select K.Navn, f.navn as Fylke , K.Kommuneid, f.FylkeID 
from Kommune as k 
join fylke as f on k.Fylke = f.FylkeID;

select Navn from Kommune
where navn like '%u%';




SELECT * FROM Fylke;   #Navn	  #FylkeID
SELECT * FROM Kommune; #Fylke 	  #KommuneID
SELECT * FROM Spiller; #KommuneID #SpillerNr
SELECT * FROM Vinner;  #SpillerNr #TrekkningID

select f.Navn, count(v.TrekningsID) as AntallVinner
from Vinner
natural right join Fylke f
natural left join Vinner v
group by f.navn
order by AntallVinner desc;


SELECT Navn, (SELECT COUNT(*) FROM Vinner WHERE DNr = d.DNr) 
AS AntInteresser
FROM Deltaker d
ORDER BY AntInteresser DESC;







SELECT * FROM Fylke;   #FylkeID JOIN Fylke
SELECT * FROM Kommune; #Fylke #KommuneID

SELECT * FROM Spiller; #SpillerNr #KommuneID
SELECT * FROM Vinner;  #SpillerNr

select Trekning.TrekningsID, Trekning.Dato, Trekning.Utbetaling, 
Trekning.AnsattID, Ansatt.Navn from Trekning
join Ansatt on Ansatt.AnsattID = Trekning.AnsattID
where Utbetaling = '0';




select s.Navn, count(v.TrekningsID) as AntallVinner
from Vinner
natural right join Spiller s
natural left join Vinner v 
group by s.navn
order by AntallVinner desc;





SELECT d.Fornavn, d.Etternavn, COUNT(t.TemaNr) AS AntTemaer
FROM deltakertema

NATURAL RIGHT JOIN deltaker d
NATURAL LEFT JOIN tema t
GROUP BY d.Fornavn, d.Etternavn
ORDER BY AntTemaer DESC;


ALTER TABLE `lotto`.`Kommune` 
ADD COLUMN `Arial` FLOAT(8,2) NOT NULL AFTER `Navn`;
UPDATE `lotto`.`Kommune` SET `Arial` = '6970.1' WHERE (`KommuneID` = '0301');
UPDATE `lotto`.`Kommune` SET `Arial` = '147.87' WHERE (`KommuneID` = '1101');
UPDATE `lotto`.`Kommune` SET `Arial` = '1441.47' WHERE (`KommuneID` = '1103');
UPDATE `lotto`.`Kommune` SET `Arial` = '373.23' WHERE (`KommuneID` = '1106');
UPDATE `lotto`.`Kommune` SET `Arial` = '666.7' WHERE (`KommuneID` = '1507');
UPDATE `lotto`.`Kommune` SET `Arial` = '88.58' WHERE (`KommuneID` = '1515');
UPDATE `lotto`.`Kommune` SET `Arial` = '17.93' WHERE (`KommuneID` = '1818');
UPDATE `lotto`.`Kommune` SET `Arial` = '58.05' WHERE (`KommuneID` = '3018');
UPDATE `lotto`.`Kommune` SET `Arial` = '600.34' WHERE (`KommuneID` = '3020');
UPDATE `lotto`.`Kommune` SET `Arial` = '35.87' WHERE (`KommuneID` = '3419');




UPDATE `lotto`.`Kommune` SET `Arial` = '212.92' WHERE (`KommuneID` = '3420');
INSERT INTO `lotto`.`Ansatt` (`AnsattID`, `Navn`) VALUES ('3', 'Jens Jensen');
INSERT INTO `lotto`.`Trekning` (`TrekningsID`, `Dato`, `Utbetaling`) 
VALUES ('5', '2021-12-04', '11000000');
UPDATE `lotto`.`Trekning` SET `AnsattID` = '3' WHERE (`TrekningsID` = '5');
INSERT INTO `lotto`.`Spiller` (`SpillerNr`, `Navn`, `Adresse`) 
VALUES ('14', 'Lars Andersen', 'Lilliveien 56');
INSERT INTO `lotto`.`Spiller` (`SpillerNr`, `Navn`, `Adresse`) 
VALUES ('15', 'Line Jensen', 'Blåklokkaleen 4');
UPDATE `lotto`.`Spiller` SET `KommuneID` = '1507' WHERE (`SpillerNr` = '14');
UPDATE `lotto`.`Spiller` SET `KommuneID` = '3420' WHERE (`SpillerNr` = '15');
INSERT INTO `lotto`.`Vinner` (`SpillerNr`, `TrekningsID`) VALUES ('14', '5');
INSERT INTO `lotto`.`Vinner` (`SpillerNr`, `TrekningsID`) VALUES ('15', '5');


select K.Navn, f.navn as Fylke
from Kommune K
join fylke as f on k.Fylke = f.FylkeID;

select k.Navn, f.navn As Fylke from fylke f
join Kommune as k on f.FylkeID = k.Fylke
where k.navn like 'he%' 
or k.navn like 'v%';

select * from Ansatt;
SELECT * FROM Fylke;
SELECT * FROM Kommune;
SELECT * FROM Spiller;
SELECT * FROM Trekning;
SELECT * FROM Vinner;


CREATE OR REPLACE VIEW FylkesVinner AS(
SELECT f.navn, t.Utbetaling, s.Spiller 
FROM fylke f 
JOIN Vinner v ON v.SpillerNr = s.SpillerNr
ORDER BY FylkesVinner);
Resultat (SELECT *):















