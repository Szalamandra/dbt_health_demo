select 
    {{ clean_column('appointment_id', 'integer') }} as appointment_id,
    {{ clean_column('patient_id', 'integer') }} as patient_id,
    {{ clean_column('provider_id', 'integer') }} as provider_id,
    {{ clean_column('department_id', 'integer') }} as department_id,
    {{ format_date('appointment_date') }} as appointment_date,
    {{ clean_column('appointment_type') }} as appointment_type,
    {{ clean_column('status') }} as status,
    {{ format_timestamp('scheduled_at') }} as scheduled_at
from {{ source('health_demo', 'appointments') }}