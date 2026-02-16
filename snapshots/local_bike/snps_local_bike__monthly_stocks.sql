{% snapshot snps_local_bike__monthly_stocks %}

{{
    config(
      target_schema='snapshots',
      unique_key='product_id',
      strategy='check',
      check_cols=['quantity_in_stock']
    )
}}

SELECT
    product_id,
    quantity_in_stock
FROM {{ ref('stg_local_bike__stocks') }}

{% endsnapshot %}
