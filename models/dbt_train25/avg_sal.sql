{{ config(materialized='ephemeral') }}
select deptno,avg(sal) as average_sal from RAW_DATA.EMP group by 1
