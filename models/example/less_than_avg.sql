{{ config(materialized='table') }}
select e.*,as1.average_sal from 
RAW_DATA.employees e  inner join {{ref('avg_sal')}} as1 
on (as1.department=e.department) and e.salary<as1.average_sal