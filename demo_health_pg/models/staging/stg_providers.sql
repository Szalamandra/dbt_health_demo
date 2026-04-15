select
    {{ clean_column('provider_id', 'integer') }} as provider_id,
    {{ clean_column('provider_name') }} as provider_name,
    {{ clean_column('specialty') }} as specialty,
    {{ clean_column('department_id', 'integer') }} as department_id,
    {{ format_date('hire_date') }} as hire_date
from {{ source('health_demo', 'providers') }}