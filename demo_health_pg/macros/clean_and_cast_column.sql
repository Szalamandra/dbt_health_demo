{% macro clean_column(column_name, data_type='text') %}
    {% if data_type == 'integer' %}
        nullif(cast(
            {{ column_name }} as integer), 0       
        )
    {% else %}
    cast(
        nullif(lower(trim({{ column_name }})), 'null')
        as {{ data_type }}
    )
    {% endif %}
{% endmacro %}