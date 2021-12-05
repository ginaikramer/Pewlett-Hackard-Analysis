SELECT SUM(replacement_cost)
FROM film;


-- Select average length of films and order by the avg length
SELECT * 
FROM film;



SELECT rating, SUM(replacement_cost) AS "Total Repl Cost"
FROM film
GROUP BY rating
ORDER BY rating;

SELECT rating, SUM(replacement_cost) AS "Total Repl Cost"
FROM film
GROUP BY rating
ORDER BY "Total Repl Cost" DESC;

SELECT rating, SUM(replacement_cost) AS "Total Repl Cost"
FROM film
GROUP BY rating
ORDER BY "Total Repl Cost" DESC
LIMIT 2;

SELECT ROUND(AVG(rental_rate),2)
FROM film;

-- Determine the count of actor first names ordered in descending order.
SELECT first_name, COUNT(first_name)
FROM actor
GROUP BY first_name
ORDER BY COUNT(first_name) DESC;

-- Determine the average rental duration for each rating rounded to two decimals. Order these in ascending order.
SELECT rating, ROUND(AVG(rental_duration),2)
FROM film
GROUP BY rating
ORDER BY AVG(rental_duration) ASC;

-- Select top ten replacement costs for the length of the movie
SELECT length, SUM(replacement_cost) AS "Repl Cost"
FROM film
GROUP BY length
ORDER BY "Repl Cost" DESC
LIMIT 10;

--Using the city and country tables, determine the number of cities in each country from the database in descending order.

-- Unique
SELECT DISTINCT(customer_id)
FROM rental
ORDER BY customer_id;

-- Distinct with order by
SELECT DISTINCT customer_id
FROM rental
ORDER BY customer_id;


-- When use DISTINCT with 2 or more items, the combination of each must be unique
SELECT DISTINCT customer_id, inventory_id
FROM rental
ORDER BY customer_id;


SELECT DISTINCT ON (customer_id) customer_id, rental_date
FROM rental
WHERE customer_id=130
ORDER BY customer_id, rental_date DESC;

SELECT DISTINCT ON (customer_id) customer_id, rental_date
FROM rental
ORDER BY customer_id, rental_date DESC;




--1. Retreive the latest rental for each customer's first and last name and emial address. 
SELECT DISTINCT ON (rental.customer_id) customer.first_name, customer.last_name, customer.email, rental.rental_date
FROM rental
JOIN customer
ON customer.customer_id = rental.customer_id
ORDER BY rental.customer_id, rental.rental_date DESC;



--2. Retrieve the latest rental date for each title. 
--* **Hint:** Join the `rental` and `inventory` tables on `inventory_id` and then join the `film` table with the `inventory` table on `film_id`. 

SELECT DISTINCT ON (film.title) film.title, rental.rental_date
FROM rental
JOIN inventory
ON rental.inventory_id = inventory.inventory_id
JOIN film
ON inventory.film_id = film.film_id
ORDER BY film.title, rental.rental_date DESC
LIMIT 10;

ON 
ON













