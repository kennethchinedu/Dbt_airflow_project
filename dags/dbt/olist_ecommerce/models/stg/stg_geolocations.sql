with geolocation as (
    select * from {{ ref("src_geolocation")}}
)

SELECT 
    *
FROM geolocation