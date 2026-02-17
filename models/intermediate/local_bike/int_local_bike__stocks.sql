
with sales as(
  select 
  pd.product_id,
  product_name,
  category_name,
  brand_name,
  sum(quantity) as sales_qty
  from {{ ref('stg_local_bike__order_items' )}} oi 
  left join {{ ref('stg_local_bike__products') }} pd on pd.product_id = oi.product_id
  left join {{ ref('stg_local_bike__categories') }} ct on ct.category_id = pd.category_id
  left join {{ ref('stg_local_bike__brands') }} br on br.brand_id = pd.brand_id
  group by 
  pd.product_id, 
  product_name,
  category_name,
  brand_name
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
 product_name,
 category_name,
 brand_name,
 COALESCE(t.stock_qty,0) as stock_qty,
 a.sales_qty
 from sales a
 left join stock t on a.product_id = t.product_id
 group by 
 stock_qty, 
 sales_qty, 
 a.product_id, 
 product_name,
 category_name,
 brand_name

