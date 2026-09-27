-- [11] List all rentals with customer names, rental dates, return dates
-- Expected: customer_id, first_name, last_name, rental_date, return_date
SELECT r.customer_id, c.first_name, c.last_name, r.rental_date, r.return_date
FROM rental r
JOIN customer c
	ON r.customer_id = c.customer_id;
 
-- [12] Find all customers and number of rentals (include customers with 0 rentals)
-- Expected: customer_id, first_name, last_name, rental_count

WITH customer_agg_cte AS (SELECT customer_id, COUNT(rental_id) AS rental_count
FROM rental
GROUP BY customer_id)

SELECT c.customer_id AS customer_id, c.first_name AS first_name, c.last_name AS last_name, cagg.rental_count
FROM customer c
LEFT JOIN customer_agg_cte cagg
	ON c.customer_id = cagg.customer_id
ORDER BY c.customer_id;
 
-- [13] For each rental, show customer name, film title, rental date, staff who processed it
-- Expected: customer_name, film_title, rental_date, staff_name

 
-- [14] Find number of films in each category
-- Expected: category_name, film_count
SELECT c.name AS category_name, COUNT(f.film_id) AS film_count
FROM film f
	JOIN film_category fc
		ON f.film_id = fc.film_id
		JOIN category c
			ON c.category_id = fc.category_id
GROUP BY c.name;
 
-- [15] Find categories with more than 50 films
-- Expected: category_name, film_count
SELECT c.name AS category_name, COUNT(f.film_id) AS film_count
FROM film f
	JOIN film_category fc
		ON f.film_id = fc.film_id
		JOIN category c
			ON c.category_id = fc.category_id
GROUP BY c.name
HAVING COUNT(f.film_id) > 50;
 
-- [16] Calculate total amount paid and average payment for each customer
-- Expected: customer_id, first_name, last_name, total_paid, avg_payment
SELECT c.customer_id, c.first_name, c.last_name, agg.total_paid, agg.avg_payment
FROM customer c
	JOIN (
	SELECT customer_id, SUM(amount) AS total_paid, ROUND(AVG(amount),2) AS avg_payment
	FROM payment
	GROUP BY customer_id) AS agg
	ON c.customer_id = agg.customer_id;

-- [17] Which actor appeared in the most films?
-- Expected: actor_id, first_name, last_name, film_count
SELECT a.actor_id, a.first_name, a.last_name, agg.film_count
FROM actor a
	JOIN (
		SELECT actor_id, COUNT(film_id) as film_count
	FROM film_actor fa
	GROUP BY actor_id
	) AS agg
	ON a.actor_id = agg.actor_id
ORDER BY agg.film_count DESC;

 
-- [18] List stores ranked by total revenue from payments
-- Expected: store_id, total_revenue
SELECT store_id, SUM(p.amount) AS total_revenue
FROM payment p
	JOIN rental r
		ON p.rental_id = r.rental_id
		JOIN inventory i
			ON r.inventory_id = i.store_id
GROUP BY store_id
ORDER BY total_revenue DESC;
 
-- [19] Find all rentals made in 2005
-- Expected: rental_id, customer_id, rental_date
SELECT rental_id,customer_id,rental_date
FROM rental
WHERE EXTRACT(YEAR FROM rental_date) = 2005;
 
-- [20] Classify films as Budget (<$3), Standard ($3-$5), Premium (>$5)
-- Expected: film_id, title, rental_rate, price_category
SELECT film_id, title, rental_rate,
	CASE
		WHEN rental_rate < 3 THEN 'Budget'
		WHEN rental_rate BETWEEN 3 AND 5 THEN 'Standard'
		WHEN rental_rate > 5 THEN 'Premium'
	END AS price_category
FROM film;
 
-- [21] Show customer full names in uppercase
-- Expected: customer_id, full_name_upper
SELECT 
	customer_id,
	(UPPER(first_name) || ' ' || UPPER(last_name)) AS full_name_upper
FROM customer
ORDER BY customer_id;
 
-- [22] Find pairs of actors who appeared in same film together
-- Expected: actor1_id, actor1_name, actor2_id, actor2_name, film_id

SELECT 
    a1.actor_id AS actor1_id,
    a1.first_name || ' ' || a1.last_name AS actor1_name,
    a2.actor_id AS actor2_id,
    a2.first_name || ' ' || a2.last_name AS actor2_name,
    fa1.film_id
FROM film_actor fa1
JOIN film_actor fa2 
    ON fa1.film_id = fa2.film_id 
JOIN actor a1 ON fa1.actor_id = a1.actor_id
JOIN actor a2 ON fa2.actor_id = a2.actor_id;
 
-- [23] Find all unique cities where customers are located
-- Expected: city, country
SELECT DISTINCT city.city, country.country
FROM customer c
	JOIN address a
		ON c.address_id = a.address_id
			JOIN city
				ON city.city_id = a.city_id
					JOIN country
						ON city.country_id = country.country_id;

 
-- [24] Find films that cost more to replace than average replacement cost
-- Expected: film_id, title, replacement_cost, avg_replacement_cost
SELECT 
	film_id,
	title,
	replacement_cost,
	(SELECT AVG(replacement_cost) FROM film) AS avg_replacement_cost
FROM film 
WHERE replacement_cost > (SELECT AVG(replacement_cost) FROM film)
ORDER BY replacement_cost DESC;
 
-- [25] Find customers who rented films from Animation category
-- Expected: customer_id, first_name, last_name

