{% macro convert_unix_to_date(unix_timestamp) %}
DATE(TIMESTAMP_MICROS(
    CAST(
        CAST(
            {{unix_timestamp}} as float64)/1000 
            as int64)))
   
{% endmacro %}