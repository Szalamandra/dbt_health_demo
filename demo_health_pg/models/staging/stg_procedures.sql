select
    {{ clean_column('procedure_code', 'integer') }} as procedure_code,
    {{ clean_column('procedure_name') }} as procedure_name,
    {{ clean_column('procedure_group') }} as procedure_group,
    {{ clean_numeric('standard_price') }} as standard_price
from {{ source('health_demo', 'procedures') }}

