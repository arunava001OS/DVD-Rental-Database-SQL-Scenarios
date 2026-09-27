DVD RENTAL DATABASE - SQL PRACTICE PROBLEMS
===============================================

EASY LEVEL
===============================================

[1] List all films with rental rate > $4.99, ordered by title
Expected: film_id, title, rental_rate

[2] Find all customers from London
Expected: customer_id, first_name, last_name, city

[3] Display staff members with email, rename columns to "Staff Name" and "Email Address"
Expected: Staff Name, Email Address, store_id

[4] Find all unique rental rates in the film table
Expected: rental_rate

[5] How many films are in the database?
Expected: Count of films

[6] Find 10 most expensive films by replacement cost
Expected: title, replacement_cost

[7] Find films with length between 100 and 120 minutes
Expected: title, length

[8] Find films in categories: Action, Comedy, Horror
Expected: film_id, title, category_name

[9] Find actors whose first name starts with 'A'
Expected: actor_id, first_name, last_name

[10] Find films with NULL description
Expected: film_id, title


INTERMEDIATE LEVEL
===============================================

[11] List all rentals with customer names, rental dates, return dates
Expected: customer_id, first_name, last_name, rental_date, return_date

[12] Find all customers and number of rentals (include customers with 0 rentals)
Expected: customer_id, first_name, last_name, rental_count

[13] For each rental, show customer name, film title, rental date, staff who processed it
Expected: customer_name, film_title, rental_date, staff_name

[14] Find number of films in each category
Expected: category_name, film_count

[15] Find categories with more than 50 films
Expected: category_name, film_count

[16] Calculate total amount paid and average payment for each customer
Expected: customer_id, first_name, last_name, total_paid, avg_payment

[17] Which actor appeared in the most films?
Expected: actor_id, first_name, last_name, film_count

[18] List stores ranked by total revenue from payments
Expected: store_id, total_revenue

[19] Find all rentals made in 2005
Expected: rental_id, customer_id, rental_date

[20] Classify films as Budget (<$3), Standard ($3-$5), Premium (>$5)
Expected: film_id, title, rental_rate, price_category

[21] Show customer full names in uppercase
Expected: customer_id, full_name_upper

[22] Find pairs of actors who appeared in same film together
Expected: actor1_id, actor1_name, actor2_id, actor2_name, film_id

[23] Find all unique cities where customers are located
Expected: city, country

[24] Find films that cost more to replace than average replacement cost
Expected: film_id, title, replacement_cost, avg_replacement_cost

[25] Find customers who rented films from Animation category
Expected: customer_id, first_name, last_name


ADVANCED LEVEL
===============================================

[26] For each customer, find their largest single payment amount
Expected: customer_id, first_name, last_name, max_payment

[27] Find all films that have been rented at least once
Expected: film_id, title, rental_count

[28] Rank customers by total spending within their store
Expected: customer_id, first_name, store_id, total_spent, rank

[29] Top 3 most rented films with RANK and DENSE_RANK
Expected: film_id, title, rental_count, rank, dense_rank

[30] For each customer rental, show previous and next rental dates
Expected: customer_id, rental_id, rental_date, prev_rental, next_rental

[31] Show running total of payments by customer, ordered by payment date
Expected: customer_id, payment_date, amount, running_total

[32] Rank films by rental rate within each category
Expected: category_name, film_id, title, rental_rate, rank_in_category

[33] Find customers who spent more than average and show how much more
Expected: customer_id, first_name, last_name, total_spent, amount_above_avg

[34] Build staff hierarchy with managers
Expected: staff_id, staff_name, manager_id, manager_name, level

[35] Find categories above average rental rate and by how much
Expected: category_name, category_avg_rate, overall_avg_rate, difference

[36] For each actor, find most frequently rented film and rental count
Expected: actor_id, actor_name, film_id, film_title, rental_count

[37] Find customers whose average rental amount is above overall average
Expected: customer_id, first_name, last_name, avg_rental_amount

[38] List all people in database: customers, actors, staff combined
Expected: person_type, first_name, last_name

[39] Find actors NOT in any G-rated films
Expected: actor_id, first_name, last_name

[40] Find customers who are also staff members
Expected: person_id, first_name, last_name

[41] Divide films into 4 quartiles based on replacement cost
Expected: film_id, title, replacement_cost, quartile

[42] For each customer: total payments, payment count, avg (>$5 only)
Expected: customer_id, first_name, total_payments, payment_count, avg_large_payments

[43] Find days between each customer's consecutive rentals
Expected: customer_id, rental_date_1, rental_date_2, days_between

[44] For each film, rank it compared to films in same category
Expected: category_name, film_id, title, rental_count, rank_in_category

[45] Identify VIP Customers (top 10% by spending) with metrics
Expected: customer_id, first_name, last_name, total_spending, rental_count, avg_rental, favorite_category

[46] Summary of rentals by store and rating (G, PG, PG-13, R, NC-17)
Expected: store_id, G_count, PG_count, PG_13_count, R_count, NC_17_count

[47] Customers with 50+ films and $200+ spent, show efficiency score
Expected: customer_id, first_name, last_name, rental_count, total_spent, efficiency_score

[48] Monthly summary: rentals, revenue, avg rate, month-over-month change
Expected: month, year, total_rentals, total_revenue, avg_rental_rate, revenue_change

[49] Find rental duration outliers using standard deviation
Expected: rental_id, customer_id, film_id, actual_duration, avg_duration, std_dev, z_score

[50] Hierarchical summary: country, city, store, customers, revenue, avg spending
Expected: country, city, store_id, customer_count, total_revenue, avg_spending


CHALLENGE PROBLEMS
===============================================

[51] Find the "Perfect" Customer
Criteria:
- Rented from most categories
- Highest average payment per rental
- Never had late return
- Provide customer score

Expected: customer_id, first_name, last_name, customer_score

[52] Inventory Efficiency Analysis
For each inventory item calculate:
- Times rented
- Revenue generated
- Days between rentals (avg)
- Cost per rental
- Identify items to remove

Expected: inventory_id, film_id, times_rented, revenue, avg_days_between, cost_per_rental

[53] Staff Performance Dashboard
Rank staff by:
- Rentals processed
- Total revenue
- Customer satisfaction proxy
- Composite score

Expected: staff_id, staff_name, rentals_processed, total_revenue, satisfaction_score, composite_score

[54] Churn Risk Analysis
Find customers at risk:
- Days since last rental
- Rental frequency trend
- Spending trend
- Assign risk score (high/medium/low)

Expected: customer_id, first_name, last_name, days_since_rental, frequency_trend, spending_trend, churn_risk

[55] Revenue Optimization Query
Recommend films to stock more inventory:
- Rental frequency
- Revenue generated
- Current inventory
- Optimal inventory count

Expected: film_id, title, rental_frequency, revenue, current_inventory, optimal_inventory
