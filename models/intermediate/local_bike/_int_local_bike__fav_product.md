{% docs _int_local_bike__fav_product %}

This model presents the monthly favorite products, sorted in descending order. It was created by joining several tables such as order_items, orders, stores and staffs and incorporating multiple analytical dimensions.
<<<<<<< HEAD
- **order_date**: The date associated with sold quantity, reduced to monthly granularity to enable better monitoring.
- **product_id**: product_id associated with sold quantity.
- **product_name**: product_name associated with the sold quantity.
- **brand_name**: product brand associated with the sold quantity
- **category_name**: product category associated with the sold quantity
=======
- **order_date**: The date associated with the revenue, reduced to monthly granularity to enable better monitoring.
- **product_id**: product_id associated with the revenue.
>>>>>>> 91d9234723e7a8331c40c99e0b2308818abe0817
- **total_quantity**: monthly product sold.

{% enddocs %}