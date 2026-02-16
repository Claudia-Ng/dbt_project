select 
customer_city,
customer_state,
product_name,
brand_name,
category_name,
ct.model_year,
total_revenue
from {{ ref('int_local_bike__customers') }} ct
<<<<<<< HEAD
=======
left join {{ ref('stg_local_bike__products' )}} pd on ct.product_id = pd.product_id
left join {{ ref('stg_local_bike__brands' )}} br on pd.brand_id = br.brand_id
left join {{ ref('stg_local_bike__categories' )}} cg on pd.category_id = cg.category_id
>>>>>>> 91d9234723e7a8331c40c99e0b2308818abe0817
