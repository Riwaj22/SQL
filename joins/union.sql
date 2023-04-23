-- union
-- combine result of 2 or more select statements and remove duplicate

select customer_id 
from sales_2015 
union 
select customer_id
from customer_20_60
order by customer_id

