{% snapshot snps_local_bike__monthly_stocks %}

{{ 
    config(
        target_schema='snapshots',
        unique_key='stock_id',
        strategy='check',
        check_cols=['all']
    ) 
}}

SELECT
    stock_id,
    store_id,
    product_id,
    quantity_in_stock
FROM {{ ref('stg_local_bike__stocks') }}

{% endsnapshot %}
