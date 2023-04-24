select *,
b.customer_name,
b.age,
c.product_name,
c.category
from sales as a
left join customer as b
on a.customer_id = b.customer_id
right join product as c
on a.product_id = c.product_id

