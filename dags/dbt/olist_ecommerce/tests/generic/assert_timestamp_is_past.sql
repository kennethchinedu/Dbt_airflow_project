-- This test checks and make sure that all timestamp 
-- we have in our model is in the past
-- This is a generi test that will be used across our models
-- Returns rows where where assertion is not true;returns 0 row, then it passes
{{ config(severity='warn',store_failures = true)}}


{% test assert_timestamp_is_past(model, column_name) %}
    SELECT *
    FROM {{ model }}
    WHERE {{ column_name }} >  CURRENT_TIMESTAMP()
{% endtest %}

