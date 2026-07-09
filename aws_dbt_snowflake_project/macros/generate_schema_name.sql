{# every time this macros run in the background #}
{% macro generate_schema_name(custom_schema_name, node) -%}

    {%- set default_schema = target.schema -%}
    {%- if custom_schema_name is none -%}

        {{ default_schema }}

    {%- else -%}

    {# here default schema name will be removed without any prefix #}
        {# {{ default_schema }}_{{ custom_schema_name | trim }} #}
        {{ custom_schema_name | trim }}

    {%- endif -%}

{%- endmacro %}

