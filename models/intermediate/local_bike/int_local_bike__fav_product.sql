
SELECT
order_date,
<<<<<<< HEAD
pd.product_id,
product_name,
brand_name,
category_name,
SUM(quantity) as total_quantity
FROM {{ ref('stg_local_bike__order_items') }} oi
left join {{ ref('stg_local_bike__orders') }} o on o.order_id = oi.order_id
left join {{ ref('stg_local_bike__products') }} pd on pd.product_id = oi.product_id
left join {{ ref('stg_local_bike__categories') }} ct on ct.category_id = pd.category_id
left join {{ ref('stg_local_bike__brands') }} br on br.brand_id = pd.brand_id
GROUP BY
order_date,
pd.product_id,
product_name,
brand_name,
category_name
=======
product_id,
SUM(quantity) as total_quantity
FROM {{ ref('stg_local_bike__order_items') }} oi
left join {{ ref('stg_local_bike__orders') }} o on o.order_id = oi.order_id
GROUP BY
order_date,
product_id
>>>>>>> 91d9234723e7a8331c40c99e0b2308818abe0817
QUALIFY ROW_NUMBER() OVER (
  PARTITION BY order_date
  ORDER BY total_quantity DESC
) = 1


