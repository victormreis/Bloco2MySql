CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categoria(
id bigint auto_increment,
tipo varchar(255),
frigorifico varchar(255),
categoria varchar(255),

primary key(id)
);

CREATE TABLE tb_produto(
id bigint auto_increment,
nome varchar(255),
preco double,
lote varchar(255),
qtd double,
categoria_id bigint,

primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

INSERT INTO tb_categoria(tipo, frigorifico, categoria) values("Bovino", "JBS", "Popular");
INSERT INTO tb_categoria(tipo, frigorifico, categoria) values("Bovino", "JBS", "Premium");
INSERT INTO tb_categoria(tipo, frigorifico, categoria) values("Suino", "Seara", "Popular");
INSERT INTO tb_categoria(tipo, frigorifico, categoria) values("Aves", "Golden Chicken", "Popular");

INSERT INTO tb_produto(nome, preco, lote, qtd, categoria_id) values ("Contra File", 49.99,"1020", 35, 1);
INSERT INTO tb_produto(nome, preco, lote, qtd, categoria_id) values ("Picanha Angus Black", 119.99,"0199", 10, 2);
INSERT INTO tb_produto(nome, preco, lote, qtd, categoria_id) values ("Costelinha", 25.99,"9920", 23.5, 3);
INSERT INTO tb_produto(nome, preco, lote, qtd, categoria_id) values ("Acem", 27.99,"1090", 35, 1);
INSERT INTO tb_produto(nome, preco, lote, qtd, categoria_id) values ("Filé de Frango", 29.99,"3030", 40, 4);
INSERT INTO tb_produto(nome, preco, lote, qtd, categoria_id) values ("Coxa sobre Coxa", 15.99,"1999", 60, 4);

SELECT * FROM tb_produto where preco >  50;

SELECT * FROM tb_produto where preco between 3 AND 60;

SELECT * FROM tb_produto where nome like "%c%";

SELECT * FROM tb_produto  INNER JOIN  tb_categoria on tb_categoria.id = tb_produto.categoria_id;

SELECT * FROM tb_produto INNER JOIN  tb_categoria on tb_produto.categoria_id = tb_categoria.id where categoria_id = 3;
