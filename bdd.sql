CREATE DATABASE tp09web;
USE tp09web;

CREATE TABLE IF NOT EXISTS Utilisateur(
    idUtilisateur INT(11) NOT NULL AUTO_INCREMENT,
    identifiant VARCHAR(64),
    motDePasse VARCHAR(64),
    nom VARCHAR(64),
    prenom VARCHAR(64),
    PRIMARY KEY(idUtilisateur)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Oeuvre (
    idOeuvre INT(11) NOT NULL AUTO_INCREMENT,
    nom VARCHAR(64),
    prix FLOAT,
    lien TEXT,
    annee INT(11),
    PRIMARY KEY(idOeuvre)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Theme (
    idTheme INT(11) NOT NULL AUTO_INCREMENT,
    libelle VARCHAR(64),
    PRIMARY KEY(idTheme)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS ThemeOeuvre (
    idTheme INT(11),
    idOeuvre INT(11)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE ThemeOeuvre
ADD CONSTRAINT ThemeOeuvre_idOeuvre
FOREIGN KEY(idOeuvre)
REFERENCES Oeuvre(idOeuvre) ON DELETE CASCADE;
ALTER TABLE ThemeOeuvre
ADD CONSTRAINT ThemeOeuvre_idTheme
FOREIGN KEY(idTheme)
REFERENCES Theme(idTheme) ON DELETE CASCADE;

INSERT INTO Utilisateur(identifiant, motDePasse, nom, prenom) VALUES
('Admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'SPLINTER', 'Michelangelo');