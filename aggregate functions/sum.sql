-- -- sum function returns the summed value of an expression

-- syntax:
-- select sum()
-- from tables
-- where conditions

select sum(Profit) as "Total Profit"
from sales

select sum(quantity) as "Total Quantity"
from sales where product_id = 'FUR-TA-10000577'