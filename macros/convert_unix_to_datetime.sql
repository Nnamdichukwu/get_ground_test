--Converts the unix timestamp first to a float64, then to int64 before using the date function
-- Using timestamp_micros because using seconds will lead to an overflow. 
{% macro convert_unix_to_date(unix_timestamp) %}
DATE(TIMESTAMP_MICROS(
    CAST(
        CAST(
            {{unix_timestamp}} as float64)/1000 
            as int64)))
   
{% endmacro %}