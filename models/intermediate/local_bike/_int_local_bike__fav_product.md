{% docs _int_local_bike__fav_product %}

This model presents the monthly favorite products, sorted in descending order. It was created by joining several tables such as order_items, orders, stores and staffs and incorporating multiple analytical dimensions.
- **order_date**: The date associated with sold quantity, reduced to monthly granularity to enable better monitoring.
- **product_id**: product_id associated with sold quantity.
- **product_name**: product_name associated with the sold quantity.
- **brand_name**: product brand associated with the sold quantity
- **category_name**: product category associated with the sold quantity
- **total_quantity**: monthly product sold.

{% enddocs %}