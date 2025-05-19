use sakila;
select * from actor where first_name not like '%A%';

-- distinct function and count function 

select distinct(first_name) from actor;

select count(first_name) from actor ;

-- distinct count function

-- functions  
-- code reusable
-- string function
-- function type (1) scaler function (2) multi-row function
-- (1) scaler function = apply=> result for each row

select first_name,lower(first_name) from actor;

  select first_name,lower(first_name),upper(lower(first_name)) from actor;  
  
  select first_name,lower(first_name),upper(lower(first_name)),length(first_name) from actor;  
  
  -- (a) sub string function
  -- substr (column_name , index , total_charcter ) 
  select first_name,substr(first_name,2) from actor;
  
select first_name,substr(first_name,3),substr(first_name,2,3) from actor;

select first_name,substr(first_name,3),substr(first_name,2,3),substr(first_name,-3) from actor;

-- INSTR FUNCTON 
select first_name,instr(first_name,'I') from actor;

--  CONCAT FUNCTION (to add data )

select first_name,last_name,concat(first_name,'-',last_name) from actor;

-- CONCAT_WS (data seperater)( WS=[WITH SEPERATER] 
select first_name,last_name,concat_ws('-',first_name,last_name,'$') from actor;

-- trim()  => use to remove widespase(remove widespace from start and from the last)

select first_name,trim('                hey     ') from actor; 

-- lpad() or rpad() [l=left , r= right] [to add extra charcter if required]

select first_name,rpad(first_name,6,'#') from actor;


select first_name,lpad(first_name,3,'#') from actor;

  

  
