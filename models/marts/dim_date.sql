with date_spine as (
    select
        dateadd(day, seq4(), '2010-01-01'::date) as date_day
    from table(generator(rowcount => 5844)) -- Coagula um período de ~16 anos (2010 a 2025)
),

final as (
    select
        cast(to_char(date_day, 'YYYYMMDD') as integer) as date_id,
        date_day as date,
        extract(day from date_day) as day,
        extract(month from date_day) as month,
        extract(year from date_day) as year,
        extract(quarter from date_day) as quarter,
        extract(dayofweek from date_day) as day_of_week,
        
        -- Novas colunas para o eixo do gráfico no Power BI:
        cast(to_char(date_day, 'YYYYMM') as integer) as year_month_id,
        to_char(date_day, 'MON/YYYY') as year_month_display
        
    from date_spine
    where date_day <= '2025-12-31'::date
)

select * from final