select
product_name,
stock_qty,
sales_qty
from {{ ref('int_local_bike__stocks') }} st 
left join {{ ref('stg_local_bike__products') }} pd on pd.product_id = st.product_id
