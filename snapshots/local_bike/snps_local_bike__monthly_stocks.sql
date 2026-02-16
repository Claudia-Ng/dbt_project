{% snapshot snps_local_bike__monthly_stocks %}

{{ 
    config(
        target_schema='snapshots',
        unique_key='product_id',
        strategy='check',
        check_cols=['stock_qty']
    ) 
}}

SELECT
    product_id,
    stock_qty
FROM {{ ref('int_local_bike__stocks') }}

{% endsnapshot %}
