-- ensuring that all price in order item is positive

with 
    order_item as (
            select * from {{ref("src_order_items")}}
    )

select 
    order_id, 
    price
from order_item
having price < 0