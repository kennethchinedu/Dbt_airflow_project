
with products as (
    select * from {{ ref("src_product")}}
)


SELECT 
    *
FROM products