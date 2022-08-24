SELECT 
partner_id,
assigned_sales_rep,

FROM {{ ref('stg_partners') }}
WHERE assigned_sales_rep IS  NULL OR assigned_sales_rep = "0"
