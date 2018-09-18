CREATE DATABASE RilevamentoWiFi;
USE RilevamentoWiFi;
CREATE TABLE Address(
	MAC_Address VARCHAR(45) NOT NULL,
	BlackList BOOLEAN,
	PRIMARY KEY(MAC_Address)
);
CREATE TABLE DatiPersonali(
	MAC_Address VARCHAR(45) NOT NULL,
	Nome VARCHAR(45),
	Cognome VARCHAR(45),
	NoTelefono VARCHAR(45),
	Mail VARCHAR(45),
	PRIMARY KEY(MAC_Address),
	FOREIGN KEY(MAC_Address) REFERENCES Address(MAC_Address)
);
CREATE TABLE Entrata(
	MAC_Address VARCHAR(45) NOT NULL,
	Orario DATETIME,
	PRIMARY KEY(MAC_Address),
	FOREIGN KEY(MAC_Address) REFERENCES Address(MAC_Address)
);
CREATE TABLE Uscita(
	MAC_Address VARCHAR(45) NOT NULL,
	Orario DATETIME,
	PRIMARY KEY(MAC_Address),
	FOREIGN KEY(MAC_Address) REFERENCES Address(MAC_Address)
);
CREATE TABLE users(
	username VARCHAR(45),
	password VARCHAR(45),
	PRIMARY KEY(username)
);
/*
INSERT INTO users(username, password) VALUES("admin","admin");
INSERT INTO users(username, password) VALUES("guest","guest");
*/