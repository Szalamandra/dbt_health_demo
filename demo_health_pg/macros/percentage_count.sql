{% macro percentage_count(numerator, denominator) %}
    case
        when {{ denominator }} is null or {{ denominator }} = 0 then 'null'
        else {{ numerator }}::numeric / {{ denominator }}::numeric * 100
    end
{% endmacro %}