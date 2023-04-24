-- regular expression


select * from customer
where customer_name
~*'a+[a-z\s]+$'

-- name starting with either of a,b,c,d
select * from customer
where customer_name
~*'^(a|b|c|d)+[a-z\s]+$'

-- last name of 4 characters and first name from a,b,c,d
select * from customer
where customer_name
~*'^(a|b|c|d)[a-z]{3}\s[a-z]{4}$'

