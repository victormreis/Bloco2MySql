-- create database db_estoque
 -- use db_estoque
 
 create table tb_marca(
 id bigint(5) auto_increment, 
 nome varchar(20),
 ativo boolean,
 primary key (id)
);

insert into tb_marca(nome, ativo) values ("Nike", true);
insert into tb_marca(nome, ativo) values ("Adidas", false);

update tb_marca set nome = "Fatal Sufr", ativo = true where id = 2; -- atualizar dado na tabela marca onde id igual 2

select * from tb_marca where nome like "%la%"; -- selecionar na tabela marca onde nome tenha " la "
select * from tb_marca;  -- selecionar todos os itens da tabela marca

create table tb_produtos(
id bigint auto_increment,
nome varchar(30) not null,
preco decimal(10,2),
marca_id bigint not null,

primary key(id),
foreign key(marca_id) references tb_marca (id)
);

insert into tb_produtos (nome, preco, marca_id) values ("Camisa", 22.99, 1);

select * from tb_produtos;