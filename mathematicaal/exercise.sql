select customer_name
from customer
order by random()
limit 5


select 
sum(round(sales)) as rounded
from sales

select
sum(floor(sales)) as floored_revenue
from sales

select
sum(ceil(sales)) as ceiled_revenue
from sales

