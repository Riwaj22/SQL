create table sales_2015
as select * from sales
where ship_date between '2015-01-01' and '2015-12-12'

select count(*) from sales_2015

select count(distinct customer_id ) from sales_2015

create table customer_20_60 
as select * from customer
where age between 20 and 60

select count(*) from customer_20_60


