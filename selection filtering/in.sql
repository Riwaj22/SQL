-- in condition

-- multiple or conditions in select, insert, update or delete

-- select column name
-- from table name
-- where column name in v1,v2

select *
from customers
where city = 'Phildelphia' or city = 'Seattle'

select * 
from customers 
where city in ('Phildelphia','Seattle')