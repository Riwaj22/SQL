-- -- count function returns count of expression

-- select column_name1, count(column_name2)
-- from table name


-- count all rows
select count(*) as total_sales from sales

select * from sales

select count(order_id) as  "No of products ordered" ,
count(distinct order_id) as "Number of orders"
from sales
where customer_id = 'CG-12520';
  


