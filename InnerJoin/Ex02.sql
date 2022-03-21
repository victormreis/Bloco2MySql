CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
id bigint auto_increment,
categoria varchar(255),
tamanho varchar(255),
massa varchar(255),

primary key(id)
);

CREATE TABLE tb_pizza (
id bigint auto_increment,
nome varchar(255),
ingredientes varchar(255),
borda varchar(255),
preco double,
categoria_id bigint,

primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

INSERT INTO tb_categoria(categoria, tamanho, massa) values ("Doce", "Grande", "Fina" );
INSERT INTO tb_categoria(categoria, tamanho, massa) values ("Doce", "Grande", "Normal" );
INSERT INTO tb_categoria(categoria, tamanho, massa) values ("Doce", "Pequena", "Fina" );
INSERT INTO tb_categoria(categoria, tamanho, massa) values ("Salgada", "Grande", "Fina" );
INSERT INTO tb_categoria(categoria, tamanho, massa) values ("Salgada", "Grande", "Normal" );
INSERT INTO tb_categoria(categoria, tamanho, massa) values ("Salgada", "Pequena", "Fina" );

SELECT * FROM tb_PIZZA;
SELECT * FROM TB_CATEGORIA;

INSERT INTO tb_pizza(nome, ingredientes, borda, preco, categoria_id) values ("Frangolino", "Frango e Mussarela", "Recheada", 39.99, 4);
INSERT INTO tb_pizza(nome, ingredientes, borda, preco, categoria_id) values ("Calabacon", "Calabresa e Bacon", "Recheada", 35.99, 5);
INSERT INTO tb_pizza(nome, ingredientes, borda, preco, categoria_id) values ("Frango da Roça", "Frango, Mussarela e Milho", "Simples", 41.99, 4);
INSERT INTO tb_pizza(nome, ingredientes, borda, preco, categoria_id) values ("Baiana", "Calabresa Moida com pimenta", "Simples", 20.99, 6);
INSERT INTO tb_pizza(nome, ingredientes, borda, preco, categoria_id) values ("4 Queijos", "Mussarela, Provolone, Catupiry e Gorgonzola", "Recheada", 49.99, 4);
INSERT INTO tb_pizza(nome, ingredientes, borda, preco, categoria_id) values ("Prestigio", "Chocolate Branco Derretido e Coco Ralado", "Simples", 26.99, 3);
INSERT INTO tb_pizza(nome, ingredientes, borda, preco, categoria_id) values ("Brigadeiro", "Chocolate Derretido e Chocolate Granulado", "Simples", 49.99, 2);
INSERT INTO tb_pizza(nome, ingredientes, borda, preco, categoria_id) values ("Romeu e Julieta", "Mussarela e Goiabada Cascão", "Simples", 42.99, 1);

SELECT * FROM tb_pizza where preco >  45;

SELECT * FROM tb_pizza where preco between 29 AND 60;

SELECT * FROM tb_pizza where nome like "%c%";

SELECT * FROM tb_pizza   INNER JOIN  tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

SELECT * FROM tb_pizza INNER JOIN  tb_categoria on tb_pizza.categoria_id = tb_categoria.id where categoria_id between 1 AND 3;
