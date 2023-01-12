## HomeWork 1
# Example 1 
SELECT title, description FROM film;

# Example 2
SELECT * FROM film WHERE length > 60 AND length < 75;

# Example 3
SELECT * FROM film WHERE rental_rate = 0.99 AND replacement_cost = 12.99 OR replacement_cost = 28.99;

# Example 4
SELECT last_name FROM customer WHERE first_name = 'Mary';

# Example 5
SELECT * FROM film WHERE NOT length > 50 AND NOT(rental_rate = 2.99 OR rental_rate = 4.99);
