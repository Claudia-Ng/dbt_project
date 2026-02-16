select 
order_id,
customer_id,
order_status,
FORMAT_DATE('%Y-%m', order_date) as order_date,
store_id,
staff_id
from {{ source('local_bike', 'orders') }}