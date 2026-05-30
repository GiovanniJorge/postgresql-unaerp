-- Por meio do uso da DDL, crie adequadamente o esquema de banco de dados abaixo, juntamente com suas respectivas restrições.
CREATE TABLE tb_departamentos(
cod_depto CHAR(2),
nm_depto VARCHAR(60),
CONSTRAINT pk_tb_depto_cod_depto PRIMARY KEY(cod_depto)
);

CREATE TABLE tb_funcionarios(
cod_funcionario CHAR(2),
nome VARCHAR(60),
cod_depto CHAR(2),
salario NUMBER(7,2),
CONSTRAINT pk_tb_func_cod_func PRIMARY KEY(cod_funcionario),
CONSTRAINT fk_tb_func_cod_depto FOREIGN KEY(cod_depto)
    REFERENCES tb_departamentos(cod_depto)
);

-- Quais os nomes dos empregados que ganham salários inferiores a R$2.600,00?
SELECT nome
FROM tb_funcionarios
WHERE salario < 2600;

-- Quais os nomes dos departamentos que possuem empregados os quais ganham salários de no máximo R$3.500,00?
SELECT nm_depto
FROM tb_departamentos
INNER JOIN tb_funcionarios
ON tb_departamentos.cod_depto = tb_funcionarios.cod_depto;

-- Quais os nomes dos empregados que trabalham no departamento D3?
SELECT nome
FROM tb_funcionarios
WHERE cod_depto = “D3”;

-- Quais os nomes dos empregados que trabalham no departamento nomeado de “contabilidade”?
SELECT nome
FROM tb_funcionarios
INNER JOIN tb_departamentos
ON tb_funcionarios.cod_depto = tb_departamentos.cod_depto
WHERE nm_depto = “Contabilidade”;

-- Quais são os salários dos empregados alocados no departamento “contabilidade”?
SELECT salario
FROM tb_funcionarios
INNER JOIN tb_departamentos
ON tb_funcionarios.cod_depto = tb_departamentos.cod_depto
WHERE nm_depto = “Contabilidade”;