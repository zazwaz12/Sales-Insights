select
    {{ dbt_utils.generate_surrogate_key(['employees.employee_id']) }} as employee_key,
    employees.first_name,
    employees.last_name,
    employees.title,
    employees.birth_date,
    employees.hire_date,
    employees.city,
    employees.region,
    employees.country,
from {{ source('staging', 'employees') }} as employees