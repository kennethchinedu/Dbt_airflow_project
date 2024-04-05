with orders as (
    select * from {{ ref("src_orders")}}
)

select 
    order_id,
    customer_id,
    order_status,
    TO_TIMESTAMP(order_purchase_timestamp, 'DD/MM/YYYY HH24:MI') AS order_purchase_timestamp
FROM orders