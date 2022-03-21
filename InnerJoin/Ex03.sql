CREATE DATABASE db_farmacia_do_bem;
USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
id bigint auto_increment,
tipo varchar (255),
receita boolean,
contraIndicado boolean,

primary key (id)
);



CREATE TABLE tb_produto(
id bigint auto_increment,
nome varchar(255),
preco double,
fabricante varchar(255),
quantidade int,
categoria_id bigint,

primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

INSERT INTO tb_categoria(tipo, receita, contraIndicado) values ("Remédio - Controlado", true, true);
INSERT INTO tb_categoria(tipo, receita, contraIndicado) values ("Remedio  - Geral ", false, false);
INSERT INTO tb_categoria(tipo, receita, contraIndicado) values ("Geral", false, false);

select * from tb_produto;

INSERT INTO tb_produto(nome, preco, fabricante, quantidade, categoria_id) values ("Diasepan", 38.99, "Farmaco", 30, 1);
INSERT INTO tb_produto(nome, preco, fabricante, quantidade, categoria_id) values ("Doril", 7.99, "Bayer", 100, 2);
INSERT INTO tb_produto(nome, preco, fabricante, quantidade, categoria_id) values ("Benegripe", 10.50, "Hypera Farma", 70, 2);
INSERT INTO tb_produto(nome, preco, fabricante, quantidade, categoria_id) values ("Rivotril", 59.99, "Bayer", 15, 1);
INSERT INTO tb_produto(nome, preco, fabricante, quantidade, categoria_id) values ("Fralda Turma da monica ", 50.99, "Huggies", 18, 3);
INSERT INTO tb_produto(nome, preco, fabricante, quantidade, categoria_id) values ("Presevartivo", 11.89, "Jontex", 150, 3);
INSERT INTO tb_produto(nome, preco, fabricante, quantidade, categoria_id) values ("Agua", 2.50, "Bonafont", 35, 3);
INSERT INTO tb_produto(nome, preco, fabricante, quantidade, categoria_id) values ("Chocolate", 7.99, "Lacta", 11, 3);


SELECT * FROM tb_produto where preco >  50;

SELECT * FROM tb_produto where preco between 3 AND 60;

SELECT * FROM tb_produto where nome like "%c%";

SELECT * FROM tb_produto  INNER JOIN  tb_categoria on tb_categoria.id = tb_produto.categoria_id;

SELECT * FROM tb_produto INNER JOIN  tb_categoria on tb_produto.categoria_id = tb_categoria.id where categoria_id = 3;
