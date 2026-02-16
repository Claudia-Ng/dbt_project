
select 
order_date,
total_revenue
from {{ ref('int_local_bike__orders') }}
