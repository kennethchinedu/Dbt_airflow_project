with order_payments as (
    select * from {{ ref("src_order_payment")}}
)

select 
    *
from order_payments