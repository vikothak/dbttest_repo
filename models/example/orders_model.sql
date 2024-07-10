
{{ config
	(materialized='view', 
	alias='FACT_ORDERS')
}}

select ORDER_ID ,PRODUCT_ID ,customer_id ,quantity ,order_date ,extract(year from order_date) as year,
extract(quarter from order_date) as qtr,extract(month from order_date) as order_month
from {{ source('raw source','orders')}}