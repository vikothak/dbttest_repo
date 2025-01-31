{{ config(materialized='table') }}
select e.*,as1.average_sal from 
RAW_DATA.emp e  inner join {{ref('avg_sal')}} as1 
on (as1.deptno=e.deptno) and e.sal<as1.average_sal