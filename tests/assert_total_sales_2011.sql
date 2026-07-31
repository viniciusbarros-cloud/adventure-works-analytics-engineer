-- Teste Singular: Validação da Métrica do CEO (Carlos Silveira)
-- Regra: As vendas brutas (line_total) de 2011 devem somar exatamente $12.646.112,16.
-- Nota: No dbt, a query deve retornar registros APENAS se houver erro (diferença != 0).

with sales_2011 as (
    select
        round(sum(gross_amount), 2) as calculated_gross_sales -- Mudamos para gross_amount
    from {{ ref('fct_sales') }}
    where extract(year from order_date) = 2011
)

select
    calculated_gross_sales,
    12646112.16 as expected_sales,
    (calculated_gross_sales - 12646112.16) as difference
from sales_2011
where calculated_gross_sales != 12646112.16