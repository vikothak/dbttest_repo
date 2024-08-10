{% macro remove_dups(target_table,source_table,unique_id,date_col) %}
insert into curated_data.{{target_table}}
select t.*
from raw_data.{{source_table}} t
qualify row_number() over(partition by {{unique_id}} order by {{date_col}} DESC)=1
{% endmacro %}