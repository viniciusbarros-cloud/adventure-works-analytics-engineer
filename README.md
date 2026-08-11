# 🚀 Projeto de Data Warehouse & BI: Adventure Works

## 1. Construção do Data Warehouse (Engenharia de Dados)

### Objetivo
Desenvolver um Data Warehouse moderno utilizando o Snowflake para consolidar os dados de vendas da Adventure Works, uma indústria em expansão com mais de 500 produtos distintos, 20.000 clientes e 31.000 pedidos. O objetivo principal é viabilizar relatórios analíticos estratégicos e transformar a empresa em uma organização guiada por dados (*data-driven*).

### Especificações
*   **Fontes de Dados:** Dados mapeados e extraídos dos sistemas legados / Databricks.
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
Desenvolver dashboards analíticos e interativos no Power BI para fornecer *insights* detalhados sobre o desempenho do negócio. A estrutura dos relatórios atende diretamente às perguntas estratégicas da diretoria, organizadas por página conforme a ordem de apresentação:

1. **Página 1 - Visão Geral do Negócio (Item e):**
   * Análise temporal da evolução do **Número de Pedidos**, **Quantidade Comprada** e **Valor Total Negociado** mês a mês e ano a ano via gráfico de série de tempo.

2. **Página 2 - Análise de Produtos e Clientes (Item b):**
   * Identificação dos produtos com **maior Ticket Médio** por mês, ano, cidade, estado e país ($\text{Ticket Médio} = \frac{\text{Faturamento Bruto} - \text{Descontos}}{\text{Número de Pedidos}}$).

3. **Página 2 - Análise de Produtos e Clientes (Item c):**
   * Ranking dos **10 melhores clientes** por valor total negociado, com capacidade de filtragem por produto, tipo de cartão, motivo de venda, data, status, cidade, estado e país.

4. **Página 2 - Análise de Produtos e Clientes (Item f):**
   * Destaque do produto com a **maior quantidade de unidades compradas** associado especificamente ao motivo de venda *"Promotion"*.

5. **Página 3 - Análise Geográfica (Item d):**
   * Ranking das **5 melhores cidades** em valor total negociado, com visões dinâmicas por produto, tipo de cartão, motivo de venda, data, cliente, status, cidade, estado e país.

6. **Página 4 - Detalhamento de Vendas (Item a):**
   * Tabela analítica completa detalhando o **Número de Pedidos**, **Quantidade Comprada** e **Valor Total Negociado** cruzando todas as 9 dimensões de negócio (produto, tipo de cartão, motivo de venda, data de venda, cliente, status, cidade, estado e país).

---

## 3. Estrutura do Projeto & Tecnologias
*   **Data Warehouse:** Snowflake
*   **Ferramenta de Transformação:** dbt (data build tool)
*   **Visualização de Dados:** Power BI
*   **Repositório de Código:** GitHub
