# PostgreSQL - Unaerp

<p align="center">
  <img alt="PostgreSQL" src="https://img.shields.io/badge/PostgreSQL-16%2B-336791?logo=postgresql&logoColor=white" />
  <img alt="SQL" src="https://img.shields.io/badge/SQL-Exercises-4169E1?logo=postgresql&logoColor=white" />
  <img alt="status" src="https://img.shields.io/badge/status-ativo-2EA44F" />
  <img alt="licença" src="https://img.shields.io/badge/licen%C3%A7a-MIT-blue" />
</p>

## Sumário

- [Descrição do Projeto](#descrição-do-projeto)
- [Arquitetura e Estrutura do Repositório](#arquitetura-e-estrutura-do-repositório)
- [Como Executar Localmente](#como-executar-localmente)
- [Uso e Exemplos](#uso-e-exemplos)
- [Troubleshooting / FAQ](#troubleshooting--faq)
- [Contribuição](#contribuição)
- [Autor](#autor)
- [Licença](#licença)

## Descrição do Projeto

Este repositório foi pensado para apoiar o estudo de Banco de Dados com PostgreSQL, especialmente em contextos acadêmicos. Ele reúne materiais didáticos em formato de scripts SQL, divididos por assunto, permitindo praticar conceitos de modelagem e consulta de forma organizada e incremental.

Os arquivos dentro do projeto abordam:

- criação e alteração de estruturas de banco (DDL)
- definição de chaves primárias e estrangeiras
- consultas com filtros e ordenação
- junções entre tabelas
- uso de agregações e agrupamentos
- resolução de exercícios práticos com dados relacionais

A proposta principal é permitir que o aluno execute cada script de forma isolada em um banco PostgreSQL, validando o resultado das operações SQL diretamente no ambiente do SGBD.

## Arquitetura e Estrutura do Repositório

A organização do repositório é simples e funcional:

```text
postgresql-unaerp/
├── LICENSE
├── README.md
├── exercicios-select/
│   └── select-exs.sql
├── exercicios-tables/
│   ├── tables-ex1.sql
│   ├── tables-ex2.sql
│   ├── tables-ex3.sql
│   ├── tables-ex4.sql
│   ├── tables-ex5.sql
│   ├── tables-ex6.sql
│   ├── tables-ex7.sql
│   ├── tables-ex8.sql
│   ├── tables-ex9.sql
│   └── tables-ex10.sql
└── ...
```

### Organização por pasta

- `exercicios-tables/`: scripts relacionados à criação de tabelas, constraints, chaves primárias/estrangeiras e modelagem inicial.
- `exercicios-select/`: consultas com `SELECT`, `WHERE`, `ORDER BY`, `JOIN`, filtros e demais operações de leitura de dados.

### Fluxo de dados

O fluxo do projeto é direto:

1. O usuário conecta-se a um banco PostgreSQL local.
2. Executa um arquivo SQL específico usando o comando `psql` ou uma ferramenta de banco.
3. O script cria tabelas, insere ou consulta dados conforme o exercício.
4. O resultado é validado no próprio ambiente do PostgreSQL.

Não há camada de aplicação web ou API; o sistema é executado diretamente sobre o banco de dados.

## Como Executar Localmente

### Pré-requisitos

Antes de começar, verifique se você possui:

- PostgreSQL instalado e em execução
- Cliente `psql` disponível no terminal
- Git para clonar o repositório
- Um banco de dados de teste local configurado

### Configuração de ambiente

Este projeto não utiliza um arquivo `.env` obrigatório para execução básica. Em muitos casos, basta configurar um banco local com credenciais simples, como:

```bash
export PGHOST=localhost
export PGUSER=postgres
export PGPASSWORD=sua_senha
export PGDATABASE=unaerp
```

Se você preferir, também pode informar diretamente no comando `psql` os parâmetros de conexão.

### Instalação

```bash
git clone https://github.com/GiovanniJorge/postgresql-unaerp.git
cd postgresql-unaerp
```

### Execução

Para executar um exercício de criação de tabelas:

```bash
psql -h localhost -U postgres -d unaerp -f exercicios-tables/tables-ex1.sql
```

Para executar um script de consultas:

```bash
psql -h localhost -U postgres -d unaerp -f exercicios-select/select-exs.sql
```

> Ajuste o nome do usuário e do banco conforme sua instalação local.

## Uso e Exemplos

### Exemplo 1: Criar estruturas de banco

```sql
CREATE TABLE tb_departamentos (
    cod_depto CHAR(2),
    nm_depto VARCHAR(60),
    CONSTRAINT pk_tb_depto_cod_depto PRIMARY KEY(cod_depto)
);
```

### Exemplo 2: Consultar dados

```sql
SELECT nome
FROM tb_funcionarios
WHERE salario < 2600;
```

### Exemplo 3: Relacionar tabelas com JOIN

```sql
SELECT nm_depto
FROM tb_departamentos
INNER JOIN tb_funcionarios
ON tb_departamentos.cod_depto = tb_funcionarios.cod_depto;
```

Esses exercícios servem para praticar a lógica relacional e os comandos SQL básicos que aparecem em disciplinas de Banco de Dados.

## Troubleshooting / FAQ

### 1) Erro de conexão com PostgreSQL

Verifique se:

- o serviço do PostgreSQL está rodando
- o nome do banco foi informado corretamente
- o usuário e senha existem no sistema

Exemplo:

```bash
psql -h localhost -U postgres -d unaerp
```

### 2) Script falha por aspas ou caracteres especiais

Alguns arquivos do repositório podem conter aspas tipográficas, como `“` ou `”`, o que pode causar erro de sintaxe em SQL. Use sempre aspas padrões do teclado:

```sql
WHERE nm_depto = 'Contabilidade'
```

e não:

```sql
WHERE nm_depto = “Contabilidade”
```

### 3) Tabela não existe

Certifique-se de executar primeiro os arquivos de `exercicios-tables` antes dos de `exercicios-select` quando houver dependência entre eles.

### 4) Banco de dados inexistente

Crie o banco antes de executar os scripts:

```bash
createdb unaerp
```

ou use um banco já existente e ajuste o comando `psql`.

## Contribuição

Contribuições são bem-vindas. Para colaborar:

1. Faça um fork do projeto.
2. Crie uma branch com um nome descritivo.
3. Faça alterações focadas e claras.
4. Realize commits organizados.
5. Abra um Pull Request descrevendo o que foi ajustado.

Sugerir melhorias em queries, organizar novos exercícios ou corrigir erros em scripts também é uma excelente forma de participar do repositório.

## Autor

- Nome: Giovanni Jorge
- GitHub: [@GiovanniJorge](https://github.com/GiovanniJorge)

## Licença

Este projeto está licenciado sob a licença MIT. Consulte o arquivo [LICENSE](LICENSE) para mais detalhes.

