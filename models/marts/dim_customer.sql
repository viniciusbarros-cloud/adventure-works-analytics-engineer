with customer as (
    select * from {{ ref('stg_adventure_works__sales_customer') }}
),

person as (
    select * from {{ ref('stg_adventure_works__person_person') }}
),

joined as (
    select
        customer.customer_id,
        coalesce(
            trim(concat(coalesce(person.first_name, ''), ' ', coalesce(person.last_name, ''))),
            'Cliente PJ / Não Informado'
        ) as customer_name
    from customer
    left join person
        on customer.person_id = person.business_entity_id
),

final as (
    select
        {{ dbt_utils.generate_surrogate_key(['customer_id']) }} as sk_customer,
        customer_id,
        customer_name
    from joined
)

select * from final