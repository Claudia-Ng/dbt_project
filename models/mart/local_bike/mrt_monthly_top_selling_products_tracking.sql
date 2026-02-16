SELECT
order_date,
product_name,
brand_name,
category_name,
total_quantity AS total_quantity_sold,
FROM {{ ref('int_local_bike__fav_product') }} 
order by total_quantity_sold desc

