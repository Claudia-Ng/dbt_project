select 
city as customer_city,
state as customer_state,
pd.product_id,
br.brand_id,
cg.category_id,
<<<<<<< HEAD
product_name,
brand_name,
category_name,
=======
>>>>>>> 91d9234723e7a8331c40c99e0b2308818abe0817
model_year,
round(sum(order_item_amount),2) as total_revenue
from {{ ref('stg_local_bike__order_items' )}} oi
left join {{ ref('stg_local_bike__orders' )}} o on o.order_id = oi.order_id
left join {{ ref('stg_local_bike__customers' )}} ct on ct.customer_id = o.customer_id
left join {{ ref('stg_local_bike__products' )}} pd on oi.product_id = pd.product_id
left join {{ ref('stg_local_bike__brands' )}} br on pd.brand_id = br.brand_id
left join {{ ref('stg_local_bike__categories' )}} cg on pd.category_id = cg.category_id
group by 
customer_city,
customer_state,
pd.product_id,
br.brand_id,
cg.category_id,
<<<<<<< HEAD
product_name,
brand_name,
category_name,
=======
>>>>>>> 91d9234723e7a8331c40c99e0b2308818abe0817
model_year
