select
    {{ clean_column('payment_id', 'integer') }} as payment_id,
    {{ clean_column('claim_id', 'integer') }} as claim_id,
    {{ clean_column('patient_id', 'integer') }} as patient_id,
    {{ format_date('payment_date') }} as payment_date,
    {{ clean_column('payment_method') }} as payment_method,
    {{ clean_numeric('paid_amount') }} as paid_amount
from {{ source('health_demo', 'payments') }}