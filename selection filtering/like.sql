-- -- -- like condition
-- -- like condition allows to perform pattern matching

-- select column name 
-- from table name 
-- where column name like pattern

-- wild card:
-- % allows you to match any string of any length
-- _ allows you to match on a single character

select * from customers 
where customer_name like 'J%'

select * from customers 
where customer_name like '%Nelson%'

select * from customers
where customer_name like '____ %'

select distinct city from customers 
where city not like 'S%'

select * from customers 
where customer_name like 'G\%'
