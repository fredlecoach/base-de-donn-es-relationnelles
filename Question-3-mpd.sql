CREATE TABLE proprietaire (
id INTEGER PRIMARY KEY AUTOINCREMENT,
nom VARCHAR(20) NOT NULL,
prenom VARCHAR(20) NOT NULL,
adresse VARCHAR(100) NOT NULL,
telephone CHAR(10) NOT NULL
);

CREATE TABLE agence_immo (
id INTEGER PRIMARY KEY AUTOINCREMENT,
duree_gestion TIME NOT NULL,
pourcentage TINYINT NOT NULL
);

CREATE TABLE biens_en_location (
id INTEGER PRIMARY KEY AUTOINCREMENT,
taille INTEGER NOT NULL,
adresse VARCHAR(100) NOT NULL,
prix_location SMALLINT NOT NULL,
date_debut DATE NOT NULL,
date_fin DATE NOT NULL,
id_proprietaire INTEGER ,
id_agence_immo INTEGER ,
FOREIGN KEY (id_proprietaire) REFERENCES proprietaire(id),
FOREIGN KEY (id_agence_immo) REFERENCES agence_immo(id)
);

CREATE TABLE locataire (
id INTEGER PRIMARY KEY AUTOINCREMENT,
nom VARCHAR(20) NOT NULL,
prenom VARCHAR(20) NOT NULL,
adresse VARCHAR(100) NOT NULL,
telephone CHAR(10) NOT NULL,
id_agence_immo INTEGER,
FOREIGN (id_agence_immo) REFERENCES agence_immo(id)
);