select
    order_item_id,
    sum(order_item_amount) as total_amount
from {{ ref('stg_local_bike__order_items') }}
group by order_item_id
having total_amount < 0