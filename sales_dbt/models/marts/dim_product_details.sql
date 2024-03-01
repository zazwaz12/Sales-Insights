select
    {{ dbt_utils.generate_surrogate_key(['products.product_id']) }} as product_key,
    products.product_name,
    categories.category_name
from {{ ref('products') }} as products
left join {{ ref('categories') }} as categories
    on products.category_id = categories.category_id