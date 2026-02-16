{% docs _mrt_monthly_highest_revenue_products_tracking %}

This model presents the monthly favorite products, sorted in descending order. It was created by joining several tables such as order_items, orders, stores and staffs and incorporating multiple analytical dimensions.
- **order_date**: The date associated with the revenue, reduced to monthly granularity to enable better monitoring.
- **product_name**: product_id associated with the revenue.
- **brand_name**:product brand associated with the revenue.
- **category_name**: product category associated with the revenue.
- **total_revenue**: Revenue calculated by summing the total amount of each order item, where the total amount is determined as (sale_price × quantity).

{% enddocs %}