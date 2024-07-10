{{ config
	(materialized='table', 
	alias='DIM_PRODUCTS',
    pre_hook="{{remove_dups('products','products_unique','\"id\"','NA')}}",
    post_hook="{{audit_macro('products_model','completed')}}")
}}

select "id","name","category",round("price") as price
from {{ source('raw source','products')}}
