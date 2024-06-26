/*CEO Carlos mencionou, que as vendas brutas no ano de 2011 foram de $12.646.112,16.*/
/*Teste para validar as vendas de 2011*/
with
    vendas_em_2011 as (
        select 
            sum(faturamento_bruto) as total_bruto
        from {{ ref('fact_vendas') }}
        where data_pedido between '2011-01-01' and '2011-12-31'
    )

select total_bruto
from vendas_em_2011 -- 12646112,16
where total_bruto not between 12646111 and 12646113


