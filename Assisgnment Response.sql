Q-1 Identify the primary keys and foreign keys in maven movies db. Discuss the differences
Ans-1 	select * from Table_name;
		describe Table_name;
		we can get the column which is marked or made as PRIMARY KEY / FOREIGN KEY.
        
        Difference - The PRIMARY KEY constraint uniquely identifies each record in a table. Primary keys must contain UNIQUE values, and cannot contain NULL values. A table can have only ONE primary key; and in the table, this primary key can consist of single or multiple columns (fields). Above we can see that in one table Customer_id is a primary key and in another table it is foreign Key.
Foreign Key - A FOREIGN KEY is a field (or collection of fields) in one table that refers to the PRIMARY KEY in another table. Same in one table actor_id is treated as primary Id and in another table is treated as foreign key.

Q2 - List all details of actors
Ans-2 	select * from actor;
     
Q3- List all customer information from DB.
Ans-3	select * from customer;

Q4 - List different countries.
Ans-4	select distinct country from country;

Q5 - Display all active customers.
Ans-5  select * from customer where active = 1;

Q6 - List of all rental IDs for customer with ID 1.
Ans-6 select * from rental where customer_id = 1;

Q7 - Display all the films whose rental duration is greater than 5 .
Ans-7   select film_id, title, rental_duration from film where rental_duration > 5;

Q8 - List the total number of films whose replacement cost is greater than $15 and less than $20.
Ans-8  select count(*) as total_film from film where replacement_cost between 15 and 20;

Q9 - Find the number of films whose rental rate is less than $1.
Ans-9 select count(film_id) as n_of_film from film where rental_rate <1;

Q10 - Display the count of unique first names of actors.
Ans-10 select count(distinct first_name) from actor;

Q11 - Display the first 10 records from the customer table .
Ans-11  select * from customer limit 10;

Q12- Display the first 3 records from the customer table whose first name starts with ‘b’.
Ans-12    select first_name from customer where first_name like 'b%' limit 3;
 
Q13   Display the names of the first 5 movies which are rated as ‘G’.
Ans13   select title, rating from film where rating = "G" limit 5;

Q14 Find all customers whose first name starts with "a".
Ans14  select first_name from customer where first_name like 'a%';

Q15 Find all customers whose first name ends with "a".
Ans15 select first_name from customer where first_name like '%a';

Q16 Display the list of first 4 cities which start and end with ‘a’ .
Ans16 select city from city where city like 'a%a';

Q17 Find all customers whose first name have "NI" in any position.
Ans 17 select first_name from customer where first_name like "%NI%";

Q18 Find all customers whose first name have "r" in the second position .
Ans-18 select first_name from customer where first_name like "_r%";

Q19Find all customers whose first name starts with "a" and are at least 5 characters in length.
Ans19 select first_name from customer where first_name like'a%' and length(first_name)>=5;

Q20 Find all customers whose first name starts with "a" and ends with "o".
Ans20  select first_name from customer where first_name like"a%o";

Q21 Get the films with pg and pg-13 rating using IN operator.
Ans21 select title, rating from film where rating in ("pg","pg-13");

Q22 Get the films with length between 50 to 100 using between operator.
Ans22 select title, length from film where length between 50 and 100.

Q23 Get the top 50 actors using limit operator.
Ans23 select * from actor order by actor_id desc limit 50;

Q24 Get the distinct film ids from inventory table. 
Ans24 select distinct film_id from inventory.