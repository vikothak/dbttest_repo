{{ config(materialized='view',alias='DIM_PRODUCTS_VW') }}

select "id","name",round("price") as round_price from 
DEV.RAW_DATA."products"
