
with sales as(
  select product_id,
  sum(quantity) as sales_qty
  from {{ ref('stg_local_bike__order_items' )}}
  group by product_id
),
stock as(
  select 
  product_id,
  sum(quantity) as stock_qty
  from {{ ref('stg_local_bike__stocks' )}}
  group by product_id
)
 select 
 pd.product_name,
 t.stock_qty,
 a.sales_qty
 from sales a
 left join stock t on a.product_id = t.product_id
 left join {{ ref('stg_local_bike__products' )}} pd on t.product_id = pd.product_id
 group by stock_qty, sales_qty, product_name
 order by stock_qty desc
