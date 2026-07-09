{# here we will use the macros here #}
{# what is upsert? #}
{# An upsert (a combination of "Update" and "Insert") is a database operation that inserts a new row if the record does not exist yet, or updates the existing row if it already exists #}
{# here key can reffer to unique_id or peoduct id or anyhting #}

{{
      config(
        materialized = 'incremental',
        key = 'BOOKING_ID'  
        )
    }}

    SELECT BOOKING_ID,
    LISTING_ID,
    BOOKING_DATE,
    {# here we used macro reusable jinja function defined in macros folder#}
    {{multiply('NIGHTS_BOOKED', 'BOOKING_AMOUNT',2)}} + CLEANING_FEE + SERVICE_FEE AS TOTAL_AMOUNT,
    BOOKING_STATUS,
    CREATED_AT
    FROM 
    {{ref('bronze_bookings')}}  
    {# bronze_bookings this tells the db to read this table or model #}
    {# here ref connects the bronze_bookings table to silver_bookings #}
    {# here ref is used to identify the exact table or model . it handles our lineage(dependency graph) #}
    {# these are the upsert command #}