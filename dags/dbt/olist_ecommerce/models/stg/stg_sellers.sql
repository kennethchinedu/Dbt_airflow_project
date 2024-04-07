
with sellers as (
    select * from {{ ref("src_sellers")}}
)

SELECT 
    *
FROM sellers