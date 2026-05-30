CREATE TABLE tb_funcao(
id_funcao		VARCHAR(10),
ds_funcao		VARCHAR(35),
base_salario		NUMERIC(10,2),
teto_salario		NUMERIC(10,2),
CONSTRAINT pk_tb_funcao_id_funcao PRIMARY KEY(id_funcao)
);

CREATE TABLE tb_regiao(
id_regiao		INTEGER,
nm_regiao		VARCHAR(25),
CONSTRAINT pk_tb_regiao_id_regiao PRIMARY KEY(id_regiao)
);

CREATE TABLE tb_pais(
id_pais			CHAR(2),
id_regiao		INTEGER,
nm_pais		VARCHAR(40),
CONSTRAINT pk_tb_pais_id_pais PRIMARY KEY(id_pais),
CONSTRAINT fk_tb_pais_id_regiao FOREIGN KEY(id_regiao)
	REFERENCES tb_regiao(id_regiao)
);

CREATE TABLE tb_localizacao(
id_localizacao		INTEGER,
id_pais			CHAR(2),
endereco		VARCHAR(40),
cep			VARCHAR(12),
cidade			VARCHAR(30),
estado			VARCHAR(25),
CONSTRAINT pk_tb_localizacao_id_localizacao PRIMARY KEY(id_localizacao),
CONSTRAINT fk_tb_localizacao_id_pais FOREIGN KEY(id_pais)
	REFERENCES tb_pais(id_pais)
);

CREATE TABLE tb_departamento(
id_departamento		INTEGER,
id_localizacao			INTEGER,
id_gerente			INTEGER,
nm_departamento		VARCHAR(30),
CONSTRAINT pk_tb_departamento_id_departamento PRIMARY KEY(id_departamento),
CONSTRAINT fk_tb_departamento_id_localizacao FOREIGN KEY(id_localizacao)
	REFERENCES tb_localizacao(id_localizacao),
CONSTRAINT fk_tb_departamento_id_gerente FOREIGN KEY(id_gerente)
	REFERENCES tb_empregado(id_gerente)
);

CREATE TABLE tb_historico_funcao(
data_inicio			DATE,
id_empregado			INTEGER,
id_funcao			VARCHAR(10),
id_departamento		INTEGER,
dat_termino			DATE,
CONSTRAINT pk_tb_historico_funcao_data_inicio PRIMARY KEY(data_inicio, id_empregado),
CONSTRAINT fk_tb_historico_funcao_id_funcao FOREIGN KEY(id_funcao)
	REFERENCES tb_funcao(id_funcao),
CONSTRAINT fk_tb_historico_funcao_id_departamento FOREIGN KEY(id_departamento)
	REFERENCES tb_departamento(id_departamento)
);

CREATE TABLE tb_empregado(
id_empregado			INTEGER,
id_gerente			INTEGER,
id_departamento		INTEGER,
id_funcao			VARCHAR(10),
nome				VARCHAR(20),
sobrenome			VARCHAR(25),
email				VARCHAR(25),
telefone			VARCHAR(20),
data_admissao		DATE,
percentual_comissao		NUMERIC(4,2),
salario				NUMERIC(10,2),
CONSTRAINT pk_tb_empregado_id_empregado PRIMARY KEY(id_empregado),
CONSTRAINT fk_tb_empregado_id_gerente FOREIGN KEY(id_gerente)
	REFERENCES tb_empregado(id_empregado),
CONSTRAINT fk_tb_empregado_id_departamento FOREIGN KEY(id_departamento)
	REFERENCES tb_departamento(id_departamento),
CONSTRAINT fk_tb_empregado_id_funcao PRIMARY KEY(id_funcao)
	REFERENCES tb_funcao(id_funcao)
);
