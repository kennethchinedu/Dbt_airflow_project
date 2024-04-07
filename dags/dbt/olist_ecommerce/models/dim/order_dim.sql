WITH o AS (
    select
        *
    from
    {{ ref('stg_orders') }}
),

    oi AS (
    select  
        *
    from 
    {{ ref('stg_order_items')}}
)

Select 
    o.*,
    oi.order_item_id,
    oi.product_id,
    oi.seller_id,
    oi.price,
    oi.freight_value,
    shipping_limit_date,
    shipping_month,
    shipping_day_name

FROM 
    o 
LEFT JOIN oi ON oi.order_id = o.order_id