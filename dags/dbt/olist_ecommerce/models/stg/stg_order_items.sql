with order_items as (
    select * from {{ ref("src_order_items")}}
)

select 
    order_id,
    order_item_id,
    product_id,
    seller_id, 
    TO_TIMESTAMP(shipping_limit_date, 'DD/MM/YYYY HH24:MI') AS shipping_limit_date,
    price,
    freight_value
FROM order_items 