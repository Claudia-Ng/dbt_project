select 
CONCAT(order_id, item_id) AS order_item_id,
order_id,
item_id,
product_id,
quantity,
list_price,
discount,
ROUND(list_price - (list_price * discount),2) AS sale_price,
ROUND((list_price-(list_price * discount)) * quantity,2) AS order_item_amount
from {{ source('local_bike', 'order_items') }}