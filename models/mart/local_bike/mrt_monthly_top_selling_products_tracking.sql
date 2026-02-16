SELECT
order_date,
product_name,
brand_name,
category_name,
total_quantity AS total_quantity_sold,
FROM {{ ref('int_local_bike__fav_product') }} fp
left join {{ ref('stg_local_bike__products') }} pd on pd.product_id = fp.product_id
left join {{ ref('stg_local_bike__brands' )}} br on pd.brand_id = br.brand_id
left join {{ ref('stg_local_bike__categories' )}} cg on pd.category_id = cg.category_id
order by total_quantity_sold desc

