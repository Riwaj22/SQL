-- -- alter 
-- change structure

select * from customer_table

-- alter tablename
-- specify actions 

-- actions can be:
-- 1. columns
-- 2. constraints 
-- 3. index

alter table customer_table
add test varchar

alter table customer_table
drop test

alter table customer_table 
alter age type varchar

alter table customer_table 
rename email_id to customer_email

-- change constraint

alter table customer_table
alter column cust_id set not null

insert into customer_table (first_name,last_name,age,customer_email)
values('a','b', '11', 'xxx@zzz.com')

alter table customer_table 
alter column cust_id drop not null

insert into customer_table (first_name,last_name,age,customer_email)
values('a','b', '11', 'xxx@zzz.com')table customer_table 

alter table customer_table add constraint cust_id 
check (cust_id>0);

insert into customer_table 
values(-1,'a','b', '11', 'xxx@zzz.com')

alter table customer_table 
add primary key (cust_id);

insert into customer_table 
values(1,'a','b', '11', 'xxx@zzz.com')

delete from customer_table


