with int_product as (
    select * from {{ ref('int_product') }}
),

final as (
    select
        -- Criação da Surrogate Key (SK)
        {{ dbt_utils.generate_surrogate_key(['product_id']) }} as sk_product,
        
        product_id,
        product_name,
        subcategory_name,
        category_name
    from int_product
)

select * from final