FROM quay.io/astronomer/astro-runtime:11.0.0 

WORKDIR "/usr/loca/airflow"

RUN python -m venv dbt_venv && source dbt_venv/bin/activate && \
    pip install --no-cache-dir dbt-snowflake && deactivate

