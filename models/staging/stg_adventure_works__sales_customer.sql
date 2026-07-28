with source as (
       
           select * from {{ source('adventure_works', 'sales_customer') }}
       
       ),
       
       renamed as (
       
           select
           --Chaves primárias e estrangeiras
               customerid as customer_id,
               personid as person_id,
               storeid as store_id,
               territoryid as territory_id
       
           from source
       
       )
       
       select * from renamed