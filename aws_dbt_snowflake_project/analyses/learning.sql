{# using jinja(to create dynamic codes) #}

{% set nights_booked=1 %}
SELECT * FROM {{ ref('bronze_bookings') }}
where NIGHTS_BOOKED > {{nights_booked}}




{# hard coded #}
SELECT * FROM {{ ref('bronze_bookings') }}
{# here the ref is inbuilt jinja function and bronze_bookings is model #}
where NIGHTS_BOOKED > 1
{# here the where is used to filter the record which is greater than 1 #}



