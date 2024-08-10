{% macro audit_macro(model_name,status) %}
insert into curated_data.audit_tbl 
select '{{model_name}}','{{status}}',current_timestamp
{% endmacro %}