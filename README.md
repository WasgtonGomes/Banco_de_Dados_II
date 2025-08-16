# Banco_de_Dados_II
💾 Repositório com atividades e avaliações da disciplina **Banco de Dados II** – IFRO (3º Período ADS, 2022/02).  

Inclui **modelagem ER**, **DDL**, **DML**, **consultas avançadas** (JOIN, GROUP BY, HAVING, funções, subqueries) e **estudos de caso aplicados** a diferentes cenários reais.

---

## 👨‍🏫 Informações acadêmicas
- **Turma:** 3º Período ADS 2022/02  
- **Discente:** Wasgton Gomes Pereira  

---

## 🗂️ Casos de estudo e bancos

### 🔧 Mecânica
- **Banco:** `bd_mecanica_7`  
- **Conteúdo:** Estado, Cidade, Endereco, Sexo, Cliente, Carro, Departamento, Funcionario, Fornecedor, Produto, Servico, Compra/Itens, Caixa, Venda/Itens, Recebimentos, Despesas, Pagamentos.  
- **Inclui:** *Exercícios de fixação* (SELECT com filtros, agregações, GROUP BY/HAVING, MIN/MAX/AVG/SUM, etc.).

### 🍝 Restaurante Noturno (com entrega/app)
- **Banco:** `Restaurante_Noturno_com_Entrega_WASGTON`  
- **Conteúdo:** Funcionário, Cliente, Fornecedor, Mesa, Prato, Entregador_App, Produto, Compra/Produto, Pedido, Reserva, Caixa, Despesa, Pagamento, Entrega, Venda, Recebimento, Venda_Prato, Venda_Produto.  
- **Foco:** DDL completo para operações de restaurante + delivery.

### 🎬 Cinema (versão principal)
- **Banco:** `bd_cinema_aula_insert_Wasgton`  
- **Conteúdo:** Cliente, Fornecedor, Despesa, Funcionario, Caixa, Pagamento, Filme, Sala, Poltrona, Sessao, Ingresso, Venda, Produto, Venda_Produto, Compra, Compra_Produto.  
- **Desmembramentos:** Sexo, Tipo_Sanguineo, Funcao, Classificacao (normalização + FKs).  
- **Inclui:** *SELECTs avançados* com múltiplos JOINs e métricas.

### 🎬 Cinema – Atividade VIII
- **Banco:** `bd_cinema_aula_insert_Wasgton_Atividade_VIII`  
- **Similar** ao anterior, com *scripts de prática de normalização* e *atualizações de FKs*.

### ⭐ Cinema Top Five
- **Banco:** `cinema_top_five_wasgton`  
- **Conteúdo:** foco em **ingresso/sessão/poltrona/venda** e operações de caixa/recebimento, além de produto/compra/despesa/pagamento.

### 🧪 BD Aula 1 (intro)
- **Banco:** `bd_aula1`  
- **Conteúdo:** Cliente, Cidade, Funcionario, Produto, Venda, Venda_Produto (relacionamentos básicos e FKs).

### 🌎 Hora de Praticar – Aula 02
- **Banco:** `hora_praticar_aula_02`  
- **Conteúdo:** País, Estado, Cidade, Endereço, Cliente (cadeia de FKs e cadastro geográfico).

### 🖥️ Techtop (Loja de Informática) – Avaliação Final
- **Banco:** `bd_Techtop_by_Wasgton_avaliacao`  
- **Conteúdo:** Cliente, Fornecedor, Funcionario, Produto, Serviço, Compra/Produto, Venda/Serviço/Produto, Caixa, Despesa, Pagamento, Recebimento.  
- **Objetivo da avaliação:**  
  - Criação do banco e tabelas seguindo boas práticas (PKs, FKs, nomes com sufixos, 3ª tabela em N:N).  
  - Inserção de dados coerentes com cenário real (clientes, fornecedores, funcionários, produtos, serviços, vendas e compras).  
  - Execução de **20 tarefas DML**: `INSERT`, `UPDATE`, `DELETE`, `ALTER TABLE` e `SELECT` com filtros, agregações, JOINs e subconsultas.  
- **Exemplos de comandos da avaliação:**  
  - Alterar atributos (`ALTER TABLE`)  
  - Atualizar registros condicionais (`UPDATE`)  
  - Consultas avançadas (`JOIN`, `AVG`, `MAX`, `SUM`)  
  - Exercícios de vinculação entre clientes, produtos e serviços.

---

## ▶️ Como executar
1. Abra o **MySQL Workbench** ou terminal.  
2. Execute o script do banco desejado:
   ```bash
   mysql -u root -p < Atividades/mecanica/mecanica.sql
