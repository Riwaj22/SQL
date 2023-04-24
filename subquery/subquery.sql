-- sub query

select customer_id
from sales
where customer_id in
(
	select distinct customer_id
	from customer
	where age>50
)


-- in from

select
a.product_id,
a.product_name,
a.category,
b.quantity
from product as a
left join (
	select product_id, sum(quantity) as quantity 
	from sales 
	group by product_id
) as b
on a.product_id = b.product_id
order by quantity desc

-- select part

select customer_id,
		order_id,
		(select customer_name
		 from customer
		 where customer.customer_id = sales.customer_id
		)
	from sales
	order by customer_id