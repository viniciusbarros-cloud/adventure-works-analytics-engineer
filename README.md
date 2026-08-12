# 🚀 Projeto de Data Warehouse & BI: Adventure Works

## 1. Construção do Data Warehouse (Engenharia de Analytics)

### Objetivo
Desenvolver um Data Warehouse moderno utilizando o Snowflake para consolidar os dados de vendas da Adventure Works, uma indústria em expansão com mais de 500 produtos distintos, 20.000 clientes e 31.000 pedidos. O objetivo principal é viabilizar relatórios analíticos estratégicos e transformar a empresa em uma organização guiada por dados (*data-driven*).

### Especificações
*  **Fontes e Modelagem**: Unificar as bases no Snowflake, construir um Data Warehouse moderno em 3 camadas com modelagem de dados em Star Schema.

* **Qualidade e Governança**: Garantir a integridade dos dados através de testes automatizados no dbt e controle de acessos via DCL e DDL.

* **Transformações Avançadas**: Implementar historização de dados com SCD e Snapshots, além de materialização incremental para performance.

* **Documentação e Orquestração**: Gerar a documentação com o dbt docs, promover o versionamento no GitHub e automatizar a execução do pipeline.

---

## 2. BI: Análise e Relatórios (Análise de Dados)

### Objetivo
Desenvolver um dashboard executivo e interativo no Power BI para fornecer *insights* detalhados sobre o desempenho do negócio. A estrutura do relatório deverá atender às seguintes perguntas estratégicas da diretoria:

1. Qual o número de pedidos, quantidade comprada, valor total negociado por mês e ano ?

2. Quais os produtos com maior ticket médio por mês, ano, cidade, estado e país? 

3. Quais os 10 melhores clientes por valor total negociado filtrado por produto, tipo de cartão, motivo de venda, data de venda, status, cidade, estado e país?

4. Qual produto tem a maior quantidade de unidades compradas para o motivo de venda “Promotion”?

5. Quais as 5 melhores cidades em valor total negociado por produto, tipo de cartão, motivo de venda, data de venda, cliente, status, cidade, estado e país?

6. Qual o número de pedidos, quantidade comprada, valor total negociado por produto, tipo de cartão, motivo de venda, data de venda, cliente, status, cidade, estado e país?

---

## 3. Estrutura do Projeto & Tecnologias
*   **Data Warehouse:** Snowflake
*   **Ferramenta de Transformação:** dbt (data build tool)
*   **Visualização de Dados:** Power BI
*   **Repositório de Código:** GitHub
