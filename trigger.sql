-- Triggers

create table students(
	roll_number numeric(10) primary key,
	name varchar, 
	course varchar
)

create table student_logs
(
	roll_old numeric(10) primary key,
	name_old varchar, 
	course_old varchar
)

-- create trigger function

create function student_logs_trig_func()
returns trigger
language 'plpgsql'
as $$
declare 
begin
insert into student_logs
(roll_old,name_old,course_old)
values(old.roll_number, old.name, old.course);
return new;
end;
$$;


create trigger student_trg
before delete or update 
on students
for each row 
execute procedure student_logs_trig_func()

insert into students values (1,'A','MA')

select * from students
select * from student_logs

update  students
set name = 'B' where 
roll_number = 1


