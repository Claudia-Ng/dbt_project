{% docs _int_local_bike__highest_revenue_month %}

This model presents the monthly revenue, sorted in descending order. It was created by joining several tables such as order_items, orders, stores and staffs and incorporating multiple analytical dimensions.
- **order_date**: The date associated with the revenue, reduced to monthly granularity to enable better monitoring.
- **favorite_product_id**: product_id associated with the revenue.
- **staff_id**: staff_id associated with the revenue.
- **store_id**: store_id associated with the revenue.
<<<<<<< HEAD
- **product_name**: product_id associated with the revenue.
- **brand_name**:product brand associated with the revenue.
- **category_name**: product category associated with the revenue.
=======
>>>>>>> 91d9234723e7a8331c40c99e0b2308818abe0817
- **total_quantity**: Montghly product sold derived from the monthly aggregation of order item quantities .

{% enddocs %}