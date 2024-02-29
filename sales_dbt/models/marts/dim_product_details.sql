select
    {{ dbt_utils.generate_surrogate_key(['products.product_id']) }} as product_key,
    products.product_name,
    categories.category_name
from {{ source('staging', 'products') }} as products
left join {{ source('staging', 'categories') }} as categories
    on products.category_id = categories.category_id