-- Mathematical functions

-- 1.CEIL and floor

select order_id,
sales ,
ceil(sales) as lower_value,
floor(sales) as upper_value
from sales
order by order_id

-- 2.Random
-- help to return a random number between 0 and 1

-- a= 10
-- b= 50
select random(), random()*40+10, floor(random()*40)+10

-- 3. Setseed
-- repeatable sequence of random numbers that is delivered from the seed

select setseed(0.5)
select random()
select random()

-- 4.round
-- roundes to a certain number of decimal points

select order_id,
sales,
round(sales) as net
from sales
order by sales desc

-- 5.power

select age, power(age,2)
from customer
order by age

