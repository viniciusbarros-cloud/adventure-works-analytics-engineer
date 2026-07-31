with header_reason as (
    select * from {{ ref('stg_adventure_works__sales_salesorderheadersalesreason') }}
),

final as (
    select
        sales_order_id,
        sales_reason_id
    from header_reason
)

select * from final