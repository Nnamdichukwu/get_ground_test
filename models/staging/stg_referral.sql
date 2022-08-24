SELECT 
is_outbound,
id as referral_id,
partner_id,
consultant_id,
{{convert_unix_to_date('created_at')}} as referral_date,
company_id,
status as referral_status
FROM {{ ref('raw_referrals') }}
