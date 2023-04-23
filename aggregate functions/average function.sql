-- average 
-- returns the average value of an expression

-- select avg()
-- from table

select avg(age) as "Average age"
from customer

select avg(sales * .10) as "Average commission value"
from sales