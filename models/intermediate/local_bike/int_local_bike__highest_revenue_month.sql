SELECT
order_date,
pd.product_id,
product_name,
brand_name,
category_name,
round(sum(order_item_amount),2) as total_revenue
FROM {{ ref('stg_local_bike__order_items') }} oi
left join {{ ref('stg_local_bike__orders') }} o on o.order_id = oi.order_id
left join {{ ref('stg_local_bike__stores') }} st on st.store_id = o.store_id
left join {{ ref('stg_local_bike__staffs') }} sf on sf.staff_id = o.staff_id
left join {{ ref('stg_local_bike__products') }} pd on pd.product_id = oi.product_id
left join {{ ref('stg_local_bike__brands' )}} br on pd.brand_id = br.brand_id
left join {{ ref('stg_local_bike__categories' )}} cg on pd.category_id = cg.category_id
GROUP BY
order_date,
product_id,
product_name,
brand_name,
category_name
QUALIFY ROW_NUMBER() OVER (
  PARTITION BY order_date
  ORDER BY total_revenue DESC
) = 1
