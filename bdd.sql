CREATE DATABASE IF NOT EXISTS bdd;
USE bdd;

CREATE TABLE IF NOT EXISTS theme (
    idTheme int(11) AUTO_INCREMENT NOT NULL,
    theme varchar(64),
    PRIMARY KEY(idTheme)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS oeuvre (
    idOeuvre int(11) AUTO_INCREMENT NOT NULL,
    oeuvre varchar(64),
    annee int(11),
    PRIMARY KEY(idOeuvre)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS utilisateur (
    idUtilisateur int(11) AUTO_INCREMENT NOT NULL,
    isAdmin boolean,
    PRIMARY KEY(idUtilisateur)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE oeuvre
ADD CONSTRAINT oeuvre_idTheme
FOREIGN KEY(idTheme)
REFERENCES theme(idTheme);

ALTER TABLE 