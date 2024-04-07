with customers as (
    select * from {{ ref("src_customers")}}
)


SELECT 
    * 
FROM customers