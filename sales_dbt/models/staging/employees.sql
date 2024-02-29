{{
    config(
        materialized="table"
    )
}}

select
    employee_id,
    first_name,
    last_name,
    title,
    birth_date,
    hire_date,
    city,
    country
from {{ source('northwind', 'employees') }}