{{
    config(
        materialized="table",
        unique_key=["order_id"],
        incremental_strategy="delete+insert"
    )
}}

select
    order_id,
    customer_id,
    employee_id,
    order_date,
    _airbyte_extracted_at as extracted_date
from {{ source('northwind', 'orders') }}
{% if is_incremental() %}
    where _airbyte_extracted_at > (select max(extracted_date) from {{ this }} )
{% endif %}
order by extracted_date