-- Criando a tb_departamento
CREATE TABLE tb_departamento(
cod_depto	INTEGER,
nm_depto	VARCHAR(25),
CONSTRAINT pk_tb_depto_cod_depto PRIMARY KEY(cod_depto)
);

-- Consultando a "tb_departamento"
SELECT *
FROM tb_departamento;

-- Realizando uma carga preliminar na "tb_departamento"
INSERT INTO tb_departamento(cod_depto, nm_depto)
VALUES
(1, 'Exatas'),
(2, 'Saúde'),
(3, 'Biologia');

-- Criando a "tb_disciplina"
CREATE TABLE tb_disciplina(
cod_disciplina  INTEGER,
cod_depto   	INTEGER CONSTRAINT nn_tb_disciplina_cod_depto NOT NULL,
nm_disciplina 	VARCHAR(25),
cretio 			INTEGER,
CONSTRAINT pk_tb_disc_cod_disc PRIMARY KEY(cod_disciplina),
CONSTRAINT fk_tb_disc_cod_depto FOREIGN KEY(cod_depto)
	REFERENCES tb_departamento(cod_depto)
);

-- Consultando a "tb_departamento"
SELECT *
FROM tb_disciplina;