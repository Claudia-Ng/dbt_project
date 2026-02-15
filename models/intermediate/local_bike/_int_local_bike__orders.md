{% docs int_local_bike__orders %}

This model presents the monthly revenue. It was created by joining several tables such as order_items, orders, products, brands and categories and incorporating multiple analytical dimensions.
- **order_date**: The date associated with the revenue, reduced to monthly granularity to enable better monitoring.
- **product_name**: product_name associated with the revenue.
- **brand_name**: brand_name associated with the revenue.
- **category_name**: store_id associated with the revenue.
- **total_revenue**: Revenue computed as the sum of revenues from the stg_local_bike__order_items model.

{% enddocs %}