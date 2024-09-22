select * from customer 

select customer_id,
case 
when (customer_id <=100) then 'Premium'
when (customer_id between 100 and 200) then 'Puls'
else 'Normal'
end
FROM customer 

SELECT * FROM film
------------------------------------------------------------
SELECT
CASE rental_rate
WHEN 0.99 then 1
else 0
end
from film
------------------------------------------------------------
select
sum(case rental_rate
   when 0.99 then 1
   else 0
   end)
   as number_of_bargains
   from film
   
select
sum(case rental_rate
   when 2.99 then 1
   else 0
   end)
   as regular
   from film

select
sum(case rental_rate
   when 0.99 then 1
   else 0
   end)
   as number_of_bargains
   sum(case rental_rate
   when 2.99 then 1
   else 0
   end)
   as number_of_bargains
   from film
---------------------------------------------------------
-- VIEW

SELECT * FROM address
select * from customer

select first_name, last_name, address from customer
inner join address
on customer.customer_id=address.address_id;


create view customer_info as
select first_name,last_name, address from customer 
inner join address
on customer.address_id= address.address_id



create or replace view customer_info as
select first_name,last_name, address, district from customer 
inner join address
on customer.address_id= address.address_id

SELECT * FROM customer_info


ALTER VIEW customer_info RENAME TO c_info
SELECT * FROM c_info



DROP VIEW c_info

--------------------------------------------------------------------------------------------------------------------







