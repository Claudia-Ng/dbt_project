select 
customer_city,
customer_state,
product_name,
brand_name,
category_name,
ct.model_year,
total_revenue
from {{ ref('int_local_bike__customers') }} ct
