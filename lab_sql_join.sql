#List the number of films per category.
SELECT D.name,  count(C.film_id) as num_films
FROM category AS D
JOIN film_category AS C
ON D.category_id = C.category_id
group by D.name;

#Display the first and the last names, as well as the address, of each staff member.
SELECT D.first_name, D.last_name, C.address
FROM staff AS D
JOIN address AS C
ON D.address_id = C.address_id;

#Display the total amount rung up by each staff member in August 2005.
select * from payment;
SELECT D.first_name, D.last_name, sum(C.amount) as total_am
FROM staff AS D
JOIN payment AS C
ON D.staff_id = C.staff_id
where c.payment_date between "2005-08-01" and "2005-08-31"
group by D.first_name, D.last_name;

#List all films and the number of actors who are listed for each film.
SELECT D.title,  count(C.actor_id)
FROM film_text AS D
left JOIN film_actor AS C
ON D.film_id = C.film_id
group by D.title;

#Using the payment and the customer tables as well as the JOIN command, list the total amount paid by each customer. List the customers alphabetically by their last names.
SELECT D.first_name, D.last_name,sum(C.amount)
FROM customer AS D
left JOIN payment AS C
ON D.customer_id = C.customer_id
group by D.first_name, D.last_name
order by D.last_name asc;