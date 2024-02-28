{{
    config(
        materialized="table"
    )
}}

select
    customer_id,
    contact_name,
    city,
    country
from {{ source('northwind', 'customers') }}