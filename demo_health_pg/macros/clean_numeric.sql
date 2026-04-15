{% macro clean_numeric(column_name, precision=10, scale=2) %}
    cast(
        nullif({{ column_name }}, 0)
        as numeric({{ precision }}, {{ scale }})
    )
{% endmacro %}