SELECT
consultant_id,
count(company_id) as total_succesful_referrals,
count(DISTINCT company_id) as unique_successful_referrals
FROM {{ ref('stg_referral') }}
WHERE referral_status = "successful"
GROUP BY consultant_id
ORDER BY consultant_id