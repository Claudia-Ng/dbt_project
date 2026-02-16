
with sales as(
  select product_id,
  sum(quantity) as sales_qty
  from {{ ref('stg_local_bike__order_items' )}}
  group by product_id
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
 COALESCE(t.stock_qty,0) as stock_qty,
 a.sales_qty
 from sales a
 left join stock t on a.product_id = t.product_id
 group by stock_qty, sales_qty, product_id

