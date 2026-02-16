
SELECT
order_date,
product_id,
SUM(quantity) as total_quantity
FROM {{ ref('stg_local_bike__order_items') }} oi
left join {{ ref('stg_local_bike__orders') }} o on o.order_id = oi.order_id
GROUP BY
order_date,
product_id
QUALIFY ROW_NUMBER() OVER (
  PARTITION BY order_date
  ORDER BY total_quantity DESC
) = 1


