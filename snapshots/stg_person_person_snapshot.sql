{% snapshot stg_person_person_snapshot %}

{{
    config(
        target_schema='snapshots',
        unique_key='businessentityid',
        strategy='timestamp',
        updated_at='modifieddate',
        invalidate_hard_deletes=True
    )
}}

select * from {{ source('adventure_works', 'person_person') }}

{% endsnapshot %}