SELECT
name as sales_rep,
country as country_assigned_to,
FROM {{ ref('raw_sales_team') }}