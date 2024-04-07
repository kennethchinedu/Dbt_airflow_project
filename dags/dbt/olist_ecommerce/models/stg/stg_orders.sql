with orders as (
    select * from {{ ref("src_orders")}}
)

select 
    *
FROM orders