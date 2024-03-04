select
    customer_id,
    contact_name,
    city,
    region,
    country
from {{ source('northwind', 'customers') }}