with appointment_count as (
    select patient_id, count(*) as appointment_count, coalesce(max(appointment_date), '1900-01-01') as last_appointment_date,
    coalesce(min(appointment_date), '1900-01-01') as first_appointment_date
    from {{ ref('stg_appointments') }} where status = 'completed'
    group by patient_id
),

total_payments  as (
    select patient_id, sum(paid_amount) as total_paid
    from {{ ref('stg_payments') }}
    group by patient_id
),

claim_count as (
    select patient_id, count(*) as claim_count
    from {{ ref('stg_claims') }}
    group by patient_id
) 




select p.patient_id as patient_id,
    {{age_groups('p.date_of_birth', 'age_group')}},
    case 
        when p.gender in ('m', 'male') then 1
        when p.gender in ('f', 'female') then 2
        else 0 end as gender,
    coalesce(ac.first_appointment_date, '1900-01-01') as first_appointment_date,
    coalesce(ac.last_appointment_date, '1900-01-01') as last_appointment_date,
    coalesce(ac.appointment_count, 0) as appointment_count,
    coalesce(tp.total_paid, 0) as total_paid,
    coalesce(cc.claim_count, 0) as claim_count
from {{ ref('stg_patients') }} p  left join claim_count cc on p.patient_id = cc.patient_id
    left join appointment_count ac on p.patient_id = ac.patient_id left join total_payments tp on p.patient_id = tp.patient_id