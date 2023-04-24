-- pattern matching

-- 1.like statement

-- % allow you to match any string of any length
-- - allows you to match on a single character

select * from 
customer
where customer_name like 'Jo%'

select * from 
customer
where customer_name like '%od%'

select customer_name 
from customer
where customer_name like 'Jas_n'

select customer_name 
from customer
where customer_name like 'J%'


