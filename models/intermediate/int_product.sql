with product as (
    select * from {{ ref('stg_adventure_works__production_product') }}
),

subcategory as (
    select * from {{ ref('stg_adventure_works__production_productsubcategory') }}
),

category as (
    select * from {{ ref('stg_adventure_works__production_productcategory') }}
),

joined as (
    select
        product.product_id,
        product.product_name,
        subcategory.subcategory_name,
        category.category_name
    from product
    left join subcategory 
        on product.product_subcategory_id = subcategory.product_subcategory_id
    left join category 
        on subcategory.product_category_id = category.product_category_id
)

select * from joined