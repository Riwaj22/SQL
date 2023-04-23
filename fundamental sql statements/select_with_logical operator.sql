select first_name, last_name from customer_table
where age>22 and 
age<30

select first_name, last_name,age  from customer_table
where age>22 or 
age<30 and 
first_name = 'a'

select *
from customer_table 
where not age = 22 and 
not first_name = 'aaa'



