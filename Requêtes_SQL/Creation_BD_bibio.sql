-- REPONSE QUESTION N°1
-- Creation de la base de données biblio

create database biblio;

-- Activer la base de données biblio afin d'y travailler dessus
use biblio;

-- Creation de la table oeuvres
CREATE TABLE oeuvres(
	NumO  		integer primary key auto_increment,
	titre 		varchar(150) not null,
	auteur 		varchar(100),
	editeur		varchar(50),
	annee		integer,
	genre		varchar(30)
) ENGINE InnoDB;

-- Creation de la table adherents
CREATE TABLE adherents (
	NumA		INT PRIMARY KEY AUTO_INCREMENT,
	nom		VARCHAR(30) not null,
	prenom		VARCHAR(30),
	adr		VARCHAR(100) not null,
	tel		CHAR(10)
) ENGINE InnoDB;

-- Creation de la table emprunter
CREATE TABLE emprunter (
	idEmp		INT PRIMARY KEY AUTO_INCREMENT,
    NumO_o      INT,
	dateEmp		date not null,
	dureeMax	integer not null,
	dateRet 	date,
    NumA_a      INT,
	index(dateEmp)
) ENGINE InnoDB;

-- Insertion des données dans la table oeuvres
INSERT INTO oeuvres (titre, auteur, editeur, annee, genre)
VALUES 
('Narcisse et Goldmund', 'Hermann HESSE','GF', 1930, 'Roman'),
('Bérénice','Jean RACINE','FOLIO - HACHETTE', 1670, 'Théâtre'),
('Prolégomènes à  toute métaphysique future','Emmanuel KANT', 'HACHETTE', 1783, 'Philosophie'),
('Mon coeur mis à nu','Charles BAUDELAIRE', 'GF - FOLIO - HACHETTE', 1887, 'Journal'),
('Voyage au bout de la nuit','Louis-Ferdinand CELINE', 'FOLIO - GF' ,1932, 'Roman'),
('Les possédés','Fedor DOSTOIEVSKI', 'FOLIO', 1872, 'Roman'),
('Le Rouge et le Noir','STENDHAL', 'GF - HACHETTE', 1830, 'Roman'),
('Alcibiade','Jacqueline de ROMILLY', 'FOLIO', 1995, 'Roman'),
('Monsieur Teste','Paul VALERY', 'HACHETTE', 1926, 'Roman'),
('Lettres de Gourgounel','Kenneth WHITE', 'GF - HACHETTE', 1979, 'Récit'),
('Lettres à un jeune poète','Rainer Maria RILKE', 'HACHETTE - FOLIO', 1929, 'Lettre'),
('Logique sans peine','Lewis CAROLL','FOLIO', 1887, 'Logique'),
("L'éthique",'Baruch SPINOZA', 'GF', 1677, 'Philosophie'),
('Sur le rêve','Sigmund FREUD', 'FOLIO - HACHETTE', 1900, 'Philosophie'),
('Sens et dénotation','Gottlob FREGE','HACHETTE', 1892, 'Philosophie'),
('Penser la logique','Gilbert HOTTOIS', 'HACHETTE', 1989, 'Philosophie'),
('Au coeur des ténèbres','Joseph CONRAD', 'FOLIO', 1899, 'Roman'),
('Jan Karski','Yannick HAENEL', 'GALLIMARD', 2009, 'Roman');

-- Instertion des données dans la table adherents
INSERT INTO adherents
VALUES 
(1,'Lecoeur','Jeanette','16 rue de la République, 75010 Paris','0145279274'),
(2,'Lecoeur','Philippe','16 rue de la République, 75010 Paris','0145279274'),
(3,'Dupont','Yvan','73 rue Lamarck, 75018 Paris','0163538294'),
(4,'Mercier','Claude','155 avenue Parmentier, 75011 Paris','0136482736'),
(5,'Léger','Marc','90 avenue du Maine, 75014 Paris','0164832947'),
(6,'Martin','Laure','51 boulevard Diderot, 75012 Paris','0174693277'),
(7,'Crozier','Martine','88 rue des Portes Blanches, 75018 Paris','0146829384'),
(8,'Lebon','Clément','196 boulevard de Sebastopol, 75001 Paris','0132884739'),
(9,'Dufour','Jacques','32 rue des Alouettes, 75003 Paris','0155382940'),
(10,'Dufour','Antoine','32 rue des Alouettes, 75003 Paris','0155382940'),
(11,'Dufour','Stéphanie','32 rue des Alouettes, 75003 Paris','0155382940'),
(12,'Raymond','Carole','35 rue Oberkampf, 75011 Paris','0153829402'),
(13,'Durand','Albert','4 rue Mandar, 75002 Paris','0642374021'),
(14,'Wilson','Paul','12 rue Paul Vaillant Couturier, 92400 Montrouge','0642327407'),
(15,'Grecault','Philippe','15 rue de la Roquette, 75012 Paris','0132762983'),
(16,'Carre','Stéphane','51 boulevard Diderot, 75012 Paris','0174693277'),
(17,'Johnson','Astrid','3 rue Léon Blum, 75002 Paris','0143762947'),
(18,'Mirou','Caroline','2 square Mirabeau, 75011 Paris','0163827399'),
(19,'Espelette','Jean-Jacques','141 avenue de France, 75019 Paris','0134887264'),
(20,'Despentes','Anthony','56 boulevard de la Villette, 75019 Paris','0133889463'),
(21,'Terlu','Véronique','45 rue des Batignolles, 75020 Paris','0165998372'),
(22,'Rihour','Cécile','7 rue Montorgueil, 75002 Paris','0166894754'),
(23,'Franchet','Pierre','160 rue Montmartre, 75009 Paris','0633628549'),
(24,'Trochet','Ernest','34 rue de l''Esperance, 75008 Paris','0638295563'),
(25,'Gainard','Simon','55 rue Desnouettes, 75015 Paris','0174928934'),
(26,'Touche','Johanna','14 rue du Bac, 75006 Paris','0619384065'),
(27,'Cornu','Sylvain','22 rue Mouffetard, 75005 Paris','0184927489'),
(28,'Frederic','Cyril','15 rue du Simplon, 75018 Paris','0173625492'),
(29,'Crestard','Cedric','5 rue Doudeauville, 75018 Paris','0629485700'),
(30,'Le Bihan','Karine','170 bis rue Ordener, 75018 Paris','0638995221');
-- Insertion des données dans la table emprunter
INSERT INTO emprunter (NumO_o, dateEmp, dureeMax, dateRet, NumA_a) VALUES 
(1,from_days(to_days(current_date)-350),21,from_days(to_days(current_date)-349),26),
(4,from_days(to_days(current_date)-323),21,from_days(to_days(current_date)-310),4),
(10,from_days(to_days(current_date)-315),21,from_days(to_days(current_date)-318),9),
(1,from_days(to_days(current_date)-311),21,from_days(to_days(current_date)-293),1),
(12,from_days(to_days(current_date)-300),21,from_days(to_days(current_date)-1290),7),
(4,from_days(to_days(current_date)-283),21,from_days(to_days(current_date)-282),27),
(10,from_days(to_days(current_date)-273),21,from_days(to_days(current_date)-250),7),
(4,from_days(to_days(current_date)-232),14,from_days(to_days(current_date)-228),12),
(8,from_days(to_days(current_date)-226),14,from_days(to_days(current_date)-220),26),
(8,from_days(to_days(current_date)-201),14,from_days(to_days(current_date)-183),13),
(6,from_days(to_days(current_date)-199),14,from_days(to_days(current_date)-194),3),
(10,from_days(to_days(current_date)-169),14,from_days(to_days(current_date)-157),8),
(1,from_days(to_days(current_date)-153),14,from_days(to_days(current_date)-142),3),
(15,from_days(to_days(current_date)-146),14,from_days(to_days(current_date)-138),10),
(1,from_days(to_days(current_date)-106),14,from_days(to_days(current_date)-101),2),
(4,from_days(to_days(current_date)-103),14,from_days(to_days(current_date)-93),5),
(2,from_days(to_days(current_date)-86),14,from_days(to_days(current_date)-79),3),
(8,from_days(to_days(current_date)-76),14,from_days(to_days(current_date)-70),18),
(2,from_days(to_days(current_date)-37),14,from_days(to_days(current_date)-28),4),
(1,from_days(to_days(current_date)-28),14,from_days(to_days(current_date)-23),1),
(3,from_days(to_days(current_date)-21),14,from_days(to_days(current_date)-17),3),
(4,from_days(to_days(current_date)-24),14,from_days(to_days(current_date)-8),9),
(5,from_days(to_days(current_date)-23),14,from_days(to_days(current_date)-11),14),
(2,from_days(to_days(current_date)-10),14, NULL,28),
(9,from_days(to_days(current_date)-10),14, NULL,28),
(14,from_days(to_days(current_date)-9),14, NULL,1),
(16,from_days(to_days(current_date)-9),14, NULL,1),
(5,from_days(to_days(current_date)-5),14, NULL,16),
(1,from_days(to_days(current_date)-395),14, NULL,27),
(11,from_days(to_days(current_date)-30),14, NULL,22),
(17,from_days(to_days(current_date)-1),14, NULL,20),
(5,from_days(to_days(current_date)-1),14, NULL,20),
(18,from_days(to_days(current_date)-1),14, NULL,20);

-- REPONSE DE LA QUESTION N°2
-- Voir le fichier Analyse de l'énoncé.docx

-- REPONSE DE LA QUESTION N°3
-- Juste pour pouvoir contrôler le résultat, il importe tout d'abord ici de calculer nombre d'enregistrement dans la table oeuves
-- Calcul nombre d'enregistrement (tuples) dans la table oeuvres
SELECT COUNT(*) as nombre_oeuvres FROM oeuvres; -- 18

-- Juste pour pouvoir contrôler le résultat, il importe tout d'abord ici de calculer nombre d'enregistrement dans la table adherents
-- Calcul nombre d'enregistrement (tuples) dans la table adherents
SELECT COUNT(*) as nombre_adherents FROM adherents; -- 30

-- Juste pour pouvoir contrôler le résultat, il importe tout d'abord ici de calculer nombre d'enregistrement dans la table emprunter
-- Calcul nombre d'enregistrement (tuples) dans la table emprunter
SELECT COUNT(*) as nombre_emprunter FROM emprunter; -- 33

-- -> Calcul de tous les enregistrements (tuples) dans la base de données biblio
SELECT
(
	SELECT COUNT(*)
	FROM oeuvres
) +
(
	SELECT COUNT(*)
	FROM adherents
) +
(
	SELECT COUNT(*)
	FROM emprunter
) AS somme_enregisrements_biblio; -- 81 (CQFD => nombre_oeuvres = 18 + nombre_adherents = 30 + nombre_emprunter = 33)

-- REPONSE DE LA QUESTION N°4
-- Calcul nombre de colonne (attributs) dans la table oeuvres
SELECT count(*) FROM information_schema.COLUMNS WHERE table_schema = 'biblio' AND table_name='oeuvres'; -- 6

-- Calcul nombre de colonne (attributs) dans la table adherents
SELECT count(*) FROM information_schema.COLUMNS WHERE table_schema = 'biblio' AND table_name='adherents'; -- 5

-- Calcul nombre de colonne (attributs) dans la table adherents
SELECT count(*) FROM information_schema.COLUMNS WHERE table_schema = 'biblio' AND table_name='emprunter'; -- 6

-- -> Calcul nombre de toutes les colonnes (attributs) dans la base de données biblio
SELECT
(SELECT count(*) FROM information_schema.COLUMNS WHERE table_schema = 'biblio' AND table_name='oeuvres')
+
(SELECT count(*) FROM information_schema.COLUMNS WHERE table_schema = 'biblio' AND table_name='adherents')
+
(SELECT count(*) FROM information_schema.COLUMNS WHERE table_schema = 'biblio' AND table_name='emprunter')
AS nombre_colonnes_biblio; -- 17 (CQFD => nombre_de_colonnes_oeuvres = 6 + nombre_de_colonnes_adherents = 5 + 30; nombre_de_colonnes_emprunter = 6)

-- REPONSE DE LA QUESTION N°5
-- Clé primaire de la table oeuvres
-- NO int AI PK

-- Clé primaire de la table adherents
-- NA int AI PK

-- Clé primaire de la table emprunter
-- idEmprunter int AI PK

-- REPONSE DE LA QUESTION N°6
-- liste des livres (avec le nom et prénom des emprunteurs ainsi que la date d'emprunt)
SELECT DISTINCT titre, nom, prenom, dateEmp FROM oeuvres, emprunter, adherents WHERE NO_O = NO AND NA_a = NA AND emprunter.dateRet IS NULL;

-- REPONSE DE LA QUESTION N°7
-- Liste de livres que Jeanette Lecoeur a emprunté 
-- En exécutant la requête ci-dessous, on ne peut pas obtenir un résultat puisque Jeannette avec deux "n" n'existe pas dans notre base de données biblio
SELECT DISTINCT titre FROM oeuvres, emprunter, adherents WHERE oeuvres.NumO = emprunter.NumO_o AND emprunter.NumA_a = adherents.NumA AND adherents.nom LIKE "Lecoeur" AND adherents.prenom LIKE " Jeannette";

-- Par contre, si on exécute la requête suivant en écrivant Jeanette avec un seul "n" nous obtenons 3 résultats
SELECT DISTINCT titre FROM oeuvres, emprunter, adherents WHERE oeuvres.NumO = emprunter.NumO_o AND emprunter.NumA_a = adherents.NumA AND adherents.nom LIKE "Lecoeur" AND adherents.prenom LIKE "Jeanette";

-- On pourra également exécuter la requête ci-dessous si on n'est pas sûr de l'orthographe du nom ou du prénom de la personne concernée
-- En exécutant cette requête et si des ressemblances dans l'orthographe ou des homonymes existent dans la base de données, celles-ci seront affichées dans le résultat de la requête
SELECT DISTINCT titre FROM oeuvres, emprunter, adherents WHERE oeuvres.NumO = emprunter.NumO_o AND emprunter.NumA_a = adherents.NumA AND adherents.nom LIKE "L%ur" AND adherents.prenom LIKE "J%te";

-- REMARQUE : il existe effectivement 4 enregistrements d'emprunts au nom de Jeanette Lecoeur, mais les 2 enregistrements concernent un seul et même livre

-- REPONSE DE LA QUESTION N°8
-- La requête effectuée ci-dessous n'affiche aucun résultat car dans notre base de données il n'existe pas de livres empruntés en septembre 2009 
SELECT titre FROM oeuvres, emprunter WHERE oeuvres.NumO = emprunter.NumO_o AND month(emprunter.dateEmp) = 9 AND year(emprunter.dateEmp) = 2009;

-- Par contre, si on veut afficher la liste de livres empruntés en septembre 2021, on utilisera la requête suivante et on obtient 2 résultats
SELECT titre FROM oeuvres, emprunter WHERE oeuvres.NumO = emprunter.NumO_o AND month(emprunter.dateEmp) = 9 AND year(emprunter.dateEmp) = 2021;

-- REPONSE DE LA QUESTION N°9
-- Liste des adhérents ayant emprunté le livre de l'auteur Fedor Dostoievski
SELECT DISTINCT nom, prenom, adr, tel FROM oeuvres, emprunter, adherents WHERE oeuvres.NumO = emprunter.NumO_o AND emprunter.NumA_a = adherents.NumA AND oeuvres.auteur LIKE "Fedor Dostoievski";

-- REPONSE DE LA QUESTION N°10
-- Enregistrement d'un nouvel adhérent
INSERT INTO adherents (nom, prenom, adr, tel)
VALUES 
('Olivier','Dupond','76, quai de la Loire, 75019 Paris','0102030405');

-- REPONSE DE LA QUESTION N°11
-- Enregistrement de deux nouveaux emprunts par Martine CROZIER
INSERT INTO emprunter (NumO_o, dateEmp, dureeMax, dateRet, NumA_a) VALUES 
(17,from_days(to_days(current_date)),21,NULL,7),
(7,from_days(to_days(current_date)),21,NULL,7);

-- REPONSE DE LA QUESTION N°12
-- Enregistrement de retour de livres empruntées par Cyril FREDERIC
UPDATE emprunter
SET dateRet = from_days(to_days(current_date))
WHERE NumA_a = 28;

-- REPONSE DE LA QUESTION N°13
-- Remarque : comme mentionné dans le fichier Analyse de l'énoncé.docx inclus dans le repository, 
-- nous avons préféré supprimer le table livre, ainsi comme le livre n°23 est relié à l'oeuvre n°7, on mettra la condition NumO_o=7
-- et pour savoir si le livre est disponible dans la librairie on doit également mentionné dans notre requête SQL une seconde condition qui 
-- nous permet de savoir si cette livre est bel et bien retourné à la libraire sinon il n'est pas possible d'enregistrer un nouvel emprunt pour l'adhérent n°28 nommé Cyril FREDERIC
UPDATE emprunter
SET 
dateEmp = from_days(to_days(current_date)),
NumA_a = 28
WHERE NumO_o = 7 AND dateRet IS NOT NULL; -- 0 row(s) affected Rows matched: 0 changed: 0 Warnings: 0

-- REPONSE DE LA QUESTION N°14 : idem
-- Cyril essaye d'emprunter le livre n°29 donc c'est l'oeuvre n°1
UPDATE emprunter
SET 
dateEmp = from_days(to_days(current_date)),
NumA_a = 28
WHERE NumO_o = 1 AND dateRet IS NOT NULL OR dateRet < current_date() ; -- 5 row(s) affected Rows matched: 5 changed: 5 Warnings: 0

-- REPONSE DE LA QUESTION N°15
-- Le ou les auteurs du livre : Voyage au bout de la nuit
SELECT auteur FROM oeuvres WHERE titre = "Voyage au bout de la nuit"; -- Louis-Ferdinand CELINE

-- REPONSE DE LA QUESTION N°16
-- Le ou les éditeurs du livre : Narcisse et Goldmund
SELECT editeur FROM oeuvres WHERE titre = "Narcisse et Goldmund"; -- GF
-- REPONSE DE LA QUESTION N°17

-- REPONSE DE LA QUESTION N°18

-- REPONSE DE LA QUESTION N°19

-- REPONSE DE LA QUESTION N°20

-- REPONSE DE LA QUESTION N°21

-- REPONSE DE LA QUESTION N°22

-- REPONSE DE LA QUESTION N°23

-- REPONSE DE LA QUESTION N°24