{{
    config(
        materialized="table",
        unique_key=["order_id","product_id"],
        incremental_strategy="delete+insert"
    )
}}

select
    order_id,
    product_id,
    unit_price,
    quantity,
    discount,
    _airbyte_extracted_at as extracted_date
from {{ source('northwind', 'order_details') }}
{% if is_incremental() %}
    where _airbyte_extracted_at > (select max(extracted_date) from {{ this }} )
{% endif %}
order by extracted_date