
select
    *
from
{{ source('olist', 'geolocation') }}



