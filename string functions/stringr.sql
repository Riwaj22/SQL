-- String functions

-- 1. Length
select customer_name, length(customer_name) as characters 
from customer
where age> 30

-- 2.upper lower

select upper('Nepal')
select lower('Nepal')

-- 3. replace

select 
customer_name,
country, 
replace(country,'United States','US')
as
country_new
from customer

-- 4. TRIM

select trim (leading '' from ' Nepal ')

select trim (trailing '' from ' Nepal ')

select trim(both '' from ' Nepal ')
select rtrim(' Nepal ')

-- 5.Concatenation

select 
customer_name,
city||','||state||','||country as
address 
from customer

-- 6.substring

select customer_id,
customer_name,
substring(customer_id for 2)as cust_group
from customer
where substring(customer_id for 2) = 'AB'


select customer_id,
customer_name ,
substring(customer_id from 4 for 5) as cust_number
from customer 
where substring(customer_id for 2) = 'AB'

-- 7.string aggregator

-- string_agg(expression,delimiter)

select 
order_id,
string_agg(product_id,',')
from sales 
group by order_id
order by order_id