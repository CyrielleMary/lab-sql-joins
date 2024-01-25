USE sakila;

-- List the number of films per category.
SELECT category_id, COUNT(film_id)
FROM film_category
GROUP BY category_id;

-- Retrieve the store ID, city, and country for each store.
SELECT s.store_id, c.city, co.country
FROM sakila.store s
JOIN sakila.address a
ON s.address_id = a.address_id
JOIN sakila.city c
ON a.city_id=c.city_id
JOIN sakila.country co
ON co.country_id=c.country_id;


-- Calculate the total revenue generated by each store in dollars.
SELECT * FROM payment;
SELECT s.store_id, SUM(p.amount) as revenue
FROM sakila.store s
JOIN sakila.staff st
ON s.store_id=st.store_id
JOIN sakila.payment p
ON st.staff_id=p.staff_id
GROUP BY s.store_id;

-- Determine the average running time of films for each category.


-- BONUS
-- Identify the film categories with the longest average running time.
-- Display the top 10 most frequently rented movies in descending order.
-- Provide a list of all distinct film titles, along with their availability status in the inventory. 
	-- Include a column indicating whether each title is 'Available' or 'NOT available.' 
    -- Note that there are 42 titles that are not in the inventory, and this information can be obtained using a CASE statement combined with IFNULL."