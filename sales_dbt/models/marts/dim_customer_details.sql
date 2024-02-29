select
    {{ dbt_utils.generate_surrogate_key(['customers.customer_id']) }} as customer_key,
    customers.contact_name as customer_name,
    customers.city,
    customers.region,
    customers.country
from {{ ref('customers') }} as customers