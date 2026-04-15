select
    {{ clean_column('activity_id', 'integer') }} as activity_id,
    {{ clean_column('patient_id', 'integer') }} as user_id,
    {{ clean_column('page_type') }} as page_type,
    {{ clean_column('device_type') }} as device_type,
    {{ clean_column('campaign_source') }} as campaign_source,
    {{ format_timestamp('activity_timestamp') }} as activity_date
from {{ source('health_demo', 'web_activity') }}

