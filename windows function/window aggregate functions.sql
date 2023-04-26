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

-- average 
-- average value for rows within the window frame	
	
select * from customer_order	
	
select customer_id, customer_name, state , 	sales_tot as revenue,
avg(sales_tot)	
over(
	partition by state
	
)as avg_revenue
from customer_order	

	
select * from (select customer_id, customer_name, state , 	sales_tot as revenue,
avg(sales_tot)	
over(
	partition by state
	
)as avg_revenue
from customer_order)as a
	where a.revenue<avg_revenue
	
-- count	
-- count of values of rows within the window frame	
	
select customer_id, customer_name, state,
	count(customer_id)
over(
	partition by state
)as "count of customer"
from customer_order	
	
-- sum_total	
-- sum of values within a winfow frame	

select * from sales

create table  order_rollup
	as
select order_id, max(order_date)as order_date,
max(customer_id)as customer_id,
sum(sales)as sales
from sales
group by order_id
	
	
select * from order_rollup	
	
create table order_rollup_sate as 
select a.*,b.state
	from order_rollup as a
	left join customer b
	on a.customer_id = b.customer_id 
	
select * from order_rollup_sate	
	
select *, sum(sales)
over(
	partition by state
)as sales_state_total 
from order_rollup_sate	
	
-- Running total	
-- ordered by date
	
select *, sum(sales)
over(
	partition by state
)as sales_state_total ,
sum(sales)	
	over(
		partition by state 
		order by order_date
	)as "running total"
from order_rollup_sate
	
	
-- lag and lead	
	
select customer_id,
	order_date,
	order_id,
	sales,
	lag(sales,1) over(
		partition by customer_id
		order by order_date
	)as previous_sales,
	lag(order_id,1) over(
		partition by customer_id
		order by order_date
	)as previous_order_id
from order_rollup_sate
	
	
select customer_id,
	order_date,
	order_id,
	sales,
	lead(sales,1) over(
		partition by customer_id
		order by order_date
	)as previous_sales,
	lead(order_id,1) over(
		partition by customer_id
		order by order_date
	)as previous_order_id
from order_rollup_sate	
	