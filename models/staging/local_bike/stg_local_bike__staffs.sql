select 
staff_id,
first_name,
last_name,
email,
phone,
active,
store_id,
COALESCE(SAFE_CAST(manager_id AS INT64),0) AS manager_id
from {{ source('local_bike', 'staffs') }}