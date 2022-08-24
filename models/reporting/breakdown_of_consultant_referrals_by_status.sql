{%- set status = ["successful", "pending", "disinterested"] -%}
SELECT
consultant_id,
{% for status in status %}
 COUNT( DISTINCT CASE WHEN referral_status = '{{status}}' THEN company_id else NULL end ) as {{status}}_unique_referrals
 {%if not loop.last%}, {% endif %}    
{% endfor %}

FROM {{ ref('stg_referral') }}
GROUP BY consultant_id

ORDER BY consultant_id