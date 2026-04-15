select 
    {{ clean_column('encounter_id', 'integer') }} as encounter_id,
    {{ clean_column('patient_id', 'integer') }} as patient_id,
    {{ clean_column('provider_id', 'integer') }} as provider_id,
    {{ clean_column('appointment_id', 'integer') }} as appointment_id,
    {{ format_date('encounter_date') }} as encounter_date,
    {{ clean_column('diagnosis_code') }} as diagnosis_code,
    {{ clean_column('procedure_code') }} as procedure_code,
    {{ clean_numeric('billed_amount') }} as billed_amount
from {{ source('health_demo', 'encounters') }}

          
