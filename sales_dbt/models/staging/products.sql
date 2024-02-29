{{
    config(
        materialized="table"
    )
}}

select
    product_id,
    product_name,
    category_id
from {{ source('northwind', 'products') }}