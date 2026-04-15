select 
    {{ clean_column('claim_id', 'integer') }} as claim_id,
    {{ clean_column('patient_id', 'integer') }} as patient_id,
    {{ clean_column('encounter_id', 'integer') }} as encounter_id,
    {{ format_date('claim_date') }} as claim_date,
    {{ clean_column('insurance_type') }} as insurance_type,
    {{ clean_numeric('claim_amount') }} as claim_amount,
    {{ clean_column('claim_status') }} as status
from {{ source('health_demo', 'claims') }}


