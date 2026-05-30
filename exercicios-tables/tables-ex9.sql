CREATE TABLE tb_autoria(
idAutor INTEGER,
idLivro INTEGER,
CONSTRAINT pk_tb_autoria_id_autor_id_livro PRIMARY KEY(idAutor, idLivro),
CONSTRAINT fk_tb_autoria_id_autor FOREIGN KEY(idAutor)
    REFERENCES tb_autor(idAutor),
CONSTRAINT fk_tb_autoria_id_livro FOREIGN KEY(idLivro)
    REFERENCES tb_livro(idLivro)
);