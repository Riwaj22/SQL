-- -- windows function

-- it provides ability to perform calculations 
-- across set of rows that are related to the current query row

-- Row Number
alter table dataset
alter state type varchar
create table dataset (
	customer_id varchar primary key,
	state int,
	orders int
)

insert into dataset
values('C-1','A',3),
('C-2','B',5),
('C-3','B',4),
('C-4','B',2),
('C-5','A',6),
('C-6','B',4),
('C-7','A',2)

select * from dataset

-- add unique row within partions with different numbers of tied values

select customer_id,state, orders,
row_number() over(
	partition by state
	order by orders desc
)as row 
from dataset