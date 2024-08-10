{% snapshot emp_snapshot %}

{{
    config(
      target_database='DEV',
      target_schema='CURATED_DATA',
      unique_key='empid',
      strategy='check',
      check_cols=['location'],
      invalidate_hard_deletes=True
    )
}}

select * from DEV.RAW_DATA.RAW_EMP

{% endsnapshot %}