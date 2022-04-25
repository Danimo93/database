DROP SCHEMA IF EXISTS flyReservasjon;
CREATE SCHEMA flyReservasjon;
USE flyReservasjon;

CREATE TABLE rute
(
	rutenr int(5) NOT NULL,
	avgtid char(4) NOT NULL,
	frakode char(3) NOT NULL,
	fraplass varchar(20) NOT NULL,
	fraby varchar(15) NOT NULL,
	anktid char(4) NOT NULL,
	tilkode char(3) NOT NULL,
	tilplass varchar (20) NOT NULL,
	tilby varchar (15) NOT NULL,
	CONSTRAINT rute_rutenr_pk PRIMARY KEY (rutenr)
);

CREATE TABLE reservasjon
(
	resnr int(5) NOT NULL AUTO_INCREMENT,
	rutenr int(5) NOT NULL,
	dato date NOT NULL,
	antall int(3) NOT NULL,
	kapasitet int(3) NOT NULL,
	navn varchar(15) NOT NULL,
	CONSTRAINT reservasjon_resnr_pk PRIMARY KEY (resnr),
	CONSTRAINT reservasjon_rutenr_fk 
		FOREIGN KEY (rutenr) REFERENCES rute(rutenr)
);
