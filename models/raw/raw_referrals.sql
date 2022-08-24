SELECT
*
FROM {{ source('getground', 'referrals_table') }}