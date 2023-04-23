select * from sales


select product_id,
sum(sales) as total_sales,
sum(quantity) as total_quantity,
count(order_id) as no_of_counts,
max(sales) as "Maximum sales value",
min(sales) as "Min sales value",
avg(sales) as "Average sales value"
from sales 
group by product_id

select product_id
from sales 
group by product_id
having (count(quantity)>10)