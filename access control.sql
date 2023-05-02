-- user access control

-- create user statement creates a database account that allows
-- you to log into the database

create user riwaj
with password 'neupane'

-- grant and revoke

grant all on sales to riwaj

grant select, insert, update on sales to riwaj

revoke select on sales to riwaj

-- drop user statement is used to remove a user from the database\

drop user riwaj

revoke all on sales from riwaj

-- rename user

alter user riwaj 
rename rn

-- find all users

-- run a query against pg_user table to recieve information about users

select * from pg_user

-- find logged in users

-- run a query against pg_stat_activity table to retrieve information about logged users

select distinct *
from pg_stat_activity
