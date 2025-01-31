{{ config(materialized='table',
          pre_hook="{{remove_dups_ts('EMPLOYEE_NODUPS','EMPLOYEE', 'EMPID','INSERTED_AT')}}"
          )
}}
select * from 
CURATED_DATA.EMPLOYEE_NODUPS