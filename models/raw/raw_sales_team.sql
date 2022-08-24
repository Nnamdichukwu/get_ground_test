SELECT
*
FROM {{ source('getground', 'sales_team') }}