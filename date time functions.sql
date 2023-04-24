-- date time functions

-- current date and time

select current_date 
select current_time
select current_time(1)
select current_timestamp

-- age 

select order_id, order_date , ship_date,
age(ship_date,order_date) as time_taken 
from sales
order by time_taken desc

-- extract function extract parts from a date

-- extract('unit' from date)

select ship_date, order_date,
extract(day from (ship_date-order_date) )as day_taken
from sales

