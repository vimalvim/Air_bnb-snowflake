{# basic function #}
{# here h and y is paramete and we are going to precision too #}
{% macro multiply(x,y, precision) %}
 round({{x}}*{{y}}, {{precision}})
{% endmacro %}
{# now i can use this macros and it is single function#}
