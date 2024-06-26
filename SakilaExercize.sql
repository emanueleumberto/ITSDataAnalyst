-- Seleziona il DB sakila 
USE sakila;
   
-- Visualizza il nome e il cognome di tutti gli attori dalla tabella actor.
SELECT first_name, last_name FROM actor;

-- Visualizza il nome e il cognome di ciascun attore in un'unica colonna in lettere minuscole. 
-- Assegna un nome alla colonna 'Actor Name'.
SELECT LOWER(CONCAT(first_name, ' ', last_name )) AS 'Actor Name' FROM actor;

-- Devi trovare il numero identificativo, il nome e il cognome di un attore, 
-- di cui conosci solo il nome, "Joe".
SELECT actor_id, first_name, last_name FROM actor WHERE first_name = "Joe";

-- Trova tutti gli attori il cui cognome contiene le lettere 'GEN'.
SELECT actor_id, first_name, last_name FROM actor WHERE last_name LIKE '%GEN%';

-- Trova tutti gli attori i cui cognomi contengono le lettere 'LI'. 
-- Questa volta, ordina le righe per cognome e nome, in quest'ordine.
SELECT actor_id, first_name, last_name 
	FROM actor WHERE last_name LIKE '%LI%' ORDER BY last_name, first_name ;

-- Utilizzando IN, visualizzare le colonne country_id e country della tab country
-- dei seguenti paesi: Afghanistan, Bangladesh e China
SELECT country_id, country FROM country 
	WHERE country IN ('Afghanistan', 'Bangladesh', 'China');

-- Aggiungi una middle_name colonna alla tabella actor. 
-- Posizionalo tra first_name e last_name.
ALTER table actor ADD COLUMN middle_name VARCHAR(25) NULL AFTER first_name;
SELECT * FROM actor;

-- Ora elimina la middle_name colonna.
ALTER table actor DROP COLUMN middle_name;

-- Elenca i cognomi degli attori e il numero degli attori che hanno quel cognome.
-- Assegna un nome alla colonna 'Actor LastName' e 'LastName Count'
SELECT last_name AS 'Actor LastName', COUNT(last_name) AS 'LastName Count' 
	FROM actor GROUP BY last_name;

-- Elenca i cognomi degli attori e il numero di attori che hanno quel cognome, 
-- ma solo per i nomi condivisi da almeno due attori
SELECT last_name AS 'Actor LastName', COUNT(last_name) AS 'LastName Count' 
	FROM actor GROUP BY last_name HAVING COUNT(first_name) >= 2;
    
-- Utilizzare JOIN per visualizzare il nome e il cognome, nonché l'indirizzo, 
-- di ciascun membro dello staff. Utilizza le tabelle staff e address
SELECT * FROM staff;
SELECT * FROM address;
SELECT s.first_name, s.last_name, a.address FROM staff AS s
	INNER JOIN address AS a ON s.address_id = a.address_id;

-- Da utilizzare JOIN per visualizzare 'Nome Cognome' di ciascun membro dello staff (Staff Member)
-- l'importo totale di ciascun membro (Total Amount) del personale nell'agosto del 2005. 
-- Utilizzare le tabelle staff e payment.
SELECT * FROM staff;
SELECT * FROM payment;
SELECT CONCAT(s.first_name, ' ', s.last_name) AS 'Staff Member', FORMAT(SUM(p.amount), 2) 
	FROM staff AS s 
		INNER JOIN payment AS p ON s.staff_id = p.staff_id
	-- WHERE p.payment_date LIKE '2005-08%'
    WHERE YEAR(p.payment_date) = 2005 AND MONTH(p.payment_date) = 08
    GROUP BY s.staff_id;

-- Elenca ogni film e il numero di attori elencati per quel film. 
-- Utilizzare tabelle film_actor e film. Utilizza INNER JOIN.
SELECT * FROM film;
SELECT * FROM film_actor;

SELECT f.title, COUNT(fa.actor_id) AS Num_Actors FROM film AS f 
	INNER JOIN film_actor AS fa ON f.film_id = fa.film_id
    GROUP BY f.title
    ORDER BY Num_Actors DESC;

-- Utilizza le subquery per visualizzare i titoli dei film che iniziano con 
-- le lettere K e Q e la cui lingua è l'inglese.
SELECT l.language_id FROM language AS l WHERE l.name = 'English';

SELECT f.title FROM film AS f 
	WHERE (f.title LIKE 'K%' OR f.title LIKE 'Q%') 
		AND f.language_id = (SELECT l.language_id FROM language AS l WHERE l.name = 'English');

-- Utilizza le subquery per visualizzare tutti gli attori che appaiono 
-- nel film 'Alone Trip'
SELECT * FROM film;
SELECT * FROM actor;
SELECT * FROM film_actor;

SELECT film_id FROM film WHERE title = 'Alone Trip';
SELECT actor_id FROM film_actor WHERE film_id = (SELECT film_id FROM film WHERE title = 'Alone Trip');
SELECT * FROM actor WHERE actor_id IN (
	SELECT actor_id FROM film_actor WHERE film_id = (
		SELECT film_id FROM film WHERE title = 'Alone Trip')
);

SELECT CONCAT(a.first_name, ' ', a.last_name) AS Actor_name FROM actor AS a 
	INNER JOIN film_actor AS fa ON a.actor_id = fa.actor_id
    INNER JOIN film AS f ON f.film_id = fa.film_id
    WHERE f.title = 'Alone Trip';
    
SELECT CONCAT(a.first_name, ' ', a.last_name) AS Actor_name FROM actor AS a 
	WHERE actor_id IN (
			SELECT actor_id FROM film_actor WHERE film_id = (
				SELECT film_id FROM film WHERE title = 'Alone Trip'
			)
		);

-- Utilizzando le subquery trova qual è il film con la durata maggiore, 
-- indicandone titolo e durata. 
-- Se fossero più di uno elencali in ordine di titolo.
SELECT MAX(f.length) FROM film AS f;

SELECT * FROM film 
		WHERE length = (
			SELECT MAX(f.length) FROM film AS f)
		ORDER BY title ASC;

-- Trova quali sono i film la cui durata è maggiore di almeno 60 minuti 
-- della durata media di tutti i film.
SELECT AVG(f.length) FROM film AS f;

SELECT * FROM film 
	WHERE length > (SELECT AVG(f.length) FROM film AS f) + 60
    ORDER BY title ASC;

-- Trova qual è il film con il maggior numero di attori, 
-- indicandone titolo e numero di attori. 
-- Se fossero più di uno elencali in ordine di titolo.
SELECT * FROM film;
SELECT * FROM actor;
SELECT * FROM film_actor;

SELECT f.title, COUNT(*) AS num_attori FROM film AS f 
	INNER JOIN film_actor AS fa ON f.film_id = fa.film_id
    GROUP BY f.film_id;
    
SELECT MAX(num_attori) FROM (
	SELECT f.title, COUNT(*) AS num_attori FROM film AS f 
		INNER JOIN film_actor AS fa ON f.film_id = fa.film_id
		GROUP BY f.film_id
	) AS t;
    
SELECT * FROM (
	SELECT f.title, COUNT(*) AS num_attori FROM film AS f 
		INNER JOIN film_actor AS fa ON f.film_id = fa.film_id
		GROUP BY f.film_id
	) AS t
    WHERE num_attori = (
		SELECT MAX(num_attori) FROM (
			SELECT f.title, COUNT(*) AS num_attori FROM film AS f 
				INNER JOIN film_actor AS fa ON f.film_id = fa.film_id
				GROUP BY f.film_id
			) AS t
    );
    
-- Soluzione alternativa con l'utilizzo delle viste
CREATE OR REPLACE VIEW countActor AS
	SELECT f.title, COUNT(*) AS num_attori FROM film AS f 
	INNER JOIN film_actor AS fa ON f.film_id = fa.film_id
    GROUP BY f.film_id;

SELECT * FROM (countActor)
     WHERE num_attori = (SELECT MAX(num_attori) FROM countActor);

/*
CREATE OR REPLACE VIEW abc AS 
	SELECT a.actor_id, a.first_name, a.last_name, f.title, f.description, f.release_year FROM actor AS a 
	INNER JOIN film_actor AS fa ON a.actor_id = fa.actor_id
    INNER JOIN film AS f ON f.film_id = fa.film_id;
    
SELECT * FROM abc;
DROP VIEW abc;
*/

DELIMITER &&
	CREATE PROCEDURE getFilm(IN num_row INT)
    BEGIN
		SELECT * FROM film LIMIT num_row;
    END &&
DELIMITER ;

CALL getFilm(25);

DELIMITER &&
	CREATE PROCEDURE maxLengthFilm(OUT maxLength INT)
    BEGIN
		SELECT MAX(length) INTO maxLength FROM film;
    END &&
DELIMITER ;

CALL maxLengthFilm(@max);
SELECT @max;

DELIMITER &&
	CREATE PROCEDURE displayTitleFilm(IN idFilm INT, OUT filmName VARCHAR(50))
    BEGIN
		SELECT title INTO filmName 
			FROM film WHERE film_id = idFilm;
    END &&
DELIMITER ;

SET @idFilm = 17;
CALL displayTitleFilm(@idFilm, @filmTitle);
SELECT @filmTitle;

DELIMITER &&
	CREATE PROCEDURE getLengthFilm(INOUT param INT)
    BEGIN
		SELECT length INTO param 
			FROM film WHERE film_id = param;
    END &&
DELIMITER ;

SET @miaVar = 17;
CALL getLengthFilm(@miaVar);
SELECT @miaVar;

-- Esempio Function
DELIMITER &&
	CREATE FUNCTION filmDuration(length INT)
    RETURNS VARCHAR(10)
    DETERMINISTIC
    BEGIN
		DECLARE duration VARCHAR(10);
        IF(length < 50) THEN 
			SET duration = 'Film Corto';
		ELSEIF (length >= 50 AND length < 100) THEN
			SET duration = 'Film Medio';
		ELSE 
			SET duration = 'Film Lungo';
		END IF;
        RETURN(duration);
    END &&
DELIMITER ;

SELECT filmDuration(115);

SELECT title, length, filmDuration(length) FROM film;