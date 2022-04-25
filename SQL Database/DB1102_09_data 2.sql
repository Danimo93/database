DELETE FROM reservasjon;
DELETE FROM rute;

INSERT INTO rute VALUES
(1, '0930', 'FBU', 'Fornebu', 'Oslo', '1040','HTR', 'Heathrow', 'London'),
(2, '1835', 'HTR', 'Heathrow', 'London', '2050','FBU', 'Fornebu', 'Oslo');

INSERT INTO reservasjon VALUES 
(NULL, 1,'2011.10.30', 2, 130, 'Pedersen'),
(NULL, 1,'2011.10.30', 1, 130, 'Olsen'),
(NULL, 1,'2011.10.30', 4, 130, 'Andreassen'),
(NULL, 1,'2011.10.30', 1, 130, 'Karlsen'),
(NULL, 1,'2011.10.30', 1, 130, 'Penesen'),
(NULL, 2,'2011.10.31', 2, 95, 'Pedersen'),
(NULL, 2,'2011.10.31', 1, 95, 'Jonasen'),
(NULL, 2,'2011.10.31', 1, 95, 'Fransen'),
(NULL, 2,'2011.10.31', 4, 95, 'Andreassen');
