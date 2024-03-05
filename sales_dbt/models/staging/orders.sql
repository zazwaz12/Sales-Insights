{{
    config(
        materialized="incremental",
        unique_key=["order_id"],
        incremental_strategy="delete+insert"
    )
}}

select
    order_id,
    customer_id,
    employee_id,
    order_date,
    _airbyte_extracted_at
from {{ source('northwind', 'orders') }}
{% if is_incremental() %}
    where _airbyte_extracted_at > (select max(_airbyte_extracted_at) from {{ this }} )
{% endif %}
order by order_date