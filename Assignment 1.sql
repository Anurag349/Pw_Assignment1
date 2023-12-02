-- 1:- Identify the primary keys and foreign keys in maven movies db.Discuss the differences
-- Answer - Primary keys are : actor_id, actor_award_id, address_id, advisor_id, category_id, city_id, country_id, customer_id, film_id, inventory_id, investor_id, language_id, payment_id, rental_id, staff_id, store_id.
--          Foreign keys are : actor -id, actor_award_id, address_id, etc.
--          A primary key is a column (or set of columns) in a table that uniquely identifies each row in the table. It cannot contain null values and must be unique across all rows in the table. Only one primary key is allowed in a table.
--          A foreign key is a column (or set of columns) in a table that refers to the primary key in another table. It is used to establish a link between the two tables and is used to enforce referential integrity in the database. 
			
   use mavenmovies; 
   
-- 2:- List all details of actors.
select *from actor;

-- 3:- List all customer information from DB
select * from customer;

-- 4:- List differnt countries.
select * from country;

-- 5:- Display all active customers
select * from customer where active = 1;

-- 6:- List of all rental IDs for customer with ID 
select * from rental where customer_id = 1;

-- 7:- Display all the films whose rental duration is greater than 5 
select * from film where rental_duration > 5;

-- 8:- List the total number of films whose replacemnt cost is greater than $15 and less than $20.
select * from film where replacement_cost between 15 and 20;

-- 9:- Display the count of unique first name of actors.
select count(distinct first_name) from actor;

-- 10:- Display the first ten record from the customer table.
select * from customer limit 10;

-- 11:- Display the first 3 records from the customer table whose first name starts with ‘b.
select * from customer  where first_name like "b%" limit 3; 

-- 12:- Display the names of the first 5 movies which are rated as ‘G’.
select * from film where rating = "G" limit 5;

-- 13:- Find all customers whose first name starts with "a".
select * from customer where first_name like "a%";

-- 14:- Find all customers whose first name ends with "a".
select * from customer where first_name like "%a";

-- 15:- Display the list of first 4 cities which start and end with ‘a’.
select * from city where city like "a%a" limit 4;

-- 16:- Find all customers whose first name have "NI" in any position.
select * from customer where first_name like "%IN%" ;

-- 17:- Find all customers whose first name have "r" in the second position.
select * from customer where first_name like "_r%";

-- 18:- Find all customers whose first name starts with "a" and are at least 5 characters in length.
select * from customer where first_name like "a____%";

-- 19:- Find all customers whose first name starts with "a" and ends with "o".
select * from customer where first_name like "a%O";

-- 20:- Get the films with pg and pg-13 rating using IN operator. 
select * from film where rating in ('PG' , 'PG-13');

-- 21:- Get the films with length between 50 to 100 using between operator.
select * from film where length between 50 and 100;

-- 22:- Get the top 50 actors using limit operator.
select * from actor limit 50;

-- 23:- Get the distinct film ids from inventory table.
select distinct film_id from inventory;

