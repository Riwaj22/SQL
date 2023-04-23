select * from customer

select distinct city from customer
where region in ('north','east')


select * from sales

select * from sales 
where sales between 100 and 500


select customer_name from customer
where customer_name like '% ____'