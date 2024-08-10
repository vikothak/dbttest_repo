{{ config(materialized='table',
          pre_hook=["{{audit_macro('dim_products_model','Started')}}"],
          post_hook=["{{audit_macro('dim_products_model','completed')}}"]
		  )
}}	
select id,name,category,round(price) as price 
from {{source('raw_data','products')}}