-- load from csv file

create table Sales(

order_line int primary key,
	order_id varchar,
	order_date date,
	ship_date date,
	ship_mode varchar,
	customer_id varchar,
	product_id varchar,
	sales numeric,
	quantity int,
	discount numeric,
	profit numeric

);

copy sales from 'C:\Program Files\PostgreSQL\15\data\dataset\4.3 Sales.csv' CSV header;

select * from sales

create table product(
product_id varchar primary key,
	category varchar,
	sub_category varchar,
	product_name varchar
);

copy product from 'C:\Program Files\PostgreSQL\15\data\dataset\4.2 Product.csv' CSV header;

select * from product




