{% snapshot stg_production_product_snapshot %}

{{
    config(
        target_schema='snapshots',
        unique_key='productid',
        strategy='timestamp',
        updated_at='modifieddate',
        invalidate_hard_deletes=True
    )
}}

select * from {{ source('adventure_works', 'production_product') }}

{% endsnapshot %}