CREATE TABLE tb_alunos(
ra			NUMERIC(4,2),
nm_aluno		VARCHAR(120),
ano_admissao		INTEGER,
dt_nascimento	DATE,
CONSTRAINT pk_tb_alunos_ra PRIMARY KEY(ra)
);

CREATE TABLE tb_disciplinas(
codigo			INTEGER,
nm_disciplina		VARCHAR(60),
corte_a		NUMERIC(4,2),
corte_b		NUMERIC(4,2),
corte_c		NUMERIC(4,2),
CONSTRAINT pk_tb_discipinas_codigo PRIMARY KEY(codigo)
);

CREATE TABLE tb_cursa(
ra			NUMERIC(4,2),
codigo			INTEGER,
professor		VARCHAR(120),
ano			INTEGER,
semestre		INTEGER,
nota			NUMERIC(4,2),
CONSTRAINT pk_tb_cursa_ra_codigo PRIMARY KEY(ra, codigo),
CONSTRAINT fk_tb_cursa_ra FOREIGN KEY(ra)
	REFERENCES tb_alunos(ra),
CONSTRAINT fk_tb_cursa_codigo FOREIGN KEY(codigo)
	REFERENCES tb_disciplinas(codigo)
);
