-- [26] For each customer, find their largest single payment amount
-- Expected: customer_id, first_name, last_name, max_payment
 
-- [27] Find all films that have been rented at least once
-- Expected: film_id, title, rental_count
 
-- [28] Rank customers by total spending within their store
-- Expected: customer_id, first_name, store_id, total_spent, rank
 
-- [29] Top 3 most rented films with RANK and DENSE_RANK
-- Expected: film_id, title, rental_count, rank, dense_rank
 
-- [30] For each customer rental, show previous and next rental dates
-- Expected: customer_id, rental_id, rental_date, prev_rental, next_rental
 
-- [31] Show running total of payments by customer, ordered by payment date
-- Expected: customer_id, payment_date, amount, running_total
 
-- [32] Rank films by rental rate within each category
-- Expected: category_name, film_id, title, rental_rate, rank_in_category
 
-- [33] Find customers who spent more than average and show how much more
-- Expected: customer_id, first_name, last_name, total_spent, amount_above_avg
 
-- [34] Build staff hierarchy with managers
-- Expected: staff_id, staff_name, manager_id, manager_name, level
 
-- [35] Find categories above average rental rate and by how much
-- Expected: category_name, category_avg_rate, overall_avg_rate, difference
 
-- [36] For each actor, find most frequently rented film and rental count
-- Expected: actor_id, actor_name, film_id, film_title, rental_count
 
-- [37] Find customers whose average rental amount is above overall average
-- Expected: customer_id, first_name, last_name, avg_rental_amount
 
-- [38] List all people in database: customers, actors, staff combined
-- Expected: person_type, first_name, last_name
 
-- [39] Find actors NOT in any G-rated films
-- Expected: actor_id, first_name, last_name
 
-- [40] Find customers who are also staff members
-- Expected: person_id, first_name, last_name
 
-- [41] Divide films into 4 quartiles based on replacement cost
-- Expected: film_id, title, replacement_cost, quartile
 
-- [42] For each customer: total payments, payment count, avg (>$5 only)
-- Expected: customer_id, first_name, total_payments, payment_count, avg_large_payments
 
-- [43] Find days between each customer's consecutive rentals
-- Expected: customer_id, rental_date_1, rental_date_2, days_between
 
-- [44] For each film, rank it compared to films in same category
-- Expected: category_name, film_id, title, rental_count, rank_in_category
 
-- [45] Identify VIP Customers (top 10% by spending) with metrics
-- Expected: customer_id, first_name, last_name, total_spending, rental_count, avg_rental, favorite_category
 
-- [46] Summary of rentals by store and rating (G, PG, PG-13, R, NC-17)
-- Expected: store_id, G_count, PG_count, PG_13_count, R_count, NC_17_count
 
-- [47] Customers with 50+ films and $200+ spent, show efficiency score
-- Expected: customer_id, first_name, last_name, rental_count, total_spent, efficiency_score
 
-- [48] Monthly summary: rentals, revenue, avg rate, month-over-month change
-- Expected: month, year, total_rentals, total_revenue, avg_rental_rate, revenue_change
 
-- [49] Find rental duration outliers using standard deviation
-- Expected: rental_id, customer_id, film_id, actual_duration, avg_duration, std_dev, z_score
 
-- [50] Hierarchical summary: country, city, store, customers, revenue, avg spending
-- Expected: country, city, store_id, customer_count, total_revenue, avg_spending

