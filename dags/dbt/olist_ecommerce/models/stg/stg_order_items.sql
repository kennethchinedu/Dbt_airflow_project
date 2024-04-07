with order_items as (
    select * from {{ ref("src_order_items")}}
)

select 
    order_id,
    order_item_id,
    product_id,
    seller_id, 
    price,
    freight_value,
    shipping_limit_date,
    CASE 
        WHEN EXTRACT(MONTH FROM shipping_limit_date) = 1 THEN 'January'
        WHEN EXTRACT(MONTH FROM shipping_limit_date) = 2 THEN 'February'
        WHEN EXTRACT(MONTH FROM shipping_limit_date) = 3 THEN 'March'
        WHEN EXTRACT(MONTH FROM shipping_limit_date) = 4 THEN 'April'
        WHEN EXTRACT(MONTH FROM shipping_limit_date) = 5 THEN 'May'
        WHEN EXTRACT(MONTH FROM shipping_limit_date) = 6 THEN 'June'
        WHEN EXTRACT(MONTH FROM shipping_limit_date) = 7 THEN 'July'
        WHEN EXTRACT(MONTH FROM shipping_limit_date) = 8 THEN 'August'
        WHEN EXTRACT(MONTH FROM shipping_limit_date) = 9 THEN 'September'
        WHEN EXTRACT(MONTH FROM shipping_limit_date) = 10 THEN 'October'
        WHEN EXTRACT(MONTH FROM shipping_limit_date) = 11 THEN 'November'
        WHEN EXTRACT(MONTH FROM shipping_limit_date) = 12 THEN 'December'
    END AS shipping_month,
    DAYNAME(shipping_limit_date) AS shipping_day_name


FROM order_items 