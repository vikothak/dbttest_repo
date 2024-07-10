{{ config(materialized='ephemeral') }}

select deptno,avg(sal) as average_sal from RAW_DATA.EMPLOYEE group by 1