{% snapshot stg_sales_customer_snapshot %}

{{
    config(
        target_schema='snapshots',
        unique_key='customerid',
        strategy='timestamp',
        updated_at='modifieddate',
        invalidate_hard_deletes=True
    )
}}

select * from {{ source('adventure_works', 'sales_customer') }}

{% endsnapshot %}