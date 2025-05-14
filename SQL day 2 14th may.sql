select databases;

use sakila;

show tables;

select actor_id,last_name from actor;

select actor_id,actor_id*10,last_name from actor;

select * from actor;
select * from actor where actor_id=2;
select * from actor where actor_id=5;
select * from actor where first_name='ED';
select * from actor where first_name='ED' and actor_id>100;

select * from actor where actor_id between 11 and 26;

-- comment between operator, between loweer and higher use to define the range of values)

select actor_id,first_name from actor where actor_id=5;

select first_name from actor where actor_id=5;

select * from actor where actor_id between 2 and 5;

select * from actor where actor_id in (2,5);

-- IN operator is same as OR operator.

-- LIKE operator (which work on a pattern)

select * from actor where first_name like 'NICK';

-- like operator has % [zero or more charcters] is a wild card charcter.
-- _ "under score" [only one charcter]    

select * from actor where first_name like 'N%';

--  for last charcter [% should be in first place]
select * from actor where first_name like '%T'; 
-- to check the charcter in between  
select * from actor where first_name like 'S%T';

select * from actor where first_name like 'ED';

-- unde score _ [only once charcetr]
select * from actor where first_name like 'E_'; 

select * from actor where first_name like '__'; 

select * from actor where first_name like '_A%';

 


