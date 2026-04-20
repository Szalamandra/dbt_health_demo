{{% macro extract_age(date_of_birth_column) %}}
    extract(year from age(current_date, {{ date_of_birth_column }}))

{{% endmacro %}}