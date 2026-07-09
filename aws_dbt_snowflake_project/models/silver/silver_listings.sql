{{ config(materialized='incremental', unique_key='LISTING_ID') }}

SELECT 
    LISTING_ID,
    HOST_ID,
    PROPERTY_TYPE,
    ROOM_TYPE,
    CITY,
    COUNTRY,
    ACCOMMODATES,
    BEDROOMS,
    BATHROOMS,
    PRICE_PER_NIGHT,
    {# macro function used from tag.sql file #}
    {{ tag('CAST(PRICE_PER_NIGHT AS INT)') }} AS PRICE_PER_NIGHT_TAG,
    CREATED_AT
FROM 
    {{ ref('bronze_listings') }}

    