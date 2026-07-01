# SQL - Unaerp

Exercícios em linguagem SQL usados nas aulas da Unaerp — coleção organizada por tópicos (criação de tabelas, consultas SELECT, JOINs, aggregações e exercícios gerais). Ideal para estudantes que querem aprender SQL desde o básico até conceitos mais avançados.

## Conteúdo principal

- Exercícios focados em problemas didáticos para aprendizagem de SQL.
- Estrutura simples por pastas que separa exercícios por tema.
- Exemplos que usam databases e scripts SQL para criar ambientes de teste.
- Fácil execução em qualquer Sistema de Gerenciamento de Banco de Dados (SGBD) compatível com SQL padrão.

## Badges

- Licença: MIT (ver arquivo LICENSE)

## Sumário

- [Visão geral](#visão-geral)
- [Estrutura do repositório](#estrutura-do-repositório)
- [Como executar](#como-executar)
- [Boas práticas / recomendações](#boas-práticas--recomendações)
- [Contribuindo](#contribuindo)
- [Licença](#licença)
- [Autor / Contato](#autor--contato)

## Visão geral

Este repositório organiza pequenos programas e scripts em SQL que exemplificam conceitos de linguagem e resolução de problemas. Cada arquivo SQL normalmente resolve um exercício específico e está escrito de forma didática para facilitar o aprendizado.

Os exercícios são independentes e podem ser executados em qualquer SGBD que suporte SQL padrão (MySQL, PostgreSQL, SQLite, SQL Server, etc.).

## Estrutura do repositório

Top-level:
- `.gitattributes`
- `LICENSE` — licença MIT
- `README.md` — este arquivo
- `exercicios-tables/` — exercícios envolvendo criação e manipulação de tabelas (CREATE TABLE, ALTER TABLE, DROP TABLE)
  - `tables-ex1.sql` — exemplo com criação básica de tabelas
  - `tables-ex2.sql` — exemplo com constraints e tipos de dados
  - `...`
- `exercicios-select/` — exercícios com consultas SELECT (WHERE, ORDER BY, LIMIT)
  - `select-ex1.sql` — exemplo com SELECT básico
  - `select-ex2.sql` — exemplo com WHERE e filtros
  - `...`
- `exercicios-joins/` — exercícios com JOINs (INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL OUTER JOIN) *(opcional, conforme conteúdo)*
- `exercicios-agregacoes/` — exercícios com funções de agregação (COUNT, SUM, AVG, GROUP BY, HAVING) *(opcional, conforme conteúdo)*
- `exercicios-geral/` — exercícios diversos e casos complexos

Como se encaixa:
- Cada arquivo `.sql` é um script independente (exercício). A forma usual de usar o repositório é executar o arquivo que você quer no seu SGBD preferido.
- Alguns exercícios podem incluir comentários com dados de exemplo ou instruções para popular o banco.

## Como executar

### Com MySQL

```bash
# Executar um exercício
mysql -u seu_usuario -p < exercicios-tables/tables-ex1.sql

# Ou, conectando a um banco específico
mysql -u seu_usuario -p seu_banco < exercicios-select/select-ex1.sql
```

### Com PostgreSQL

```bash
# Executar um exercício
psql -U seu_usuario -d seu_banco -f exercicios-tables/tables-ex1.sql

# Ou, sem banco específico
psql -U seu_usuario -f exercicios-select/select-ex1.sql
```

### Com SQLite

```bash
# Criar/usar um banco local
sqlite3 meu_banco.db < exercicios-tables/tables-ex1.sql

# Ou executar interativamente
sqlite3 meu_banco.db
sqlite> .read exercicios-select/select-ex1.sql
```

### Executar todos os .sql em uma pasta

```bash
# Com MySQL
for file in exercicios-tables/*.sql; do
  mysql -u seu_usuario -p < "$file"
done

# Com PostgreSQL
for file in exercicios-select/*.sql; do
  psql -U seu_usuario -d seu_banco -f "$file"
done
```

## Boas práticas / recomendações

- **Indentação e formatação**: Use indentação consistente para melhorar legibilidade. Palavras-chave em MAIÚSCULAS.
  ```sql
  SELECT nome, idade
  FROM alunos
  WHERE idade > 18
  ORDER BY nome;
  ```

- **Comentários claros**: Documente cada exercício no topo do arquivo explicando:
  - Objetivo do exercício
  - Dados esperados (schema, tabelas)
  - Resultado esperado
  - Conceitos SQL abordados
  
  ```sql
  -- Exercício: Listar todos os alunos com idade > 18
  -- Conceitos: SELECT, WHERE, ORDER BY
  -- Tabela esperada: alunos (id, nome, idade)
  ```

- **Nomes de objetos**: Use nomes descritivos e em minúsculas com underscores (snake_case) para tabelas e colunas.
  ```sql
  CREATE TABLE alunos_unaerp (
    id_aluno INT,
    nome_completo VARCHAR(100),
    data_nascimento DATE
  );
  ```

- **Evite dados sensíveis**: Não inclua senhas, credenciais ou informações reais de usuários nos exemplos.

- **Use dados de exemplo realistas**: Forneça dados de teste que simulem cenários reais.

- **Separação de concerns**: Cada arquivo deve resolver um problema específico. Evite misturar múltiplos conceitos em um único arquivo, a menos que seja intencional.

## Contribuindo

Contribuições são bem-vindas (ex.: correções, comentários, novos exercícios, testes). Fluxo sugerido:

1. Fork do repositório.
2. Criar branch com nome descritivo: `feature/exercicio-nome` ou `fix/descricao`.
3. Fazer commits atômicos com mensagens claras.
4. Abrir Pull Request descrevendo as mudanças e, se aplicável, o motivo pedagógico.
5. Se possível, inclua casos de teste ou instruções para validar o exercício.

Sugestões adicionais:

- Adicione um pequeno README por pasta explicando o objetivo dos exercícios daquela pasta.
- Considere adicionar um arquivo `setup.sql` por pasta com o schema e dados de teste necessários.
- Para verificação automática, adicionar um workflow (GitHub Actions) que valida a sintaxe de cada `.sql`.

## Testes e automação (opcional)

- Poderia ser adicionado um script shell/Python que valida a sintaxe de todos os arquivos `.sql`.
- Para verificação automática, adicionar um workflow (GitHub Actions) que executa cada `.sql` em um container com o SGBD para garantir que os exercícios funcionam corretamente.

## Licença

Este repositório utiliza a licença MIT — consulte o arquivo `LICENSE` na raiz.

## Autor / Contato

Autor: Giovanni Jorge  
Repositório: https://github.com/GiovanniJorge/sql-unaerp
