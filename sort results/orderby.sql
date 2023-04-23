-- order by
-- used to sort result 
-- used in seect statement

-- select column name
-- from table name
-- where condition
-- order by column name [asc,desc]

select * from customer

select * from customer
where state = 'California' order by customer_name

select * from customer
where state = 'California' order by customer_name asc

-- descending order
select * from customer
where state = 'California' order by customer_name desc

select * from customer 
order by city asc, customer_name desc


-- 2 being the column name
select * from customer
order by 2 desc

select * from customer
where age>30
order by customer_name, city

select * from customer
order by age 
