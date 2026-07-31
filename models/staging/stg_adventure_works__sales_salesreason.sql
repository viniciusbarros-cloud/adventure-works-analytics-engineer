with source as (
       
           select * from {{ source('adventure_works', 'sales_salesreason') }}
       
       ),
       
       renamed as (
       
           select
            --Chave primária
               salesreasonid as sales_reason_id,
               name as reason_name,
               reasontype as reason_type,
               modifieddate as modified_date
       
           from source
       
       )
       
       select * from renamed