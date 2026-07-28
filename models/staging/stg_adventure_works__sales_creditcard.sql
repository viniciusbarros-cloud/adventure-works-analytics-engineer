with source as (
       
           select * from {{ source('adventure_works', 'sales_creditcard') }}
       
       ),
       
       renamed as (
       
           select
            --Chave primária
               creditcardid as credit_card_id,
            --Outros atributos do cartão
               cardtype as card_type,
               cardnumber as card_number,
               expmonth as expiration_month,
               expyear as expiration_year,
               modifieddate as modified_date
       
           from source
       
       )
       
       select * from renamed