CREATE TABLE tb_peca(
cod_peca		INTEGER,
nm_peca		VARCHAR(60),
cor_peca		VARCHAR(30),
peso_peca		INTEGER,
CONSTRAINT pk_tb_peca_cod_peca PRIMARY KEY(cod_peca)
);

CREATE TABLE tb_fornecedor(
cod_fornecerdor	INTEGER,
nm_fornecedor	VARCHAR(60),
st_fornecedor		VARCHAR(60),
CONSTRAINT pk_tb_fornecedor_cod_fornecedor PRIMARY KEY(cod_fornecedor)
);

CREATE TABLE tb_embarque(
cod_peca		INTEGER,
cod_fornecedor	INTEGER,
qtd_embarque		INTEGER,
CONSTRAINT pk_tb_embarque_cod_peca_fornecedor PRIMARY KEY(cod_peca, cod_fornecedor),
CONSTRAINT fk_tb_embarque_cod_peca FOREING KEY(cod_peca)
	REFERENCES tb_peca(cod_peca),
CONSTRAINT fk_tb_embarque_cod_fornecedor FOREIGN KEY(cod_fornecedor)
	REFERENCES tb_fornecedor(cod_fornecedor)
);
