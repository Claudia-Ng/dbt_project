select 
FORMAT_DATE('%Y-%m', order_date) as order_date,
product_name,
brand_name,
category_name,
round(sum(order_item_amount),2) as total_revenue
from {{ ref('stg_local_bike__order_items' )}} oi
left join {{ ref('stg_local_bike__orders' )}} o on oi.order_id = o.order_id
left join {{ ref('stg_local_bike__products' )}} pd on oi.product_id = pd.product_id
left join {{ ref('stg_local_bike__brands' )}} br on pd.brand_id = br.brand_id
left join {{ ref('stg_local_bike__categories' )}} cg on pd.category_id = cg.category_id
group by 
order_date,
product_name,
brand_name,
category_name
order by total_revenue 