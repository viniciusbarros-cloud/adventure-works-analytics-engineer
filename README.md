# 🚀 Projeto de Data Warehouse & BI: Adventure Works

## 1. Construção do Data Warehouse (Engenharia de Analytics)

### Objetivo
Desenvolver um Data Warehouse moderno utilizando o Snowflake para consolidar os dados de vendas da Adventure Works, uma indústria em expansão com mais de 500 produtos distintos, 20.000 clientes e 31.000 pedidos. O objetivo principal é viabilizar relatórios analíticos estratégicos e transformar a empresa em uma organização guiada por dados (*data-driven*).

### Especificações
*   **Fontes de Dados:** Dados mapeados e extraídos dos registros do Databricks.
*   **Qualidade dos Dados:** Implementação de testes genéricos (como verificação de chaves primárias únicas e não nulas) e testes singulares (regras de negócio customizadas) via dbt para garantir a integridade dos dados antes da camada analítica.
*   **Integração:** Consolidação das fontes em um modelo de dados amigável e otimizado para consultas analíticas utilizando a modelagem Star Schema (Tabelas Fato e Dimensão).
*   **Arquitetura:** Arquitetura Medalhão (*Medallion Architecture*) dividida nas camadas Bronze (Staging), Silver (Intermediate) e Gold (Marts).
*   **Transformações Avançadas:** Implementação de *Slowly Changing Dimensions* (SCD), *Snapshots* e Materialização Incremental via dbt para otimização de custo e performance.
*   **Segurança e Governança:** Aplicação de comandos DCL (*Data Control Language*) para gestão de acessos e permissões por perfil de usuário, e DDL (*Data Definition Language*) para estruturação dos esquemas no Snowflake.
*   **Documentação e Versionamento:** Documentação detalhada dos modelos utilizando `dbt docs` e controle de versão de todo o código no GitHub.
*   **Orquestração:** Automação e agendamento da execução do pipeline para garantir o frescor constante dos dados.

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
