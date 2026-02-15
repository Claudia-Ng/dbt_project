select 
CONCAT(store_id, product_id) AS stock_id,
store_id,
product_id,
quantity
from {{ source('local_bike', 'stocks') }}