DROP DATABASE IF EXISTS elevage;


CREATE DATABASE elevage CHARACTER
SET 'utf8';

USE elevage;


CREATE TABLE animal (id smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT,
                                                      espece varchar(40) NOT NULL,
                                                                         sexe char(1) DEFAULT NULL,
                                                                                              date_naissance datetime NOT NULL,
                                                                                                                      nom varchar(30) DEFAULT NULL,
                                                                                                                                              commentaires text, PRIMARY KEY (id), INDEX ind_date_naissance (date_naissance),
                                                                                                                                                                                         INDEX ind_nom (nom(10)),
                                                                                                                                                                                               UNIQUE INDEX ind_uni_nom_espece (nom, espece)) ENGINE=InnoDB;


CREATE TABLE Espece (id SMALLINT UNSIGNED AUTO_INCREMENT,
                                          nom_courant VARCHAR(40) NOT NULL,
                                                                  nom_latin VARCHAR(40) NOT NULL UNIQUE,
                                                                                                 description TEXT, PRIMARY KEY(id)) ENGINE=InnoDB;


CREATE TABLE Livre (id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
                                                auteur VARCHAR(50),
                                                       titre VARCHAR(200)) ENGINE = MyISAM;


CREATE FULLTEXT INDEX ind_full_titre ON Livre (titre);


CREATE FULLTEXT INDEX ind_full_aut ON Livre (auteur);


CREATE FULLTEXT INDEX ind_full_titre_aut ON Livre (titre, auteur);

