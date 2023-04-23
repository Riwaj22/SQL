-- min max function returns the min/max values

select min(sales) as Min_sales_June15
from sales 
where order_date between '2015-06-01'and '2015-06-30'

select max(sales) as Max_sales_June15
from sales 
where order_date between '2015-06-01'and '2015-06-30'