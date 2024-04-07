WITH src_orders AS (
    select
        *
    from
    {{ source('olist', 'orders') }}
)


select 
    order_id, 
    customer_id,
    order_status, 
    TO_TIMESTAMP(order_purchase_timestamp, 'DD/MM/YYYY HH24:MI') AS order_purchase_timestamp,
    TO_TIMESTAMP(order_approved_at, 'DD/MM/YYYY HH24:MI') AS order_approved_at,
    TO_TIMESTAMP(order_delivered_carrier_date, 'DD/MM/YYYY HH24:MI') AS order_delivered_carrier_date,
    TO_TIMESTAMP(order_delivered_customer_date, 'DD/MM/YYYY HH24:MI') AS order_delivered_customer_date,
    TO_TIMESTAMP(order_estimated_delivery_date, 'DD/MM/YYYY HH24:MI') AS order_estimated_delivery_date
from 
    src_orders





