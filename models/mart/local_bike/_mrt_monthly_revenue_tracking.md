{% docs _mrt_monthly_revenue_tracking %}

This model presents the monthly revenue.
- **order_date**: The date associated with the revenue, reduced to monthly granularity to enable better monitoring.
- **total_revenue**: Revenue calculated by summing the total amount of each order item, where the total amount is determined as (sale_price × quantity).

{% enddocs %}