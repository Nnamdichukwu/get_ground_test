{% snapshot statuses_snapshot %}

{{
    config(
      target_database='getgroundtest-360217',
      target_schema='snapshots',
      unique_key='id',
      strategy='timestamp',
      updated_at='updated_at',
    )
}}

select * from {{ source('getground', 'referrals_table') }}

{% endsnapshot %}