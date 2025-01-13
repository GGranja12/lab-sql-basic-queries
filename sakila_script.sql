USE sakila;

-- Displaying all available tables --
SHOW FULL TABLES;

-- Retrieving all data from actor, film and customer tables--
SELECT *
FROM actor ,film, customer;

-- Retrieving titles of all films--
SELECT title
FROM film;

-- Retrieving List of languages used in films--
SELECT name AS language
FROM language;

-- Retrieving List of first names of all employees--
SELECT first_name 
FROM staff;

-- Retrieving unique release years--
SELECT DISTINCT release_year	
FROM film;

-- Retrieving the number of stores that the company has--
SELECT COUNT(DISTINCT store_id) AS number_of_stores
FROM store;

-- Retrieving the number of employees that the company has--
SELECT COUNT(DISTINCT staff_id) AS number_of_employees
FROM staff;

-- Retrieving how many films are available for rent and how many have been rented
SELECT COUNT(DISTINCT rental_id) AS number_films_rented
FROM rental;

SELECT COUNT(DISTINCT inventory_id) AS number_films_rented
FROM inventory;

-- Retrieving number of distinct last names of the actors in the database--
SELECT COUNT(DISTINCT last_name) AS number_of_last_names
FROM actor;

-- Retrieving the 10 longest films--
SELECT title,length
FROM film
ORDER BY length DESC
LIMIT 10;

-- Retrieve all actors with the first name "SCARLETT"--
SELECT *
FROM actor
WHERE last_name = "SCARLETT";

-- Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes--
SELECT *
FROM film
WHERE length > 100 AND title LIKE "%ARMAGEDDON%";

-- Retrieve the number of films that include Behind the Scenes content--
SELECT COUNT(*)
FROM film
WHERE special_features LIKE "%Behind the Scenes%";

