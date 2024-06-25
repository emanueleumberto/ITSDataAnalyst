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
-- CREATE DATABASE [IF NOT EXISTS] db_name;
-- SHOW DATABASES;
-- USE db_name;
-- DROP DATABASE [IF EXISTS] db_name;
-- RENAME DATABASE old_database_name TO new_database_name;  (Depreacato)
-- ALTER DATABASE existing_DB_name MODIFY NAME = name_Of_new_DB

-- TABLE
/* CREATE TABLE [IF NOT EXISTS] db_name.table_name (
	column_name datatype column_constraints,
    column_name datatype column_constraints,
    column_name datatype column_constraints,
    ...
    [constraint_name] table_constraints
) */

-- DROP TABLE [IF EXISTS] table_name [CASCADE | RESTRICT];
-- ALTER TABLE table_name ADD COLUMN column_name datatype column_constraints;
-- ALTER TABLE table_name DROP COLUMN column_name [CASCADE | RESTRICT];
-- ALTER TABLE table_name MODIFY column_name datatype;
-- ALTER TABLE table_name RENAME COLUMN column_name TO new_column_name;
-- ALTER TABLE table_name ADD CONSTRAINT constraint_name constraint_type(column_name) REFERENCES table_name(column_name);
-- ALTER TABLE table_name DROP CONSTRAINT constraint_name;

-- DML
-- INSERT | UPDATE | DELETE

-- INSERT INTO table_name (column_name1, column_name2, column_name3, ..., column_nameN)
-- VALUES(value1, value2, value3, ..., valueN)

-- UPDATE table_name SET column_name1=value1, column_name2=value2, ..., column_nameN=valueN
-- WHERE column_name = value

-- DELETE FROM table_name WHERE column_name = value;

-- TRANSACTION | START TRANSACTION or BEGIN  | ROLLBACK | COMMIT
/*
	SET autocommit=0; -- Disabilito l'autocommit di default
	START TRANSACTION;
		-- Effettuo tutte le operazioni DML (INSERT | UPDATE | DELETE)
	ROLLBACK;
		-- Torno in unio stato precedente
	COMMIT;
		-- Salvo le modifiche nel DB
*/ 

-- DQL
-- SELECT -> Un elenco di campi o tutto(*) da eporre nel resulset di risultati
-- FROM -> indica la sorgente dati (la/le tabelle)
-- WHERE -> search condition, applica un filtro sulle righe 
--          della tabella indicata nel FROM
-- GROUP BY -> aggregazione di dati rispetto alla combinazione univoca 
-- 			   data dalla group by list
-- HAVING -> search condition, applica un filtro sulle righe della tabella 
-- 			 filtrata e aggregata dal GROUP BY
-- ORDER BY -> consente di definire un ordinamento ben preciso
-- LIMIT -> consente di selezionare un numero definito di record

/*
SELECT [DISTINCT] column_name1, column_name2, ..., column_nameN | * | aggregate_function(expression)
	FROM table_name
    [WHERE search condition]
    [GROUP BY]
    [HAVING]
    [ORDER BY]
    [LIMIT n]

SELECT [DISTINCT] column_name1, column_name2, ..., column_nameN | * | aggregate_function(expression)
	FROM table_name
    INNER | LEFT | RIGHT JOIN table_name2 ON condition
    INNER | LEFT | RIGHT JOIN table_name3 ON condition
    ....
    INNER | LEFT | RIGHT JOIN table_nameN ON condition
    [WHERE search condition]
    [GROUP BY]
    [HAVING]
    [ORDER BY]
    [LIMIT n]
*/

/*
	Operatori di confronto della search condition
    = (uguale)
    > (maggiore di)
    < (minore di)
    >= (maggiore uguale)
    <= (minore uguale)
    <> | != (diverso da)
    !< (Non minore di)
    !> (Non maggiore di)
*/

/*
	Operatori Logici
    AND (restituisce TRUE solo se entrambe le condizioni booleane restituiscono TRUE)
    OR (restituisce TRUE se almeno una delle condizioni booleane restituisce TRUE)
    () precedenze
    
    LIKE (contiene ... | caratteri jolly %_)
    BETWEEN (restituisce tutti i valori compresi tra >= AND <= del range specificato)
    IN | NOT IN (Elenco di espressione in cui individuare una corrispondenza)
    
    WHERE nome = 'Mario'
    WHERE nome LIKE 'M%'
    WHERE nome LIKE 'M_ri_'
*/

/*
	Functions
    String Functions
    https://dev.mysql.com/doc/refman/8.4/en/string-functions.html
    CONCAT(column_name1, ' ', column_name2) -> Funzione che mi permette di unire 2 o più campi
    UPPER('string' | column_name) -> Funzione che restituisce il valore del campo in maiuscolo
    LOWER('string' | column_name) -> Funzione che restituisce il valore del campo in minuscolo
    LENGTH('string' | column_name) -> Funzione che restituisce la lunghezza di una stringa o di un campo
    TRIM('string' | column_name) ->  Funzione che restituisce senza spazi bianchi prima e dopo il valore inserito
    
    Numeric Functions
    https://dev.mysql.com/doc/refman/8.4/en/numeric-functions.html
    COUNT(* | DISTINCT column_name) -> Funzione che restituisce il numero di record di una query
    FORMAT(number | column_name, 2) -> Funzione che restituisce un numero decimale formattato
    TRUNCATE((number | column_name, 2) -> Funzione che restituisce un numero decimale troncato
    ABS(number | column_name) -> Funzione che restituisce un valore assoluto, senza segno
    AVG(column_name) -> Funzione che restituisce la media dei valori di una colonna
    CEIL(column_name) -> Funzione che restituisce un valore arrotondato per eccesso
    FLOOR(column_name) -> Funzione che restituisce un valore arrotondato per difetto
    ROUND(column_name) -> Funzione che restituisce un valore arrotondato al numero intero più vicino
    RAND() -> Funzione che restituisce un numero casuale tra 0 e 1
    MAX(column_name) -> Funzione che restituisce il valore massimo 
    MIN(column_name) -> Funzione che restituisce il valore minimo
    SUM(column_name) -> Funzione che restituisce la somma dei valori
    
    Date Functions
    https://dev.mysql.com/doc/refman/8.4/en/date-and-time-functions.html
    ADDDATE(date, n) -> Funzione che aggiunge n ad una data
    ADDTIME(datetime, n) -> Funzione che aggiunge n ad un valore orario
    CURRENT_DATE() -> Funzione che restituisce una data in formato 'YYYY-MM-DD'(String)
    CURRENT_TIME() -> Funzione che restituisce un orario in formato 'HH-MM-SS'(String)
    CURRENT_TIMESTAMP() -> Funzione che restituisce data e ora del momento
    DATEDIFF(date1, date2) -> Funzione che calcola la differenza di giorni tra due date
    DAY(date) -> Funzione che restituisce il giorno da una data
    MONTH(date) -> Funzione che restituisce il mese  da una data
    YEAR(date) -> Funzione che restituisce l'anno da una data
    HOUR(datetime) -> Funzione che restituisce l'ora da una data
    MINUTE(datetime) -> Funzione che restituisce i minuti da una data
    SECOND(datetime) -> Funzione che restituisce i secondi da una data
    
    Advanced Functions
    ISNULL(column_name) -> Funzione che restituisce 1 o 0 in base al valore NULL di una colonna
    LAST_INSERT_ID() -> Funzione che restituisce l'ultimo valore intero del campo ID della PK
*/

/*
	SubQuery o Inner Query -> Sono query inserite in altre query, 
    una query annidata dipende dalla query esterna
    
    SELECT [DISTINCT] column_name1, column_name2, ..., column_nameN | * | aggregate_function(expression)
	FROM (
		SELECT [DISTINCT] column_name1, column_name2, ..., column_nameN ) 
			FROM table_name
            [WHERE search condition]
	)
    [WHERE search condition]
    
    SELECT (
		SELECT [DISTINCT] column_name1, column_name2, ..., column_nameN ) 
			FROM table_name
            [WHERE search condition]
	)
	FROM table_name
    [WHERE search condition]
*/

/*
	View
    Store Procedure
    Custom Function
*/

DROP DATABASE IF EXISTS test_da;
CREATE DATABASE IF NOT EXISTS test_da;
-- SHOW DATABASES;
USE test_da;
-- DROP TABLE IF EXISTS users;
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
DROP TABLE IF EXISTS courses;
-- courses -> course_id - course_name - course_code - course_hours
CREATE TABLE IF NOT EXISTS courses (
	course_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    course_code INT NOT NULL,
    course_hours INT NOT NULL DEFAULT 250
);

DROP TABLE IF EXISTS users_courses;
-- users_courses -> users_course_id - user_id - course_id - data_iscr
CREATE TABLE IF NOT EXISTS users_courses (
	users_course_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    course_id INT NOT NULL
    
    /*
    CONSTRAINT users_courses_pk PRIMARY KEY(users_course_id)
    CONSTRAINT users_courses_fk1 
			FOREIGN KEY(user_id) REFERENCES users(user_id)
            ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT users_courses_fk2
			FOREIGN KEY(course_id) REFERENCES courses(course_id)
            ON DELETE CASCADE ON UPDATE CASCADE
	*/
);

ALTER TABLE users_courses 
			ADD COLUMN data_iscr 
            TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

-- ALTER TABLE users_courses ADD CONSTRAINT users_courses_pk PRIMARY KEY(users_course_id);
ALTER TABLE courses ADD CONSTRAINT course_code_unique UNIQUE(course_code);
ALTER TABLE users_courses 
				ADD CONSTRAINT users_courses_fk1 
                FOREIGN KEY(user_id) 
                REFERENCES users(user_id)
                ON DELETE CASCADE
                ON UPDATE CASCADE;
ALTER TABLE users_courses
				ADD CONSTRAINT users_courses_fk2
				FOREIGN KEY(course_id)
                REFERENCES courses(course_id);
                


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

-- courses -> course_id - course_name - course_code - course_hours
INSERT INTO courses (course_name, course_code, course_hours)
		VALUES	('SQL', 1, 40),
				('Python', 2, 60),
                ('Javascript', 3, 20);
     
-- users_courses -> users_course_id - user_id - course_id - data_iscr
INSERT INTO users_courses (user_id, course_id)
		VALUES  (1, 2),
				(2, 2),
                (2, 1);

UPDATE courses SET 
			course_hours = 40,
            course_name = 'Vanilla Javascript'
            WHERE course_id = 3;
            
DELETE FROM cars WHERE car_id = 1;

SELECT * FROM users;
SELECT * FROM signin;
SELECT * FROM cars;
SELECT * FROM courses;
SELECT * FROM users_courses;








