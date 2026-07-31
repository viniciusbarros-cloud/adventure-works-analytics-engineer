with reason as (
    select * from {{ ref('stg_adventure_works__sales_salesreason') }}
),

final as (
    select
        sales_reason_id,
        reason_name as sales_reason_name,
        reason_type as sales_reason_type
    from reason
)

select * from final