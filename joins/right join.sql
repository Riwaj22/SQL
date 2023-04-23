
-- right join

select 
a.order_line,
a.product_id,
a.customer_id,
a.sales,
b.customer_name,
b.age
from sales_2015 as a
right join customer_20_60 as b
on a.customer_id = b.customer_id
order by customer_id


select customer_id from sales_2015 order by customer_id
select customer_id from customer_20_60 order by customer_id