SELECT
id as partner_id,
partner_type,
{{convert_unix_to_date('created_at')}} as partner_signup_date,

lead_sales_contact as assigned_sales_rep
FROM {{ref('raw_partner')}}
