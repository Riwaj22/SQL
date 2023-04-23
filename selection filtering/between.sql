-- -- between 

-- -- between condition is used to retrieve values in a range select, insert, update or delete

-- select column name 
-- from table name 
-- where column name between value1 and value2

select * from customers
where age between 20 and 30

select * from customers
where age >= 20 and age <= 30

select * from customers 
where age not between 20 and 30

select * from sales 
where ship_date between '2015-04-01' and '2016-04-01'

