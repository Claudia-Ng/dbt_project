SELECT
order_date,
product_name,
brand_name,
category_name,
total_revenue,
FROM {{ ref('int_local_bike__highest_revenue_month') }}

