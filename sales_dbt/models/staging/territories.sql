{{
    config(
        materialized="table"
    )
}}

select
    territory_id,
    region_id,
    territory_description
from {{ source('northwind', 'territories') }}