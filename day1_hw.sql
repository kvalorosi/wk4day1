-- 1. How many actors are there with the last name ‘Wahlberg’?
SELECT * FROM actor

SELECT last_name
FROM actor;

SELECT last_name
FROM actor
WHERE last_name = 'Wahlberg';

Answer = 2


-- 2. How many payments were made between $3.99 and $5.99?
SELECT * FROM film;
--just tinkering around with this, I wanted to see what the rental rate was


SELECT *  FROM payment;

SELECT payment_id, amount 
FROM payment;

SELECT amount 
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

Answer = No data(none)

-- 3. What film does the store have the most of? (search in inventory)
SELECT * FROM inventory;

SELECT film_id, COUNT(inventory_id)
FROM inventory
WHERE inventory_id >= 8
GROUP BY film_id
ORDER BY COUNT(inventory_id) DESC;

--Not sure if I did this one right, it appears the largest quanity of any one film is 8
--There are several films with an inventory of 8....
--Also I used a similar tactic to this one as I did with question #7.


-- 4. How many customers have the last name ‘William’?

SELECT * FROM customer;

SELECT last_name
FROM customer;


SELECT last_name
FROM customer
WHERE last_name = 'William';

SELECT last_name
FROM customer
WHERE last_name = 'Williams';


Answer - 0 customers with the last name William, but 1 customer with the last name Williams.

-- 5. What store employee (get the id) sold the most rentals?

SELECT * FROM staff;

SELECT * FROM rental;

SELECT staff_id
FROM rental;

SELECT COUNT(staff_id)
FROM rental
WHERE staff_id = 1 or staff_id = 2
GROUP BY staff_id; 


Answer - Mike had 8040 sales while Jon had 8004

-- 6. How many different district names are there?

SELECT * FROM address;

SELECT district
FROM address;

SELECT district, COUNT(district)
FROM address
GROUP BY district;

Answer - 378 different district names
 
-- 7. What film has the most actors in it? (use film_actor table and get film_id)

SELECT * FROM film_actor;

SELECT film_id, COUNT(actor_id)
FROM film_actor
WHERE actor_id > 14 
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC;

Answer - Film_id 508 has the most actors in it at 15 actors
--This one took a lot of trial and error, I hope its right!

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT * FROM customer;

SELECT last_name
FROM customer
WHERE last_name like '%es';

Answer - 21 last names ending with 'es'

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
SELECT * FROM payment;

SELECT amount
FROM payment;

SELECT COUNT(amount), customer_id
FROM payment
WHERE amount = 4.99 or amount = 5.99 and customer_id BETWEEN 380 and 430
GROUP BY customer_id
HAVING customer_id > 250;

--First off I'm not sure I layed this out right,
--Second I don't know if these umbers exist with all the weird numbers in the database
--I had similar issues with question 2.. The answer ultimately is no data

-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
SELECT * FROM film;

SELECT rating
FROM film;

SELECT rating, COUNT(title)
FROM film
GROUP BY rating;

Answer - There are 5 different catagories for rating
and the rating with the most movies is PG-13



