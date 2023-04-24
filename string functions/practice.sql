select product_name
from product

select max(length(product_name))
from product

select 
product_name||','||sub_category||','||category as
product_details 
from product

select product_id from product
order by product_id

select product_id,
substring ( product_id for 3) as group_1
from product
where substring(product_id for 3)='FUR'

select product_id,
substring(product_id from 5 for 2 )as group_2
from product
where substring(product_id for 3)='FUR'

select product_id,
substring(product_id from 8 for 8 )as group_3
from product
where substring(product_id for 3)='FUR'

select 
sub_category,
string_agg(product_name,',')
from product 
where sub_category in ('Chairs','Tables')

group by sub_category