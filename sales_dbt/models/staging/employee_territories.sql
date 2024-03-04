select
    employee_id,
    territory_id
from {{ source('northwind', 'employee_territories') }}