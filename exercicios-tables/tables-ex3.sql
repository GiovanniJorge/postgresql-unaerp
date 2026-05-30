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