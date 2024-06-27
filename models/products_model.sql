{{ config
	(materialized='table', 
	alias='DIM_PRODUCTS')
}}

select "id","name","category",round("price") as price
from {{ source('raw source','products')}}
