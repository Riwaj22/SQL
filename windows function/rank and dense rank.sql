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

-- Rank
-- It within partitions with gaps and same ranking for tied values	

select customer_id, customer_name, state, 
	rank() 
	over(
		partition by state
	)as rank_n
from customer_order	

-- Dense Rank
Ranking within position, with gaps and same ranking for tied values	
	select customer_id, customer_name, state, 
	dense_rank() 
	over(
		partition by state
	)as dense_rank_number
from customer_order	
	
	
	
	
	