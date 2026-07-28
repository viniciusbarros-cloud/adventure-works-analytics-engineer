with source as (
       
           select * from {{ source('adventure_works', 'sales_salesorderdetail') }}
       
       ),
       
       renamed as (
       
           select
            --Chaves primárias e estrangeiras
               salesorderid as sales_order_id,
               salesorderdetailid as sales_order_detail_id,
               productid as product_id,
               specialofferid as special_offer_id,

            --Pedidos
               carriertrackingnumber as carrier_tracking_number,
               orderqty as order_qty,
               unitprice as unit_price,
               unitpricediscount as unit_price_discount
               --rowguid,
               --modifieddate
       
           from source
       
       )
       
       select * from renamed