select
product_name,
stock_qty,
sales_qty
<<<<<<< HEAD
from {{ ref('int_local_bike__stocks') }}
=======
from {{ ref('int_local_bike__stocks') }} st 
left join {{ ref('stg_local_bike__products') }} pd on pd.product_id = st.product_id
>>>>>>> 91d9234723e7a8331c40c99e0b2308818abe0817
