
{% test stockout(model, column_name) %}
select *
from {{ model }}
where {{ column_name }} = 0
  and dbt_valid_to is null
{% endtest %}

