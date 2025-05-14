select database();
use sakila;
show tables;

-- (1) i need to get all details from the actor table where actor id is 3 or 5 or 7 . 
select * from actor where actor_id=3 or actor_id=5 or actor_id=7;

-- (2) i need to get where actor id is in the range from 7 to 3 . 
select * from actor where actor_id<7 and actor_id>3;

-- (3) i need to get those first name where the actor id do not belong to 3 to 100 . 
select * from actor where actor_id not between 3 and 100;

-- (4) get me the first name of those user where second charcter is E and last is R .
select * from actor where first_name like '_E%R';

-- (5) get the first name where NN can be presnt at any place.
select * from actor where first_name  like '%NN%';

-- (6)  get the first name and last name when where the minimum charcter of data should be 2 and last third charcter should be S in the last column name.
select * from actor where last_name like '%S__'; 

-- (7) get the first name where the first name should have 5 charcter. 
select * from actor where first_name like '_____';

-- (8) get me data in which second charcter is A , last charcter is H and T in between.
  select * from actor where first_name like '_A%T%H__';