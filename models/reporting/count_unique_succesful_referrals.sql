SELECT
referral_date,
COUNT(DISTINCT company_id) as unique_referrals
FROM {{ ref('stg_referral') }}
WHERE referral_status = "successful"
GROUP BY referral_date
ORDER BY referral_date 