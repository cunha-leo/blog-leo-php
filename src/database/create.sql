CREATE TABLE categorias (
  id INTEGER PRIMARY KEY auto_increment,
  nome varchar(200) NOT NULL
);

CREATE TABLE posts (
  id INTEGER PRIMARY KEY auto_increment,
  autor varchar(200) NOT NULL,
  titulo varchar(200) NOT NULL,
  nome varchar(200) NOT NULL,
  conteudo_postagem varchar(255) NOT NULL,
  categoria_id INTEGER NOT NULL,
  data_criacao datetime,
  FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);



INSERT INTO categorias(nome) VALUES('Categoria 2');

INSERT INTO posts (autor,titulo, nome, conteudo_postagem, categoria_id, data_criacao)
VALUES ('Leo','CSS','Chat GPT','descricao da postagem', 1, now());

INSERT INTO posts (autor,titulo, nome, conteudo_postagem, categoria_id, data_criacao)
VALUES ('Marco','TEC','Monitor','Estão cada vez mais caros', 2, now());


SELECT * FROM categorias;
SELECT * FROM posts;