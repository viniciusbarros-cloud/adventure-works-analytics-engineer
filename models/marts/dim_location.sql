with int_locations as (
    select * from {{ ref('int_locations') }}
),

final as (
    select
        -- Criação da Surrogate Key (SK) baseada no ID original
        {{ dbt_utils.generate_surrogate_key(['address_id']) }} as sk_location,
        
        -- Colunas originais da Intermediate
        address_id,
        city,
        state_name,
        country_name
    from int_locations
)

select * from final