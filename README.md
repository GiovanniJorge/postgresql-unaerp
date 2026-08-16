# SQL - Unaerp

Exercícios em linguagem SQL usados nas aulas da Unaerp — coleção organizada por tópicos (criação de tabelas, consultas SELECT, JOINs, agregações e exercícios gerais). Ideal para estudantes que querem aprender SQL desde o básico até conceitos mais avançados.

## Conteúdo principal
- Exercícios focados em problemas didáticos para aprendizagem de SQL.
- Estrutura simples por pastas que separa exercícios por tema.
- Exemplos que usam databases e scripts SQL para criar ambientes de teste.
- Fácil execução em ambientes PostgreSQL.

## Badges
![Licença](https://img.shields.io/github/license/GiovanniJorge/sql-unaerp?style=flat-square)
![Exercícios](https://img.shields.io/badge/quantidade-10%20exercícios-blue?style=flat-square)

## Sumário
- [Visão geral](#visão-geral)
- [Estrutura do repositório](#estrutura-do-repositório)
- [Destaques do repositório](#destaques-do-repositório)
- [Como executar](#como-executar)
- [Contribuindo](#contribuindo)
- [Licença](#licença)
- [Autor / Contato](#autor--contato)

## Visão geral
Este repositório organiza pequenos programas e scripts em SQL que exemplificam conceitos de linguagem e resolução de problemas. Cada arquivo SQL normalmente resolve um exercício específico e está escrito de forma didática para facilitar o aprendizado prático em disciplinas de banco de dados.

Os exercícios são independentes e foram desenvolvidos para o SGBD PostgreSQL.

## Estrutura do repositório
Top-level:
```text
├── .gitattributes
├── LICENSE                  # Licença MIT
├── README.md                # Este arquivo
├── exercicios-tables/       # Estruturas DDL (CREATE TABLE, ALTER TABLE, DROP TABLE)
│   ├── tables-ex1.sql       # Criação básica de tabelas
│   ├── tables-ex2.sql       # Constraints e chaves (PK, FK, UNIQUE)
│   └── ...
└── exercicios-select/       # Filtros e projeções básicas (WHERE, ORDER BY, LIMIT)
    └── select-exs.sql
```

### Como se encaixa:
- O repositório abriga uma variedade de scripts estruturados criados ao longo do período letivo.
- Cada arquivo .sql funciona como um roteiro de execução autônomo. A dinâmica comum de uso consiste em carregar o script de sua escolha diretamente na CLI ou query tool do seu SGBD de preferência para validar o esquema ou retornar os datasets solicitados.

## Destaques do repositório

### Data Definition Language (DDL)
* **Descrição:** Scripts focados na modelagem física de dados, aplicando restrições de integridade relacional, tipos de dados adequados e criação de relacionamentos fortes.
* **Conceitos:** `CREATE TABLE`, `FOREIGN KEY`, `NOT NULL`, `CHECK`.

### Consultas Complexas & Junções
* **Descrição:** Exercícios voltados à extração inteligente de dados cruzados de múltiplas entidades, manipulação de filtros agregados e segmentação de relatórios.
* **Conceitos:** `INNER JOIN`, `LEFT JOIN`, `GROUP BY`, `HAVING`.

## Como executar

### Com PostgreSQL
```bash
# Executar um arquivo de script diretamente via psql
psql -U seu_usuario -d seu_banco -f exercicios-tables/tables-ex1.sql
```

> **Dica de Formatação:** Para manter os padrões acadêmicos e profissionais, todos os códigos sugeridos seguem a convenção de palavras-chave estruturais em caixa alta (`SELECT`, `FROM`, `WHERE`) e nomes de tabelas/colunas em minúsculo usando `snake_case`.

## Contribuindo
Contribuições são bem-vistas! Se você encontrou uma otimização em alguma query de JOIN ou deseja submeter novas listas de exercícios propostas em aula, siga as etapas:

1. Faça um **Fork** do repositório.
2. Crie uma branch com nome descritivo: `feature/exercicio-nome` ou `fix/descricao`.
3. Faça commits atômicos com mensagens claras e objetivas.
4. Abra um **Pull Request** detalhando as alterações implementadas.

## Licença
Este repositório utiliza a licença MIT — consulte o arquivo [LICENSE](LICENSE) na raiz.

## Autor / Contato
- **Autor:** Giovanni Jorge  
- **Repositório:** [https://github.com/GiovanniJorge/postgresql-unaerp](https://github.com/GiovanniJorge/postgresql-unaerp)
