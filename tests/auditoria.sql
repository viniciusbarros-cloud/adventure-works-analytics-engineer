select
    extract(year from order_date) as ano,
    round(sum(line_total), 2) as valor_calculado,
    12646112.16 as valor_esperado,
    round(sum(line_total), 2) - 12646112.16 as diferenca
from dbt_vini.fct_sales -- ajuste para o seu schema se necessário
where extract(year from order_date) = 2011
group by 1