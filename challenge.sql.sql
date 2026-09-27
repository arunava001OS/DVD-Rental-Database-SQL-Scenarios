-- [51] Find the "Perfect" Customer
-- Criteria:
-- - Rented from most categories
-- - Highest average payment per rental
-- - Never had late return
-- - Provide customer score
 
-- Expected: customer_id, first_name, last_name, customer_score
 
-- [52] Inventory Efficiency Analysis
-- For each inventory item calculate:
-- - Times rented
-- - Revenue generated
-- - Days between rentals (avg)
-- - Cost per rental
-- - Identify items to remove
 
-- Expected: inventory_id, film_id, times_rented, revenue, avg_days_between, cost_per_rental
 
-- [53] Staff Performance Dashboard
-- Rank staff by:
-- - Rentals processed
-- - Total revenue
-- - Customer satisfaction proxy
-- - Composite score
 
-- Expected: staff_id, staff_name, rentals_processed, total_revenue, satisfaction_score, composite_score
 
-- [54] Churn Risk Analysis
-- Find customers at risk:
-- - Days since last rental
-- - Rental frequency trend
-- - Spending trend
-- - Assign risk score (high/medium/low)
 
-- Expected: customer_id, first_name, last_name, days_since_rental, frequency_trend, spending_trend, churn_risk
 
-- [55] Revenue Optimization Query
-- Recommend films to stock more inventory:
-- - Rental frequency
-- - Revenue generated
-- - Current inventory
-- - Optimal inventory count
 
-- Expected: film_id, title, rental_frequency, revenue, current_inventory, optimal_inventory