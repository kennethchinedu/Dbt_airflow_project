WITH order_items AS (
    select
        *
    from
        {{ source('olist', 'order_items') }}
)


SELECT 
    order_id,
    order_item_id,
    product_id,
    seller_id,
    TO_TIMESTAMP(shipping_limit_date, 'MM/DD/YYYY HH24:MI:SS.FF') AS shipping_limit_date,
    price,
    freight_value
FROM 
    order_items
