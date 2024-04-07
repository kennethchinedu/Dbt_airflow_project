with orders as (
    select * from {{ ref("src_orders")}}
)

select 
    order_id,
    customer_id,
    order_status,
    order_purchase_timestamp,
    CASE 
        WHEN EXTRACT(MONTH FROM order_purchase_timestamp) = 1 THEN 'January'
        WHEN EXTRACT(MONTH FROM order_purchase_timestamp) = 2 THEN 'February'
        WHEN EXTRACT(MONTH FROM order_purchase_timestamp) = 3 THEN 'March'
        WHEN EXTRACT(MONTH FROM order_purchase_timestamp) = 4 THEN 'April'
        WHEN EXTRACT(MONTH FROM order_purchase_timestamp) = 5 THEN 'May'
        WHEN EXTRACT(MONTH FROM order_purchase_timestamp) = 6 THEN 'June'
        WHEN EXTRACT(MONTH FROM order_purchase_timestamp) = 7 THEN 'July'
        WHEN EXTRACT(MONTH FROM order_purchase_timestamp) = 8 THEN 'August'
        WHEN EXTRACT(MONTH FROM order_purchase_timestamp) = 9 THEN 'September'
        WHEN EXTRACT(MONTH FROM order_purchase_timestamp) = 10 THEN 'October'
        WHEN EXTRACT(MONTH FROM order_purchase_timestamp) = 11 THEN 'November'
        WHEN EXTRACT(MONTH FROM order_purchase_timestamp) = 12 THEN 'December'
    END AS order_purchase_month,
    DAYNAME(order_purchase_timestamp) AS order_purchase_day,
    order_approved_at,
    order_delivered_carrier_date,
    order_delivered_customer_date,
     CASE 
        WHEN EXTRACT(MONTH FROM order_delivered_customer_date) = 1 THEN 'January'
        WHEN EXTRACT(MONTH FROM order_delivered_customer_date) = 2 THEN 'February'
        WHEN EXTRACT(MONTH FROM order_delivered_customer_date) = 3 THEN 'March'
        WHEN EXTRACT(MONTH FROM order_delivered_customer_date) = 4 THEN 'April'
        WHEN EXTRACT(MONTH FROM order_delivered_customer_date) = 5 THEN 'May'
        WHEN EXTRACT(MONTH FROM order_delivered_customer_date) = 6 THEN 'June'
        WHEN EXTRACT(MONTH FROM order_delivered_customer_date) = 7 THEN 'July'
        WHEN EXTRACT(MONTH FROM order_delivered_customer_date) = 8 THEN 'August'
        WHEN EXTRACT(MONTH FROM order_delivered_customer_date) = 9 THEN 'September'
        WHEN EXTRACT(MONTH FROM order_delivered_customer_date) = 10 THEN 'October'
        WHEN EXTRACT(MONTH FROM order_delivered_customer_date) = 11 THEN 'November'
        WHEN EXTRACT(MONTH FROM order_delivered_customer_date) = 12 THEN 'December'
    END AS order_delivered_month,
    DAYNAME(order_delivered_customer_date) AS order_delivered_day,
    

FROM orders