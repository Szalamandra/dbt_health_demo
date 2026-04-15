select
    {{ clean_column('diagnosis_code', 'integer') }} as diagnosis_id,
    {{ clean_column('diagnosis_name') }} as diagnosis_name,
    {{ clean_column('diagnosis_group') }} as diagnosis_group
from {{ source('health_demo', 'diagnosis') }}

