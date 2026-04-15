{% macro format_date(column_name) %}
    cast((nullif(trim(to_char({{ column_name }}, 'YYYY-MM-DD')), 'null')) as text)
{% endmacro %}