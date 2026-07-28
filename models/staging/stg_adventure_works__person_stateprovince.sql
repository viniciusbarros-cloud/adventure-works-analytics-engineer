 with source as (
       
           select * from {{ source('adventure_works', 'person_stateprovince') }}
       
       ),
       
       renamed as (
       
           select
            --Chaves primárias e estrangeiras

               stateprovinceid as state_province_id,
                territoryid as territory_id,

            --Atributos de estado e de país
               name as state_name,
               stateprovincecode as state_province_code ,
               countryregioncode as country_region_code ,
               isonlystateprovinceflag as is_only_state_province_flag 
               --,rowguid,modifieddate
       
           from source
       
       )
       
       select * from renamed