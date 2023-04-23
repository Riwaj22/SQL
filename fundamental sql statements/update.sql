-- update query to modify the existing record in a table
select * from customer_table 
where cust_id = 2

update customer_table
set last_name = 'Pe' , age = 17
where cust_id = 2

-- multiple rows
update customer_table
set email_id = 'neupaneriwaj64@gmail.com'
where first_name = 'a'

