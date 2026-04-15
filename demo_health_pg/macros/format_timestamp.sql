{% macro format_timestamp(column_name) %}
    cast(to_char(
        {{ column_name }}, 'YYYY-MM-DD HH24:MI:SS'
    ) as timestamp)
{% endmacro %}