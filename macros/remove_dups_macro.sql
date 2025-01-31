{% macro remove_dups(target_table,source_table,unique_id) %}
insert into curated_data.{{target_table}}
select t.*
from raw_data.{{source_table}} t
qualify row_number() over(partition by {{unique_id}} order by {{unique_id}} DESC)=1
{% endmacro %}