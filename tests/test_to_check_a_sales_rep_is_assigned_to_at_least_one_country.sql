SELECT 
sales_rep,
count(country_assigned_to) as count_countries
FROM {{ ref('stg_sales_team') }}
GROUP BY sales_rep
HAVING count_countries < 1