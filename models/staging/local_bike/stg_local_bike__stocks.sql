select 
CONCAT(store_id, product_id) AS stock_id,
store_id,
product_id,
quantity AS quantity_in_stock
from {{ source('local_bike', 'stocks') }}