{% macro template_example() %}
    {% set query %}
        select true as bool
    {% endset %}

    {% do run_query(query) %}
{% endmacro %}
