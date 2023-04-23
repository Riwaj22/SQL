-- case expression

-- similar to if else condition

select * ,
case 
when age<30 then 'Young'
when age>50 then 'Senior Citizen'
else 'Middle Aged'
end as Age_category
from customer
