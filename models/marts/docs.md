{% docs gross_vs_net_sales %}
### Regra de Negócio: Vendas Brutas vs. Vendas Líquidas

- **Vendas Brutas (`gross_amount`)**: Calculada como `order_qty * unit_price`. Representa a receita total transacionada antes da aplicação de descontos. Métrica oficial alinhada com o CEO.
- **Vendas Líquidas (`line_total`)**: Calculada como `order_qty * unit_price * (1.0 - unit_price_discount)`. Representa o valor real faturado após deduções promocionais.
{% enddocs %}

{% docs fct_sales_description %}
Tabela fato incremental de vendas detalhada por item de pedido (`sales_order_detail_id`). 
Conecta-se com as dimensões de **Cliente**, **Produto**, **Endereço** e **Cartão de Crédito**.
{% enddocs %}