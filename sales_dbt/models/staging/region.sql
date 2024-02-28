{{
    config(
        materialized="table"
    )
}}

select
    region_id,
    region_description
from {{ source('northwind', 'region') }}