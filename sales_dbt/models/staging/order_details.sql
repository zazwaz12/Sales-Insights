{{
    config(
        materialized="incremental",
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
    _airbyte_extracted_at
from {{ source('northwind', 'order_details') }}
{% if is_incremental() %}
    where _airbyte_extracted_at > (select max(_airbyte_extracted_at) from {{ this }} )
{% endif %}
order by _airbyte_extracted_at