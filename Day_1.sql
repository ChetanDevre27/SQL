select * from film

select * from actor
select all from actor

--Ahmed nagar has which 
select * from city
select * from city where city= 'Aden'

select count(category_id) from film_category 

--Select maximum amount in payment table
select max(amount) from payment

/* hello Multi line comment
aasd */

-- select f name and L name 
select first_name, last_name from actor

--
select first_name, last_name from actor
where first_name=' Gina' and last_name='Degeneres';


select * from film_category
where category_id=6;


select * from address
where district= 'QLD' AND city_id = '576' AND phone= '6172235589'



select * from payment
select count(payment_id) from payment
select  max(payment_id) from payment
select min(payment_id) from payment
select avg(payment_id)


--select column and multiple column from the table
select staff_id from payment

--- multiple cols
select * from customer
select first_name,last_name,email from customer

-- select distinct col_name from table-name
--- DISTINCT is used for the not repeatable values in the col  
select distinct store_id from customer
select distinct customer_id from customer 

select * from film
select distinct release_year from film;
select distinct rental_duration from film

-- select all types of rating in the col 
select DISTINCT rating from film

-------------------------------------------------------------------------
--			COUNT 
-- Syntax: SELECT COUNT(name) FROM table // same op
-- Syntax: SELECT COUNT(choise) FROM table // same op
-- Syntax: SELECT COUNT(*) FROM table // same op

SELECT COUNT( DISTINCT( rating)) from film;

-----------------------------------------------------------
select * from payment

select count(*) from payment    --- its all no of rows in col

--- count amount in payment 
select count(amount ) from payment
select amount from payment
select distinct amount from payment
select count(distinct amount) from payment
select count(distinct (amount)) from payment

---------------------------------------------------------------
-- where is a condition 
-- syntax:  SELECT FROM col1,col2
--			FROM table
--			WHERE Condition

--comparison operator
-- 									= equal
-- 									> Greater than
-- 									< less than
-- 									>=greater than qual to
-- 									<= less than equal
-- 									!= not equal to


--Q who over the  44 
select * from actor
select first_name from actor

select first_name, actor_id
from actor
where first_name='Nick' AND actor_id=2;

----
select * from customer 
where first_name='Jared';
--
select * from film
where rental_rate>4;

-- date 29Aug 2023
-- we are running a promotion to reward our tp 5 cutomer  cupons 
select * from payment
select customer_id from payment 
group by customer_id
order by sum(amount) desc
limit 5
--     			 HAVING 

select customer_id, SUM(amount)
From payment
where customer_id NOT IN (184,87,477)
group by customer_id

select customer_id, SUM(amount)
From payment
group by customer_id
having sum(amount)>100


select * from customer
select store_id, Count(customer_id) from customer
group by store_id

select store_id, Count(*) from customer
group by store_id
having count(*)>100

select store_id, Count(customer_id) from customer
group by store_id
having count(customer_id)>300

-- CHallenge
select * from payment

select customer_id from payment
group by customer_id
having count(*)>=40

select customer_id from payment
where staff_id=2
group by customer_id
having sum(amount)>100

------- Assignment 
select customer_id from payment
where staff_id=2
group by customer_id
having sum(amount)>110

--- 2.
select count(*) from film
where title ilike 'j%'

----3
select * from customer

select first_name, last_name from customer
where first_name ilike 'E%' and address_id<500
order by customer_id desc
limit 2


-- 31 Aug 2023
--				AS --
select amount as rental_price
from payment

select count(amount) as num_transaction
from payment

select customer_id, sum(amount)
from payment 
group by customer_id

select customer_id, sum(amount) as total_spent
from payment
group by customer_id

select customer_id, sum(amount)
from payment
group by customer_id
having sum(amount)>100


select customer_id, sum(amount) as total_spent
from payment
group by customer_id
having sum(amount)>100

select customer_id, sum(amount) as total_spent
from payment
group by customer_id
having total_spent >100

select customer_id, amount as new_name
from payment
where amount >2


select customer_id, amount as new_name
from payment
where new_name >2


---- 								JOIN method
--- INNER JOIN
-- syntax: 

select * from payment

select * from payment
Inner join customer
on payment.customer_id = customer.customer_id


select payment.payment_id,payment.customer_id,customer from payment
inner join customer
on payment.customer_id= customer.customer_id


----   FULL OUTER JOIN 
select * from customer
full outer join payment
on customer.customer_id= payment.customer_id
where customer.customer_id IS null
or payment.customer_id is null

--- LEFT OUTER JOIN 
-- it is only tone take data from left table 

select film.film_id, title, inventory_id, store_id from film
left join inventory
on inventory.film_id = film.film_id


