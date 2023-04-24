-- -- view it is a virtual table created by a
-- -- query joining one or more tables

-- create view as view_name
-- select columns 
-- from tables
-- where condition

create view logistics
as
select a.order_line,
a.order_id,
b.customer_name,
b.city,
b.state,
b.country
from sales as a 
left join customer as b
on a.customer_id = b.customer_id

select * from logistics

-- update view
update logistics
set Country = US
where Country = 'United states'

drop view logistics