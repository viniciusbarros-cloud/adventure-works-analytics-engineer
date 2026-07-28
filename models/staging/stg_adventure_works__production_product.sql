with source as (
       
           select * from {{ source('adventure_works', 'production_product') }}
       
       ),
       
       renamed as (
       
           select
           -- Chaves primárias e estrangeiras

               productid as product_id,
               productsubcategoryid as product_subcategory_id,
               productmodelid as product_model_id,
            -- atributos dos produtos

               name as product_name,
               productnumber as product_number,
               makeflag,
               finishedgoodsflag as finished_goods_flag,
               color,
               safetystocklevel as safety_stock_level,
               reorderpoint as reorder_point,
               standardcost as standard_cost,
               listprice as list_price,
               size,
               sizeunitmeasurecode as size_unit_measure_code,
               weightunitmeasurecode as weight_unit_measure_code,
               weight,
               daystomanufacture as days_to_manufacture,
               productline as product_line,
               class,
               style,
               sellstartdate as sell_start_date,
               sellenddate as sell_end_date,
               discontinueddate as discontinued_date,
               modifieddate as modified_date
               --,rowguid,modifieddate
       
           from source
       
       )
       
       select * from renamed
       