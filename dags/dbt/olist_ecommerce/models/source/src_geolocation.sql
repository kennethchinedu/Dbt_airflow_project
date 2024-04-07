WITH geolocation AS (
    select
    *
    from
    {{ source('olist', 'geolocation') }}
)

SELECT
   * 
FROM geolocation



