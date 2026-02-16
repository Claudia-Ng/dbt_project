SELECT
order_date,
product_name,
brand_name,
category_name,
total_revenue,
<<<<<<< HEAD
FROM {{ ref('int_local_bike__highest_revenue_month') }}
=======
FROM {{ ref('int_local_bike__highest_revenue_month') }} hr
left join {{ ref('stg_local_bike__products') }} pd on pd.product_id = hr.product_id
left join {{ ref('stg_local_bike__brands' )}} br on pd.brand_id = br.brand_id
left join {{ ref('stg_local_bike__categories' )}} cg on pd.category_id = cg.category_id
>>>>>>> 91d9234723e7a8331c40c99e0b2308818abe0817

