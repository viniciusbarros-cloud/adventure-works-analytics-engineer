-- Teste Singular: Integridade Temporal de Pedidos
-- Regra: A data de criação do pedido (order_date) deve ser sempre menor ou igual à data de envio (ship_date).
-- Se a query retornar qualquer linha, significa que há anomalia nos dados de origem.

select
    sales_order_detail_id,
    sales_order_id,
    order_date,
    ship_date
from {{ ref('fct_sales') }}
where ship_date is not null
  and order_date > ship_date