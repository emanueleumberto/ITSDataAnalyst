-- Organizzazione Scolastica
DROP DATABASE IF EXISTS organizzazione_scolastica_da;
CREATE DATABASE IF NOT EXISTS organizzazione_scolastica_da;
USE organizzazione_scolastica_da;

-- Tab Istituti -> codice, nome, indirizzo, nalunni, nclassi, ndocenti
CREATE TABLE IF NOT EXISTS istituti (
	codice CHAR(4) NOT NULL,
    nome VARCHAR(10) NOT NULL,
    indirizzo VARCHAR(50) NOT NULL,
    nalunni INT UNSIGNED NULL DEFAULT 0,
    nclassi INT UNSIGNED NULL DEFAULT 0,
    ndocenti INT UNSIGNED NULL DEFAULT 0,
    CONSTRAINT istituti_pk PRIMARY KEY(codice)
);

-- Tab Classi
CREATE TABLE IF NOT EXISTS classi (
	codice INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(10) NOT NULL,
    nalunni INT UNSIGNED NULL DEFAULT 0,
    codice_istituto CHAR(4) NOT NULL,
    CONSTRAINT classi_istituto_fk 
		FOREIGN KEY(codice_istituto)
        REFERENCES istituti(codice)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- Tab Studenti
CREATE TABLE IF NOT EXISTS studenti (
	nome VARCHAR(25) NOT NULL,
    cognome VARCHAR(25) NOT NULL,
    data_nascita DATE NOT NULL,
    indirizzo VARCHAR(50) NOT NULL,
    cap CHAR(5) NOT NULL,
    comune VARCHAR(15) NOT NULL,
    provincia CHAR(2) NOT NULL,
    sesso ENUM('M', 'F', 'A') NOT NULL,
    codice_classe INT NOT NULL,
    CONSTRAINT studenti_pk PRIMARY KEY(nome, cognome),
    CONSTRAINT studenti_classi_fk 
		FOREIGN KEY(codice_classe)
		REFERENCES classi(codice)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- Tab Docenti
CREATE TABLE IF NOT EXISTS docenti (
	codice INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(25) NOT NULL,
    cognome VARCHAR(25) NOT NULL,
    data_nascita DATE NOT NULL,
    indirizzo VARCHAR(50) NOT NULL,
    cap CHAR(5) NOT NULL,
    comune VARCHAR(15) NOT NULL,
    provincia CHAR(2) NOT NULL,
    sesso ENUM('M', 'F', 'A') NOT NULL
);

-- Tab Insegnare (relazione ManyToMany tra Docente e Classe)
CREATE TABLE IF NOT EXISTS insegnare (
	materia VARCHAR(25) NOT NULL,
    codice_classe INT NOT NULL,
    codice_docente INT NOT NULL,
    CONSTRAINT insegnare_classe_fk 
		FOREIGN KEY(codice_classe)
        REFERENCES classi(codice),
	CONSTRAINT insegnare_docente_fk
		FOREIGN KEY(codice_docente)
        REFERENCES docenti(codice)
);

-- Inserimento Dati
-- Tab Istituti -> codice, nome, indirizzo, nalunni, nclassi, ndocenti
INSERT INTO istituti (codice, nome, indirizzo)
		VALUES ('I001', 'ITS_Agnesi', 'Via Emo 13');
        
SELECT * FROM istituti;