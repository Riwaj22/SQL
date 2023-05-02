-- array 

create table employee(
	id int not null primary key,
	name text not null,
	salary integer[],
	work_hours text[][] 
)

insert into employee
values 
(1,'A','{1000,2000}','{{"morning","two"},{"evening", "three"}}')

insert into employee
values 
(2,'B','{1000,2000}','{{"morning","three"},{"evening", "four"}}')

select * from employee

select salary[2]
from employee

select work_hours[1][2]
from employee

select * from employee 
where 
work_hours[1][2] = 'two'
