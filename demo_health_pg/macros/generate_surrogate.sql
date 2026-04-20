{% macro surrogate_key(columns) %}    --list of columns to be used for surrogate key generation
    {{ dbt_utils.generate_surrogate_key(columns) }}
{% endmacro %}