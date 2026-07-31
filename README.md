

# Analytics Engineering - Adventure Works DW

Projeto de Data Warehousing para a Adventure Works construído com **dbt** e **Snowflake**.

## Arquitetura de Dados
- **Staging (`stg_`)**: Limpeza, padronização e conversão de tipos das tabelas brutas.
- **Marts (`dim_`, `fct_`)**: Modelagem dimensional em Star Schema com tabelas incrementais e Data Contracts ativos.

## Comandos Úteis
- Rodar o pipeline: `dbt run`
- Rodar bateria de testes: `dbt test`
- Gerar documentação: `dbt docs generate` e `dbt docs serve`