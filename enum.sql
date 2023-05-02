-- enumeration
-- create self defined datatypes

create type mood as enum('sad','happy','angry','ok')

create table person(
	name varchar,
	current_mood mood

)


insert into person values
('Riwaj','sad')

select * from person

select min(current_mood)
from person
