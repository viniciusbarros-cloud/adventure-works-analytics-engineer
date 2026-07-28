with address as (
    select * from {{ ref('stg_adventure_works__person_address') }}
),

state_province as (
    select * from {{ ref('stg_adventure_works__person_stateprovince') }}
),

country_region as (
    select * from {{ ref('stg_adventure_works__person_countryregion') }}
),

joined as (
    select
        address.address_id,
        address.city,
        state_province.state_name, 
        country_region.country_name 
    from address
    left join state_province 
        on address.state_province_id = state_province.state_province_id
    left join country_region 
        on state_province.country_region_code = country_region.country_region_code
)

select * from joined