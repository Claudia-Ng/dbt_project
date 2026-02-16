
select 
order_date,
round(sum(order_item_amount),2) as total_revenue
from {{ ref('stg_local_bike__order_items' )}} oi
left join {{ ref('stg_local_bike__orders' )}} o on oi.order_id = o.order_id
group by 
order_date
