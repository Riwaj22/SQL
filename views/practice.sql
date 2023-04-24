create view new_view 
as
select order_id, product_id, sales , discount 
from sales 
where order_date = (
	select order_date from sales
	order by order_date
	limit 1
)

select * from new_view