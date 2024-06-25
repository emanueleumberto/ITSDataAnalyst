/*
SELECT [DISTINCT] column_name1, column_name2, ..., column_nameN | * | aggregate_function(expression)
	FROM table_name
    [WHERE search condition]
    [GROUP BY]
    [HAVING]
    [ORDER BY]
    [LIMIT n]
*/

USE sakila;
SELECT * FROM address;
SELECT address, district FROM address;
SELECT address, district FROM address WHERE district = 'California';
SELECT COUNT(*) AS numRighe FROM address WHERE district = 'California'; 
SELECT DISTINCT district FROM address;

SELECT district, COUNT(*) AS numCity	-- 7
	FROM address						-- 1
    WHERE city_id > 300					-- 2
    GROUP BY district					-- 3
    HAVING COUNT(*) > 2					-- 4
    ORDER BY numCity DESC				-- 5
    LIMIT 5	OFFSET 0					-- 6
    ;

SELECT DISTINCT district FROM address WHERE city_id = 300;
SELECT DISTINCT district FROM address WHERE city_id >= 300;
SELECT DISTINCT district FROM address WHERE city_id <= 300;
SELECT DISTINCT district FROM address WHERE city_id != 300;

SELECT * FROM film;
SELECT * FROM film WHERE release_year = 2006 AND rental_duration > 6;
SELECT * FROM film WHERE release_year = 2005 OR rental_duration > 6;
SELECT * FROM film WHERE release_year = 2005 AND (rental_duration < 6 OR rental_rate = 2.99);

SELECT * FROM film WHERE title = 'AFRICAN EGG';
SELECT * FROM film WHERE title LIKE '%AP%';
SELECT * FROM film WHERE title LIKE '%APE';
SELECT * FROM film WHERE title LIKE 'AF%';
SELECT * FROM film WHERE title LIKE 'AP_C%';

SELECT * FROM film WHERE length BETWEEN 50 AND 60;
SELECT * FROM film WHERE length >= 50 AND length <= 60; -- equivalente
SELECT * FROM film WHERE title BETWEEN 'A%' AND 'D%';
SELECT * FROM film WHERE length >= 'A%' AND length <= 'D%'; -- 0 row

SELECT * FROM film WHERE rating IN('NC-17', 'R', 'PG-13');
SELECT * FROM film WHERE rating NOT IN('NC-17', 'R', 'PG-13');

/*
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
    [LIMIT n]city
*/

SELECT city_id, city, country FROM city, country 
	WHERE city.country_id = country.country_id;

SELECT city.city_id, city.city, country.country, city.country_id 
	FROM city, country 
	WHERE city.country_id = country.country_id;
    
SELECT c.city_id, c.city AS city_name, co.country, c.country_id 
	FROM city AS c, country AS co 
	WHERE c.country_id = co.country_id AND co.country = 'Brazil';
    
-- JOIN
SELECT c.city_id, c.city AS city_name, co.country
	FROM city AS c
    INNER JOIN country AS co
    ON c.country_id = co.country_id
    WHERE co.country = 'Brazil';
    
SELECT a.address, a.district, c.city, co.country
	FROM address AS a
    INNER JOIN city AS c ON a.city_id = c.city_id
    INNER JOIN country AS co ON c.country_id = co.country_id
    WHERE co.country = 'Brazil';
    
/*

SELECT [DISTINCT] column_name1, column_name2, ..., column_nameN | * | aggregate_function(expression)
	FROM (
		SELECT [DISTINCT] column_name1, column_name2, ..., column_nameN ) 
			FROM table_name
            [WHERE search condition]
	)
    [WHERE search condition]

*/


    
SELECT * FROM city AS ci 
	INNER JOIN (
		SELECT country_id, country FROM country 
		WHERE country IN ('Afghanistan', 'Bangladesh', 'China')
    ) AS co ON ci.country_id = co.country_id ;
    
SELECT * FROM city WHERE country_id IN (
	SELECT country_id FROM country 
		WHERE country IN ('Afghanistan', 'Bangladesh', 'China')
);

SELECT COUNT(*) AS TOT_city, (
	SELECT COUNT(*) FROM country 
) AS TOT_country FROM city;
