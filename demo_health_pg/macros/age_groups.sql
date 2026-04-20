{% macro age_groups(date_of_birth_column,new_column_name) %}
    {% set age_column = 'EXTRACT(YEAR FROM age(current_date,  ' ~ date_of_birth_column ~ '))' %}
    
    case
        when {{ age_column }} < 18 then '0-17'
        when {{ age_column }} < 35 then '18-34'
        when {{ age_column }} < 50 then '35-49'
        when {{ age_column }} < 65 then '50-64'
        else '65+'
    end as {{ new_column_name }}
{% endmacro %}