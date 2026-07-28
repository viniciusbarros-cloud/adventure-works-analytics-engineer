 with source as (
       
           select * from {{ source('adventure_works', 'person_countryregion') }}
       
       ),
       
       renamed as (
       
           select
           --Atributos de nome do país, código e modificação da data, 
               countryregioncode as country_region_code,
               name as country_name,
               modifieddate as modified_date
       
           from source
       
       )
       
       select * from renamed