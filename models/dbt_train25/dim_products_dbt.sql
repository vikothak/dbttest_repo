
{{
    config(
    materialized='table',
    alias='dim_products_jan29',
    pre_hook=["USE WAREHOUSE COMPUTE_WH",
            "insert into curated_data.audit_tbl select 'dim_products_model','started',current_timestamp ",
        ],
    post_hook=["insert into curated_data.audit_tbl select 'dim_products_model','completed',current_timestamp ",
                     "GRANT SELECT ON TABLE CURATED_DATA.dim_products_jan29 TO ROLE SYSADMIN"]
    )
}}
 
 select "id","name","category",round("price") as rounded_price from
{{source('raw_data','stg_products')}}