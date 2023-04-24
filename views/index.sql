-- -- index
-- -- is a performance tuning method of allowing faster retrival of records


-- create unique index index name
-- on table name

create index mon_index 
on month_values(MM)

-- rename
alter index mon_index
rename to month_indez

-- delete
drop index month_index

