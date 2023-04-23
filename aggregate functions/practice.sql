select * from sales
select * from customer

select sum(sales) as "Total sales"
from sales

select count(customer_id) as "Number of customers" from customer
where region = 'North' and 
age between 20 and 30

select avg(age) as "Average age of East region customers"
from customer
where region = 'East'

select min(age) as "Minimum age from Phildelphia" , max(age) as "Maximum age from Phildelphia"
from customer
where city = 'Phildelphia'