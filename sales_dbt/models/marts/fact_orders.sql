select
    {{ dbt_utils.generate_surrogate_key(['orders.order_id']) }} as order_key,
    {{ dbt_utils.generate_surrogate_key(['orders.customer_id']) }} as customer_key,
    {{ dbt_utils.generate_surrogate_key(['orders.employee_id']) }} as employee_key,
    {{ dbt_utils.generate_surrogate_key(['order_details.product_id']) }} as product_key,
    orders.order_date,
    order_details.unit_price,
    order_details.quantity,
    order_details.discount,
    unit_price * quantity * (1-discount) as total_sale_after_discount
from {{ ref('orders') }} as orders
left join {{ ref('order_details') }} as order_details
    on orders.order_id = order_details.order_id