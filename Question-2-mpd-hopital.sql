CREATE TABLE medecin (
id INTEGER PRIMARY KEY AUTOINCREMENT,
nom VARCHAR(255)
);

CREATE TABLE malade (
id INTEGER PRIMARY KEY AUTOINCREMENT,
nom VARCHAR(255)
);

CREATE TABLE consultation (
id INTEGER PRIMARY KEY AUTOINCREMENT,
date DATE,
prix TINYINT,
id_medecin INTEGER,
id_malade INTEGER,
FOREIGN KEY(id_medecin) REFERENCES medecin(id),
FOREIGN KEY(id_malade) REFERENCES malade(id)
);

CREATE TABLE maladie (
id INTEGER PRIMARY KEY AUTOINCREMENT,
nom VARCHAR(255)
);

CREATE TABLE symptome (
id INTEGER PRIMARY KEY AUTOINCREMENT,
nom VARCHAR(255)
);

CREATE TABLE symptome_maladie (
id_maladie INTEGER,
id_symptome INTEGER,
FOREIGN KEY(id_maladie) REFERENCES maladie(id),
FOREIGN KEY(id_symptome) REFERENCES symptome(id)
);

CREATE TABLE consultation_maladie (
id_consultation INTEGER,
id_maladie INTEGER,
FOREIGN KEY(id_consultation) REFERENCES consultation(id),
FOREIGN KEY(id_maladie) REFERENCES maladie(id)
);

CREATE TABLE consultation_symptome (
id_consultation INTEGER,
id_symptome INTEGER,
FOREIGN KEY(id_consultation) REFERENCES consultation(id),
FOREIGN KEY(id_symptome) REFERENCES symptome(id)
);

