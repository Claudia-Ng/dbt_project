SELECT *
FROM {{ ref('snps_local_bike__monthly_stocks') }}
WHERE quantity_in_stock = 0
AND dbt_valid_to IS NULL
