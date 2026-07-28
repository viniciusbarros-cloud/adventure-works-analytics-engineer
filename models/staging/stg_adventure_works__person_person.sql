with source as (
       
           select * from {{ source('adventure_works', 'person_person') }}
       
       ),
       
       renamed as (
       
           select
           --Chave primária

               businessentityid as business_entity_id ,

            -- Dados pessoais do cliente

               persontype as person_type,
               namestyle as name_style,
               title,
               firstname as first_name,
               middlename as middle_name,
               lastname as last_name,
               suffix,
               emailpromotion as email_promotion,
               additionalcontactinfo as additional_contact_info,
               demographics
               --rowguid,
               --modifieddate
       
           from source
       
       )
       
       select * from renamed