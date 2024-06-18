-- Commenti a singola riga
/*
	Commenti multi riga
*/

/*
	SQL ha diverse categorie di statement
    DDL -> Data definition Language 
		Definisce tutte le istruzioni SQL 
        per la creazione e gestione del DB
	DML -> Data Manipulation Language
		Definisce tutte le istruzioni SQL
        per la creazione e gestione delle tabelle di un DB
	DQL -> Data Query Language
		Definisce tutte le istruzioni
        per la lettura di dati da un DB
	DCL -> Data Control Laanguage
		Defisce tutte le istruzioni per
        la getione e i permessi di un DB
*/

-- DDL
-- CREATE | USE | ALTER | DROP | SHOW

-- DB
-- CREATE DATABASE [IF NOT EXISTS] nome_db;
-- SHOW DATABASES;
-- USE nome_db;
-- DROP DATABASE [IF EXISTS] nome_db;
-- RENAME DATABASE old_database_name TO new_database_name;  (Depreacato)
-- ALTER DATABASE existing_DB_name MODIFY NAME = name_Of_new_DB

-- TABLE
/* CREATE TABLE [IF NOT EXISTS] nome_db.nome_table (
	column_name datatype column_constraints,
    column_name datatype column_constraints,
    column_name datatype column_constraints,
    ...
    [constraint_name] table_constraints
) */
-- DROP TABLE [IF EXISTS] nome_table [CASCADE | RESTRICT];
-- ALTER TABLE nome_table ADD COLUMN column_name datatype column_constraints;
-- ALTER TABLE nome_table DROP COLUMN column_name [CASCADE | RESTRICT];
-- ALTER TABLE nome_table RENAME COLUMN column_name TO new_column_name

DROP DATABASE IF EXISTS test_da;
CREATE DATABASE IF NOT EXISTS test_da;
-- SHOW DATABASES;
USE test_da;
DROP TABLE IF EXISTS users;
-- users -> user_id - firstname - lastname - age - city - fiscal_code
CREATE TABLE IF NOT EXISTS users (
	user_id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(25) NOT NULL,
    lastname VARCHAR(25) NOT NULL,
    age INT UNSIGNED NULL DEFAULT 18,
    city VARCHAR(50) NULL,
    email VARCHAR(30) NOT NULL UNIQUE,
    CONSTRAINT user_pk PRIMARY KEY(user_id)
);
ALTER TABLE users ADD COLUMN fiscal_code CHAR(16) NOT NULL UNIQUE;
ALTER TABLE users DROP COLUMN email;
ALTER TABLE users RENAME COLUMN name TO firstname;

-- Relazione OneToOne
-- signin -> signin_id - email - password - user_id
CREATE TABLE IF NOT EXISTS signin (
	signin_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(30) NOT NULL UNIQUE,
    password VARCHAR(30) NOT NULL,
    user_id INT NOT NULL UNIQUE,
    CONSTRAINT signin_users_fk 
			FOREIGN KEY(user_id)
            REFERENCES users(user_id)
            ON DELETE CASCADE
            ON UPDATE CASCADE
);

-- Relazione OneToMany
-- cars -> car_id - car_name - car_license_plate - user_id
CREATE TABLE IF NOT EXISTS cars (
	car_id INT NOT NULL AUTO_INCREMENT,
    car_name VARCHAR(25) NULL,
    car_license_plate CHAR(7) NOT NULL UNIQUE,
    user_id INT NULL,
    CONSTRAINT cars_pk PRIMARY KEY(car_id),
    CONSTRAINT cars_users_fk 
		FOREIGN KEY(user_id)
        REFERENCES users(user_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- Relazione ManyToMany
CREATE TABLE IF NOT EXISTS courses (
	course_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    course_hours INT NOT NULL DEFAULT 250
);

CREATE TABLE IF NOT EXISTS users_courses (
	users_course_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    course_id INT NOT NULL,
    CONSTRAINT users_courses_fk1 
			FOREIGN KEY(user_id) REFERENCES users(user_id),
	CONSTRAINT users_courses_fk2
			FOREIGN KEY(course_id) REFERENCES courses(course_id)
);

-- users -> user_id - firstname - lastname - age - city - fiscal_code
INSERT INTO users (firstname, lastname, age, city, fiscal_code)
		VALUES ('Mario', 'Rossi', 23, 'Roma', 'ABC12DEF34GHI567');
INSERT INTO users (firstname, lastname, age, city, fiscal_code)
		VALUES ('Giuseppe', 'Verdi', 31, 'Milano', 'POI12DEF34GHI123');
INSERT INTO users (firstname, lastname, fiscal_code)
		VALUES ('Francesca', 'Neri', 'FRA12NCE34GHI444');

-- signin -> signin_id - email - password - user_id
INSERT INTO signin (email, password, user_id)
		VALUES  ('m.rossi@example.com', 'Pa$$w0rd!', 1),
				('g.verid@example.com', 'Pa$$w0rd!', 2),
                ('f.neri@example.com', 'Pa$$w0rd!', 3);
                
-- cars -> car_id - car_name - car_license_plate - user_id
INSERT INTO cars (car_name, car_license_plate, user_id)
		VALUES  ('Fiat Panda', 'AB123CD', 1),
				('Renault Captur', 'DD111CC', 1),
                ('Mercedes ClasseA', 'BD432GF', 3);

SELECT * FROM users;
SELECT * FROM signin;
SELECT * FROM cars;








