with source as (
       
           select * from {{ source('adventure_works', 'sales_salesorderheader') }}
       
       ),
       
       renamed as (
       
           select
           -- Chaves primárias e estrangeiras

               salesorderid as sales_order_id,
               customerid as customer_id,
               salespersonid as sales_person_id,
               territoryid as territory_id ,
               billtoaddressid as bill_to_address_id ,
               shiptoaddressid as ship_to_address_id ,
               shipmethodid as ship_method_id,
               creditcardid as credit_card_id,
               currencyrateid as currency_rate_id,
               -- Datas
               cast(orderdate as date) as order_date,
               cast(duedate as date) as due_date,
               cast(shipdate as date) as ship_date,

              --Valores e Status
               status,
               revisionnumber as revision_number,
               onlineorderflag as is_online_order ,
               purchaseordernumber as purchase_order_number,
               accountnumber as account_number,
               creditcardapprovalcode as credit_card_approval_code,
               subtotal,
               taxamt as tax_amount,
               freight,
               totaldue as total_due,
               comment
               --rowguid,
               --modifieddate
       
           from source
       
       )
       
       select * from renamed