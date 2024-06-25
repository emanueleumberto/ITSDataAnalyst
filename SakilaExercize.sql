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

-- Da utilizzare JOIN per visualizzare 'Nome Cognome' di ciascun membro dello staff (Staff Member)
-- l'importo totale di ciascun membro (Total Amount) del personale nell'agosto del 2005. 
-- Utilizzare le tabelle staff e payment.

-- Elenca ogni film e il numero di attori elencati per quel film. 
-- Utilizzare tabelle film_actor e film. Utilizza INNER JOIN.

-- Utilizza le subquery per visualizzare i titoli dei film che iniziano con 
-- le lettere K e Q e la cui lingua è l'inglese.

-- Utilizza le subquery per visualizzare tutti gli attori che appaiono 
-- nel film 'Alone Trip'

-- Utilizzando le subquery trova qual è il film con la durata maggiore, 
-- indicandone titolo e durata. 
-- Se fossero più di uno elencali in ordine di titolo.

-- Trova quali sono i film la cui durata è maggiore di almeno 60 minuti 
-- della durata media di tutti i film.

-- Trova qual è il film con il maggior numero di attori, 
-- indicandone titolo e numero di attori. 
-- Se fossero più di uno elencali in ordine di titolo.