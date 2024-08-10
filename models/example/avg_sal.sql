{{ config(materialized='ephemeral') }}
select department,avg(salary) as average_sal from RAW_DATA.EMPLOYEES group by 1
