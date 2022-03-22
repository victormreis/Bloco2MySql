CREATE DATABASE  db_cursoDaMinhaVida;
USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria(
id bigint auto_increment,
tipo varchar(255),
categoria varchar(255),
estado boolean,
primary key(id)
);

INSERT INTO tb_categoria(tipo, categoria, estado) values ("Online", "Tecnologia" , true);
INSERT INTO tb_categoria(tipo, categoria, estado) values ("Online", "Culinaria" , false);
INSERT INTO tb_categoria(tipo, categoria, estado) values ("Presencial", "Culinaria" , true);

select * from tb_categoria;

CREATE TABLE tb_produto(
id bigint auto_increment,
nome varchar(255),
preco double,
carga int,
professor varchar(255),
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);
select * from tb_produto;
INSERT INTO tb_produto(nome, preco, carga, professor, categoria_id) values("JAVA POO", 169.99, 30,"Anderson Abreu",1);
INSERT INTO tb_produto(nome, preco, carga, professor, categoria_id) values("Confeitaria básica", 59.90, 10,"Ana Maria Braga",2);
INSERT INTO tb_produto(nome, preco, carga, professor, categoria_id) values("Temperos do Brasil", 99.80, 17,"Henrique Fogaça",3);
INSERT INTO tb_produto(nome, preco, carga, professor, categoria_id) values("MySql", 259.99, 45,"Jessica Lopes",1);

SELECT * FROM tb_produto where preco >  50;

SELECT * FROM tb_produto where preco between 50 AND 150;

SELECT * FROM tb_produto where nome like "%c%";

SELECT * FROM tb_produto  INNER JOIN  tb_categoria on tb_categoria.id = tb_produto.categoria_id;

SELECT * FROM tb_produto INNER JOIN  tb_categoria on tb_produto.categoria_id = tb_categoria.id where categoria_id = 3;

