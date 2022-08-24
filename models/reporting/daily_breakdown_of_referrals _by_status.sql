{%- set status = ["successful", "pending", "disinterested"] -%}
SELECT
referral_date,
{% for status in status %}
 COUNT(DISTINCT CASE WHEN referral_status = '{{status}}' THEN company_id else 0 end ) as {{status}}_unique_referrals
 {%if not loop.last%}, {% endif %}    
{% endfor %}

FROM {{ ref('stg_referral') }}
GROUP BY 1
ORDER BY referral_date