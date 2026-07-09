{# used to apply multiple functions and multiple transformaations #}

{# here trim is used to filter ,, here node is built in parameter #}
{% macro trimmer (column_name, node) %}
    {{col_name | trim | upper }}
{%endmacro%}