{{ config(materialized='table',
          pre_hook="{{remove_dups_ts('EMP_NODUPS','EMP', 'EMPNO','NA')}}"
          )
}}
select deptno,sum(sal) as sum_sal from 
CURATED_DATA.EMP_NODUPS
group by 1