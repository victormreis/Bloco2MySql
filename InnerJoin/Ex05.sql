CREATE DATABASE  db_construindo_a_nossa_vida;
USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
id bigint auto_increment,
tipo varchar(255),
categoria varchar(255),
estado varchar(255),
primary key(id)
);

INSERT INTO tb_categoria(tipo, categoria, estado) values ("Casa", "Venda" , "Nova");
INSERT INTO tb_categoria(tipo, categoria, estado) values ("Casa", "Venda" , "Usada");
INSERT INTO tb_categoria(tipo, categoria, estado) values ("Apartamento", "Aluguel" , "Usado");

select * from tb_categoria;

CREATE TABLE tb_produto(
id bigint auto_increment,
nome varchar(255),
preco double,
tamanho double,
cidade varchar(255),
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);
select * from tb_produto;
INSERT INTO tb_produto(nome, preco, tamanho, cidade, categoria_id) values("Alphavile II", 1580999, 580, "Barueri", 1);
INSERT INTO tb_produto(nome, preco, tamanho, cidade, categoria_id) values("Cotia Residence Park", 779999, 300, "Cotia", 2);
INSERT INTO tb_produto(nome, preco, tamanho, cidade, categoria_id) values("Reserva Butanta", 580000, 136, "Sao Paulo", 3);
INSERT INTO tb_produto(nome, preco, tamanho, cidade, categoria_id) values("Mooca Residencial", 225989, 77, "Sao Paulo", 4);

SELECT * FROM tb_produto where preco >  500000;

SELECT * FROM tb_produto where preco between 500000 AND 900000;

SELECT * FROM tb_produto where nome like "%c%";

SELECT * FROM tb_produto  INNER JOIN  tb_categoria on tb_categoria.id = tb_produto.categoria_id;

SELECT * FROM tb_produto INNER JOIN  tb_categoria on tb_produto.categoria_id = tb_categoria.id where categoria_id = 3;

