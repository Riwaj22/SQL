-- -- except
-- select expression1, 
-- from tables
-- where conditions 
-- except 
-- select 
-- from tables
-- where conditions

select customer_id
from sales_2015
except
select customer_id
from customer_20_60
order by customer_id