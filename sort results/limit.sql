-- -- limit 

-- used to limit the number of records returned based on a limit value

-- select column name
-- from table name
-- where condition
-- order by
-- limit row count

select * from customer
-- top 8 oldest
select * from customer
where age>25
order by age desc
limit 8

-- top 10 youngest
select * from customer 
where age> 25
order by age asc
limit 10