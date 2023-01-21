-- Subqueries
-- Example 1
SELECT count(*) FROM film
WHERE length > 
(
    SELECT AVG(length) FROM film
    );

-- Example 2
SELECT count(*) FROM film
WHERE rental_rate = 
(
    SELECT MAX(rental_rate) FROM film
    );

-- Example 3
SELECT * FROM film
WHERE rental_rate = 
(
    SELECT MIN(rental_rate) FROM film
    ) 
AND 
replacement_cost = 
(
    SELECT MIN(replacement_cost) FROM film
    );

-- Example 4
SELECT customer.first_name, customer.last_name FROM payment
INNER JOIN customer ON payment.customer_id = customer.customer_id
WHERE payment.amount =
(
    SELECT MAX(amount) FROM payment
);

-- Aynı tablodan id bazında olsaydı diye bir deneme
-- SELECT DISTINCT(SELECT customer_id FROM payment GROUP BY customer_id ORDER BY COUNT(customer_id) DESC) FROM payment;
