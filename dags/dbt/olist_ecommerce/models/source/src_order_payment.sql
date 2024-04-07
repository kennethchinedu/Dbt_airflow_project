-- order payment source


WITH order_payment AS (
    select
        *
    from
        {{ source('olist', 'order_payment') }}
)


SELECT 
    order_id, 
    CAST(payment_sequential AS INT) AS payment_sequential,
    payment_type, 
    CAST(payment_installments AS INT) AS payment_installments,
    CAST(payment_value AS INT) AS payment_value
    
from order_payment

