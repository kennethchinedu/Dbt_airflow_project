with order_reviews as (
    select * from {{ ref("src_order_review")}}
)


SELECT 
    * 
FROM order_reviews