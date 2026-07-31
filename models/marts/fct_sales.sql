{{ config(
        materialized='incremental',
        unique_key='sales_order_detail_id', 
        on_schema_change='fail'
    )
}}

with sales_header as (
    select * from {{ ref('stg_adventure_works__salesorderheader') }}
    
    -- O dbt só vai rodar este bloco se a tabela fato já existir no banco
    {% if is_incremental() %}
        -- Puxa apenas os pedidos cuja data seja maior ou igual à última data registrada na Fato
        where order_date >= (select max(order_date) from {{ this }})
    {% endif %}
),

sales_detail as (
    select * from {{ ref('stg_adventure_works__salesorderdetail') }}
),

joined as (
    select
        sales_detail.sales_order_detail_id,
        sales_header.sales_order_id,
        {{ dbt_utils.generate_surrogate_key(['sales_header.customer_id']) }} as sk_customer,
        {{ dbt_utils.generate_surrogate_key(['sales_detail.product_id']) }} as sk_product,
        {{ dbt_utils.generate_surrogate_key(['sales_header.ship_to_address_id']) }} as sk_location,
        {{ dbt_utils.generate_surrogate_key(['sales_header.credit_card_id']) }} as sk_credit_card,
        cast(to_char(sales_header.order_date::date, 'YYYYMMDD') as integer) as date_id,
        
        sales_header.order_date,
        sales_header.due_date,
        sales_header.ship_date,
        sales_header.status,
        sales_header.is_online_order,
        
       -- Métricas / Valores Numéricos (Transacionais) com CAST explícito
        sales_detail.order_qty,
        cast(sales_detail.unit_price as numeric(18,4)) as unit_price,
        cast(sales_detail.unit_price_discount as numeric(18,4)) as unit_price_discount,
        
        -- Cálculo do valor bruto e do valor líquido para verificar a precisão financeira
        -- Valor bruto (sem descontos) - A métrica solicitada pelo CEO
        cast(
            (sales_detail.order_qty * sales_detail.unit_price) 
            as numeric(18,4)
        ) as gross_amount,
        
        -- Vendas Líquidas (Com Desconto)
        cast(
            (sales_detail.order_qty * sales_detail.unit_price * (1.0 - sales_detail.unit_price_discount)) 
            as numeric(18,4)
        ) as line_total,
        
        cast(sales_header.tax_amount as numeric(18,4)) as tax_amount,
        cast(sales_header.freight as numeric(18,4)) as freight,
        cast(sales_header.total_due as numeric(18,4)) as total_due

    from sales_detail
    inner join sales_header
        on sales_detail.sales_order_id = sales_header.sales_order_id
)

select * from joined