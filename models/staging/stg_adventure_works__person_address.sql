 with source as (
       
           select * from {{ source('adventure_works', 'person_address') }}
       
       ),
       
       renamed as (
       
           select
           --Chaves primárias e estrangeiras
               addressid as address_id,
           --Informações gerais de endereço
               addressline1 as address_line_1,
               addressline2 as address_line_2,
               city,
               stateprovinceid as state_province_id,
               postalcode as postal_code,
               spatiallocation as spatial_location
               --,rowguid,modifieddate
       
           from source
       
       )
       
       select * from renamed