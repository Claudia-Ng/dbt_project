select
    order_item_id,
    sum(sale_price) as total_sale_price
from {{ ref('stg_local_bike__order_items') }}
group by order_item_id
having total_sale_price < 0