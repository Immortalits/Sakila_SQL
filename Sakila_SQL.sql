-- 1.feladat
    SELECT first_name, last_name FROM actor;

-- 2.feladat
    -- a)
    SELECT UPPER(CONCAT(first_name,' ',last_name)) AS "Actor Name" FROM actor;
    -- b)   
    SELECT actor_id, first_name, last_name FROM actor WHERE first_name = "Joe";
    -- c)
    SELECT actor_id, first_name, last_name FROM actor WHERE last_name LIKE "%gen%";
    -- d)
    SELECT actor_id, first_name, last_name FROM actor WHERE last_name LIKE "%li%" ORDER BY last_name ASC, first_name ASC;

-- 3.feladat
    SELECT COUNT(DISTINCT last_name) AS "Number of unique last names" FROM actor;

-- 4.feladat
    SELECT last_name FROM actor GROUP BY last_name HAVING COUNT(last_name) > 1;
    -- A "HAVING"-et azért használtuk, mert a GROUP BY után csak ezzel lehet feltétel alapján keresni

-- 5.feladat
    SELECT country_id, country FROM country WHERE country = "Afghanistan" OR country = "China" OR country = "Israel";

-- 6.feladat
    SELECT AVG(length) AS "Average length" FROM film;

-- 7.feladat
    SELECT staff.first_name, staff.last_name,address FROM staff,store,address WHERE staff.store_id = store.store_id AND store.address_id = address.address_id;
-- 8.feladat
    SELECT first_name, last_name, SUM(payment.amount) AS "Total amount" FROM customer, payment WHERE customer.customer_id = payment.customer_id GROUP BY customer.customer_id LIMIT 10;

-- 9.feladat
    TODO!!!!