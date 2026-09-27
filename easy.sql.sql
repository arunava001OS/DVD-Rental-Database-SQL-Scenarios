-- [1] List all films with rental rate > $4.99, ordered by title
-- Expected: film_id, title, rental_rate

SELECT film_id, title, rental_rate
FROM film
WHERE rental_rate > 4.99
ORDER BY title;
 
-- [2] Find all customers from London
-- Expected: customer_id, first_name, last_name, city
SELECT cust.customer_id, cust.first_name, cust.last_name,ct.city 
FROM customer cust
JOIN address ad
	ON cust.address_id = ad.address_id
JOIN city ct
	ON ad.city_id = ct.city_id
WHERE ct.city = 'London';

 
-- [3] Display staff members with email, rename columns to "Staff Name" and "Email Address"
-- Expected: Staff Name, Email Address, store_id
SELECT first_name || ' ' || last_name AS "Staff Name",email AS "Email Address", store_id
FROM staff;
 
-- [4] Find all unique rental rates in the film table
-- Expected: rental_rate
SELECT DISTINCT rental_rate
FROM film;
 
-- [5] How many films are in the database?
-- Expected: Count of films
SELECT COUNT(*)
FROM film;
 
-- [6] Find 10 most expensive films by replacement cost
-- Expected: title, replacement_cost
SELECT title, replacement_cost
FROM film
ORDER BY replacement_cost DESC
LIMIT 10;
 
-- [7] Find films with length between 100 and 120 minutes
-- Expected: title, length
SELECT title,f.length
FROM film f
WHERE f.length BETWEEN 100 AND 120 ;
 
-- [8] Find films in categories: Action, Comedy, Horror
-- Expected: film_id, title, category_name
SELECT f.film_id AS film_id, f.title AS title, c.name AS category_name
FROM film f
JOIN film_category fc
	ON f.film_id = fc.film_id
JOIN category c
	ON fc.category_id = c.category_id
WHERE c.name IN ('Action','Horror','Comedy');
 
-- [9] Find actors whose first name starts with 'A'
-- Expected: actor_id, first_name, last_name
SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name LIKE 'A%';
 
-- [10] Find films with NULL description
-- Expected: film_id, title
SELECT film_id, title, description
FROM film
WHERE description IS NULL;

