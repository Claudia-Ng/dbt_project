select
product_name,
category_name,
brand_name,
stock_qty,
sales_qty
from {{ ref('int_local_bike__stocks') }} 

