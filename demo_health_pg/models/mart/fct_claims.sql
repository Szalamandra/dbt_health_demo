select 
cl.patient_id,
count(cl.encounter_id),
sum(cl.claim_amount)
from {{ref('stg_claims')}} cl left join {{ref('stg_payments')}} p
on cl.patient_id=p.patient_id  group by patient_id