SELECT
FORMAT_DATE('%Y-%m', order_date) as order_date,
product_id AS favorite_product_id,
sf.staff_id,
st.store_id,
round(sum(order_item_amount),2) as total_revenue
FROM {{ ref('stg_local_bike__order_items') }} oi
left join {{ ref('stg_local_bike__orders') }} o on o.order_id = oi.order_id
left join {{ ref('stg_local_bike__stores') }} st on st.store_id = o.store_id
left join {{ ref('stg_local_bike__staffs') }} sf on sf.staff_id = o.staff_id
GROUP BY
order_date,
product_id,
sf.staff_id,
st.store_id
QUALIFY ROW_NUMBER() OVER (
  PARTITION BY order_date
  ORDER BY total_revenue DESC
) = 1
ORDER BY total_revenue DESC