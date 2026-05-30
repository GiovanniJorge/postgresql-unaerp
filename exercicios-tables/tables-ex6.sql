CREATE TABLE tb_tipo_pet(
cod_tipo_pet		INTEGER,
descricao		VARCHAR(3000),
CONSTRAINT pk_tb_tipo_pet_cod_tipo_pet PRIMARY KEY(cod_tipo_pet)
);

CREATE TABLE tb_pessoa(
cpf			VARCHAR(11),
nm_pessoa		VARCHAR(120),
CONSTRAINT pk_tb_pessoa_cpf PRIMARY KEY(cpf)
);

CREATE TABLE tb_pet(
nm_pet		VARCHAR(60),
dt_nascimento	DATE,
cod_pet		INTEGER.
cpf			VARCHAR(11) CONSTRAINT nn_tb_pet_cpf NOT NULL,
cod_tipo_pet		INTEGER CONSTRAINT nn_tb_pet_cod_tipo_pet NOT NULL,
CONSTRAINT pk_tb_pet_cod_pet PRIMARY KEY(cod_pet),
CONSTRAINT fk_tb_pet_cpf FOREIGN KEY(cpf)
	REFERENCES tb_pessoa(cpf),
CONSTRAINT fk_tb_pet_cod_tipo_pet FOREIGN KEY(cod_tipo_pet)
	REFERENCES tb_tipo_pet(cod_tipo_pet)
);
