-- converting to string

-- to_char function converts a number or date to string
select * from sales

-- similar to .format in python
-- Number to string conversion
select sales,
'Total sales value for this order is '||to_char(sales,'L9,999.99')as message
from sales

-- date to string
select order_date,
to_char(order_date,'Month Day YY')
from sales

-- to_date function converts a string to a date
select to_date('2019/01/01','YYYY/MM/DD')

-- to_number function converts string to number\
select to_number('1210.72','9999.99')
select to_number('$1210.72','L9999.99')