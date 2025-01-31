{{
    config(
    materialized='incremental',
    unique_key='"order_id"',
    alias='fact_orders_dbt'
    )
}}


select
* from DEV.RAW_DATA.STG_ORDERS
{% if is_incremental() %}
-- this filter will only be applied on an incremental run
where "order_date" > (select max("order_date") from {{this}} )
{% endif %}