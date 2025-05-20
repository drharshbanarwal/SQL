-- string functions // on 1. Numbers and 2 Date.

-- dual Table :
select 9*1547 from dual; 

-- Now() = Return current date and time:

-- SYSDATE () = return thr current dateand time 
select sysdate()from dual;

--  CURDATE() = PRINT CURRENT DATE
select curdate() from dual;

-- CURTIME () = return current time 

select curtime() from dual; 

-- CURRENT_TIMESTAMP () = return current date and time;

select current_timestamp() from dual; 

-- SYSDATE () , CURRENT_TIMESTAMP () AND NOW () = there output will be same .

-- adding TWO days in myn current date ;

Select now(),ADDDATE(now(),2) from dual;  

-- adding two months :

select now(), adddate(now(), interval 2 month) from dual ; 

-- adding two years 

select now(), adddate(now(), interval 2 year) from dual ;  

-- adding two weeks ;

select now(), adddate(now(), interval 2 week) from dual ;  

-- DATEDIFF =return the difference between dates and years

select datediff(now(), '2025-06-03 11:41:33') from dual;
select datediff('2025-05-16 17:19:29', '2025-06-03 11:41:33') from dual;

-- LAST_DAY = extract the last day of the month for the given date ;

select last_day(now()) from dual; 

-- MONTH AND YEAR : (RETURN the month and year part of the date )

select month (now() ), year(now() ) from dual; 

-- EXTRACT = extract month or year from a given data base;

select extract(year from now()) from dual;

select extract(microsecond from now()) from dual;
select extract(minute from now()) from dual;

-- DATE_FORMAT () = format a date :
-- %Y is access modifier   
select now(),date_format(now(), 'This year is % Y')from dual; 

-- NUMBERS = ROUND() AND TRUNCATE ()  

-- ROUND() = round the numbers to 2 decimal places :

select 24.325, round(24.325) from dual;
select 24.625, round(24.625) from dual;
select 24.325, round(24.325),round(24.685,1) from dual;

SELECT round(24.32,-1) FROM DUAL;

select extract(second from now()) from dual;
 
 -- TRUNCATE () = extract the value based on the position 
 
 select round(24.32,1),truncate(24.32,1 ) from dual;
 
 select MOD(11,2), pow(2,3), floor(10.99999),ceil(9.0001) from dual;
 
 use sakila;
 select * from actor;
 select first_name,actor_id*10 from actor where first_name='NICK'
 --  if (condition , true ,false)
select first_name, actor_id, if(first_name="NICK",true,false) from actor;

select first_name, actor_id, if(first_name="NICK",actor_id*10,false) from actor;

select first_name, actor_id, if(first_name="NICK",actor_id*10,"No Value") from actor;

--  NASTED IF = if(condition, true),if(condition,true ,false)

select first_name,actor_id,if(first_name="NICK","YES",if("ED","hello","NO") ) from actor;


select * from actor;
select actor_id,first_name,
case
    when mod(actor_id,2)=0 then "YES"
    when actor_id=5 then "------"
    else "NO"
end
from actor;