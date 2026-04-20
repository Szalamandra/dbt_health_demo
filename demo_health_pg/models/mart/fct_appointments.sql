SELECT a.appointment_id, a.patient_id, a.provider_id, 
a.department_id, a.appointment_date, a.appointment_type, a.scheduled_at,
case when e.encounter_id is not null then 1 else 0 end as
show_up_flag,
case
when a.status = 'cancelled' then 1 else 0 end as cancellation_flag,
case 
when a.appointment_date < current_date then 1 else 0 end as next_appointment_flag
	FROM {{ref('stg_appointments')}} a left join {{ref('stg_encounters')}} e
    on a.appointment_id = e.appointment_id