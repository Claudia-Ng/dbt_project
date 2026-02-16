
with sales as(
<<<<<<< HEAD
  select 
  pd.product_id,
  product_name,
  sum(quantity) as sales_qty
  from {{ ref('stg_local_bike__order_items' )}} oi 
  left join {{ ref('stg_local_bike__products') }} pd on pd.product_id = oi.product_id
  group by pd.product_id, product_name
=======
  select product_id,
  sum(quantity) as sales_qty
  from {{ ref('stg_local_bike__order_items' )}}
  group by product_id
>>>>>>> 91d9234723e7a8331c40c99e0b2308818abe0817
),
stock as(
  select 
  product_id,
  sum(quantity_in_stock) as stock_qty
  from {{ ref('stg_local_bike__stocks' )}}
  group by product_id
)
 select 
 a.product_id,
<<<<<<< HEAD
 product_name,
=======
>>>>>>> 91d9234723e7a8331c40c99e0b2308818abe0817
 COALESCE(t.stock_qty,0) as stock_qty,
 a.sales_qty
 from sales a
 left join stock t on a.product_id = t.product_id
<<<<<<< HEAD
 group by stock_qty, sales_qty, a.product_id, product_name
=======
 group by stock_qty, sales_qty, product_id
>>>>>>> 91d9234723e7a8331c40c99e0b2308818abe0817

