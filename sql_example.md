# HomeWork 1
## Example 1 
SELECT title, description FROM film;

## Example 2
SELECT * FROM film WHERE length > 60 AND length < 75;

## Example 3
SELECT * FROM film WHERE rental_rate = 0.99 AND replacement_cost = 12.99 OR replacement_cost = 28.99;

## Example 4
SELECT last_name FROM customer WHERE first_name = 'Mary';

## Example 5
SELECT * FROM film WHERE NOT length > 50 AND NOT(rental_rate = 2.99 OR rental_rate = 4.99);

# HomeWork 2
## Example 1 
SELECT * FROM film WHERE replacement_cost BETWEEN 12.99 AND 16.99;

## Example 2
SELECT first_name, last_name FROM actor WHERE first_name IN('Penelope', 'Nick', 'Ed');

## Example 3
SELECT * FROM film WHERE rental_rate IN(0.99, 2.99, 4.99) AND replacement_cost IN(12.99, 15.99, 28.99);

# HomeWork 3
## Example 1 
SELECT country FROM country WHERE country LIKE 'A%a';

## Example 2
SELECT country FROM country WHERE length(country) >= 6 AND country LIKE '%n';

## Example 3
SELECT title FROM film WHERE title ILIKE '%T%T%T%T%';

## Example 4
SELECT * FROM film WHERE title LIKE 'C%' AND length > 90 AND rental_rate = 2.99;
