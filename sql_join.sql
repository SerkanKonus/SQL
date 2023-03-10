-- INNER JOIN
-- Example 1
SELECT city, country FROM city 
INNER JOIN country ON city.country_id = country.country_id;

-- Example 2
SELECT payment_id, first_name, last_name FROM payment
INNER JOIN customer ON customer.customer_id = payment.customer_id;

-- Example 3
SELECT rental.rental_id, customer.first_name, customer.last_name FROM rental
INNER JOIN customer ON customer.customer_id = rental.customer_id;

-- LEFT JOIN | RIGHT JOIN | FULL JOIN
-- Example 1
SELECT city, country FROM city
LEFT JOIN country ON city.country_id = country.country_id;

-- Example 2
SELECT payment_id, first_name, last_name FROM payment
RIGHT JOIN customer ON customer.customer_id = payment.customer_id;

-- Example 3
SELECT rental_id, first_name, last_name FROM rental
FULL JOIN customer ON customer.customer_id=rental.customer_id;

-- UNION | INTERSECT | EXCEPT
-- Example 1
(SELECT first_name FROM actor ORDER BY first_name)
UNION
(SELECT first_name FROM customer ORDER BY first_name);

-- Example 2
(SELECT first_name FROM actor ORDER BY first_name)
INTERSECT
(SELECT first_name FROM customer ORDER BY first_name);

-- Example 3
(SELECT first_name FROM actor ORDER BY first_name)
EXCEPT
(SELECT first_name FROM customer ORDER BY first_name);

-- Example 4
(SELECT first_name FROM actor ORDER BY first_name)
UNION ALL
(SELECT first_name FROM customer ORDER BY first_name);

-- Example 5
(SELECT first_name FROM actor ORDER BY first_name)
INTERSECT ALL
(SELECT first_name FROM customer ORDER BY first_name);

-- Example 6
(SELECT first_name FROM actor ORDER BY first_name)
EXCEPT ALL
(SELECT first_name FROM customer ORDER BY first_name);
