with source as (
       
           select * from {{ source('adventure_works', 'production_productsubcategory') }}
       
       ),
       
       renamed as (
       
           select
           --Nome do produto

               name as subcategory_name,
           --Chaves primárias e estrangeiras
          
               productsubcategoryid as product_subcategory_id,
               productcategoryid as product_category_id
               
       
           from source
       
       )
       
       select * from renamed