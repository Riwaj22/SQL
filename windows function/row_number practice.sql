-- implementing row number

select * from customer
limit 10

select * from sales

select * from product

-- combine tables

select a.*,b.sales_tot,b.quantity_total,b.profit_total
from customer as a
 left join (select customer_id, 
		   count(distinct order_id) as order_num,
		   sum(sales) as sales_tot,
		   sum(quantity)as quantity_total,
		   sum(profit)as profit_total
		   from sales 
		   group by customer_id
		  )as b
on a.customer_id = b.customer_id	

create table customer_orders
as
(
	select a.*,b.sales_tot,b.quantity_total,b.profit_total
from customer as a
 left join (select customer_id, 
		   count(distinct order_id) as order_num,
		   sum(sales) as sales_tot,
		   sum(quantity)as quantity_total,
		   sum(profit)as profit_total
		   from sales 
		   group by customer_id
		  )as b
on a.customer_id = b.customer_id

select * from customer_order limit 10
	
select customer_id, customer_name, state, 
	row_number() 
	over(
		partition by state
	)as row_n
from customer_order
	
	
	