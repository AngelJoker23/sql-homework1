--1. How many actors are there with last name 'Wahlberg'?
select first_name, last_name
from actor 
where last_name = 'Wahlberg'

--2. How many payments were made between $3.99 and $5.99?
select customer_id, amount
from payment 
where amount between 3.99 and 5.99

--3. What film does the store have the most of? (search in inventory)
select count(inventory_id) 
from inventory
group by film_id, store_id;

--4. How many customers have the last name 'William'?
select last_name, first_name, customer_id
from customer 
where last_name = 'William'

--5. What store employee (get the id) sold the most rentals?
select max(rental_id) 
from rental
group by staff_id 

--6. How many different district names are there?
select district, address
from address

--7. What film has the most actors in it? (use film_actor table to get film_id)
select film_id
from film_actor

--8. From stor_id 1, how many customers have a last name ending with 'es'? (use customer table)
select store_id, first_name, last_name
from customer 
where last_name like '__%es'


--9. How many payment amounts (4.99,5.99,ect.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having >250)
select amount, count(customer_id), rental_id
from payment 
where amount between 380 and 430
group by customer_id, amount, rental_id
having count(customer_id) > 250

--10. Within the film table, how many rating categories are there? And what rating has the most movies total?
select rating, title
from film
group by title, rating   
order by rating desc;





