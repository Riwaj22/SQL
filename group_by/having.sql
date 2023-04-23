-- having

-- clause is used in combination with the group by clause to restrict the group of returned rows only those whose the condition is true

select region, count(customer_id) as customer_count
from customer
group by region
having count(customer)>200

-- having for condition to agg function\

select region, count(customer_id) as customer_count
from customer
where customer_name like 'A%'
group by region
having count(customer)>200