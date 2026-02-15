{% docs int_local_bike__fav_product %}

This model presents the monthly favorite products, sorted in descending order. It was created by joining several tables such as order_items, orders, stores and staffs and incorporating multiple analytical dimensions.
- **order_date**: The date associated with the revenue, reduced to monthly granularity to enable better monitoring.
- **favorite_product_id**: product_id associated with the revenue.
- **staff_id**: staff_id associated with the revenue.
- **store_id**: store_id associated with the revenue.
- **total_quantity**: monthly product sold.

{% enddocs %}