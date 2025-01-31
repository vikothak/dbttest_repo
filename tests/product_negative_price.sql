select * from {{ref('dim_products_dbt')}}
where rounded_price<0