select * from science_class

update  science_class
set marks = 45
where name = 'G'


delete from science_class
where name = 'C'

alter table science_class 
rename name to student_name