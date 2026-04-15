select 
    {{ clean_column('patient_id', 'integer') }} as patient_id,
    {{ clean_column('first_name') }} as first_name,
    {{ clean_column('last_name') }} as last_name,
    {{ format_date('date_of_birth') }} as date_of_birth,
    {{ clean_column('gender') }} as gender,
    {{ format_phone('phone') }} as phone,
    {{ clean_column('email') }} as email,
    {{ clean_column('city') }} as city,
    {{ clean_column('state') }} as state,
    {{ format_date('signup_date') }} as signup_date,
    {{ clean_column('insurance_type') }} as insurance_type
from {{ source('health_demo', 'patients') }}