with source as (
       
           select * from {{ source('adventure_works', 'production_productcategory') }}
       
       ),
       
       renamed as (
       
           select
           --Nome da categoria do produto
            name as category_name,
           --Chave primária
             productcategoryid as product_category_id
               --,rowguid,modifieddate
       
           from source
       
       )
       
       select * from renamed