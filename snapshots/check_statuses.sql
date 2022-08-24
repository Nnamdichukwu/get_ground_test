{% snapshot statuses_snapshot %}

{{
    config(
      target_database='getgroundtest-360217',
      target_schema='snapshots',
      unique_key='id',
      strategy='check',
      check_cols='all',
    )
}}

select * from {{ source('getground', 'referrals_table') }}

{% endsnapshot %}