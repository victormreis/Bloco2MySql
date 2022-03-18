/*
Atividade 2
Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
informações dos produtos deste ecommerce.
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 3500.
Faça um select que retorne os produtos com o valor menor do que 3500.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.

*/
-- create database db_loja;
-- use db_loja;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255),
preco double,
qtd int,
disponivel boolean,
primary key(id)
);
/* 
POPULANDO TABELA

insert into tb_produtos(nome, preco, qtd, disponivel) values ("Iphone 13 pro", 12999.99, 10, true);
 insert into tb_produtos(nome, preco, qtd, disponivel) values ("Galaxy S22", 10289.99, 7, true);
 insert into tb_produtos(nome, preco, qtd, disponivel) values ("Iphone 7s", 1999.99, 0, false);
insert into tb_produtos(nome, preco, qtd, disponivel) values ("Moto G13 plus", 1780.89, 22, true);
insert into tb_produtos(nome, preco, qtd, disponivel) values ("Iphone 13 pro Max", 13999.99, 2, true);
insert into tb_produtos(nome, preco, qtd, disponivel) values ("Iphone 13 pro", 13999.99, 10, true);
insert into tb_produtos(nome, preco, qtd, disponivel) values ("Iphone 13 pro", 13999.99, 10, true);
insert into tb_produtos(nome, preco, qtd, disponivel) values ("Iphone 13 pro", 13999.99, 10, true);
*/

select * from tb_produtos;

select * from tb_produtos where preco > 3500; 
select * from tb_produtos where preco < 3500;

update tb_produtos set nome = "Moto One Fusion Black" where id = 4;
