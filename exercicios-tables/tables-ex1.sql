-- criando a table "tb_funcao"

CREATE TABLE tb_funcao (
cod_funcao	INTEGER,
ds_funcao		VARCHAR(25),
salario			NUMERIC(7,2),
CONSTRAINT pk_tb_funcao_cod_funcao PRIMARY KEY (cod_funcao)
);

-- consultado a table 
SELECT *
FROM tb_funcao;

-- criando table "tb_departamento"
CREATE TABLE tb_departamento (
cod_dpto		INTEGER,
nm_funcao		VARCHAR(25),
andar			INTEGER,
CONSTRAINT pk_tb_funcao_cod_dpto PRIMARY KEY (cod_dpto)
);

CREATE TABLE tb_empregado(
cod_empregado	INTEGER,
nm_empregado	VARCHAR(60),
dt_alocacao		DATE,
dt_admissao		DATE,
cod_funcao		INTEGER
	CONSTRAINT nn_tb_emp_cod_funcao NOT NULL,
cod_dpto 		INTEGER
	CONSTRAINT nn_tb_emp_cod_dpto NOT NULL,
CONSTRAINT pk_tb_emp_cod_emp PRIMARY KEY (cod_empregado),
CONSTRAINT fk_tb_emp_cod_funcao FOREIGN KEY (cod_funcao) REFERENCES tb_funcao (codigo_funcao),
CONSTRAINT fk_tb_emp_cod_dpto FOREIGN KEY (cod_dpto) REFERENCES tb_departamento (codigo_dpto)
);