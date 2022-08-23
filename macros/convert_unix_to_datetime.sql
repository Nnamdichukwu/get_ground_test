{% macro convert_unix_to_date(unix_timestamp) %}
    DATE(TIMESTAMP_MICROS(cast({{unix_timestamp}}/1000 as int64)))
{% endmacro %}