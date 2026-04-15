select
    {{ clean_column('department_id', 'integer') }} as department_id,
    {{ clean_column('department_name') }} as department_name,
    {{ clean_column('location') }} as location
from {{ source('health_demo', 'departments') }}