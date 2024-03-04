select
    category_id,
    category_name
from {{ source('northwind', 'categories') }}