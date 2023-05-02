-- coalesce is a functin that returns the first 
-- non null value in a list of values

create table emp_name(
	S_no int,
	first_name varchar, 
	middle_name varchar,
	last_name varchar
)

insert into emp_name values (1,'Paul','Van','hugh')
insert into emp_name(S_no, last_name) values (2,'hugh');
insert into emp_name(S_no, middle_name) values (3,hugh);	

select * from emp_name

select *,
coalesce(first_name, middle_name, last_name)as name_corr,
concat(first_name, middle_name, last_name)as emp_name
from emp_name