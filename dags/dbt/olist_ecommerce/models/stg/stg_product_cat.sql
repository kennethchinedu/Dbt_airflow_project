
with product_cat as (
    select * from {{ ref("src_product_cat")}}
)

SELECT 
    *
FROM product_cat