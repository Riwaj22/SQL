-- group by
-- used to select statement to group the results by one or more columns

-- select column name1
-- from table name
-- group by column name

select region, count(customer_id) as customer_count
from customer
group by region

select product_id, sum(quantity) as quantity_sold
from sales
group by product_id
order by quantity_sold

select customer_id,
min(sales) as min_sales,
max(sales) as max_sales,
avg(sales) as avg_sales,
sum(sales) as total_sales
from sales
group by customer_id
order by total_sales desc
limit 5

