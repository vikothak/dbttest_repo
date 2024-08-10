{{ config(materialized='table',alias='emp_agg_data',
          pre_hook=["{{remove_dups('emp_tgt','emp','empno','hiredate')}}"]
)
}}
select deptno,sum(sal) as sum_sal from curated_data.emp_tgt
group by all


