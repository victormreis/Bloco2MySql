/*
Atividade 1
Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
trabalhará com as informações dos funcionaries desta empresa.
Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
Popule esta tabela com até 5 dados;
Faça um select que retorne os funcionaries com o salário maior do que 2000.
Faça um select que retorne os funcionaries com o salário menor do que 2000.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.

*/

create database db_rh;
use db_rh;
drop table tb_funcionaries;

-- criando tabela 
create table tb_funcionarios ( 
id bigint auto_increment,
nome varchar(200),
salario float,
cargo varchar(100),
funcao varchar(255),
primary key (id)
);

/*

POPULANDO TABELA

insert into tb_funcionarios (nome, salario, cargo, funcao) values ("Carmen Rafaela", 2950.00, "Gestora de RH", "Rh");
insert into tb_funcionarios (nome, salario, cargo, funcao) values ("Victor", 3500.00, "Desenvolvedor Java Jr", "TI");
insert into tb_funcionarios (nome, salario, cargo, funcao) values ("Daiane Santos", 9550.99, "Desenvolvedora Java Senior", "TI");
insert into tb_funcionarios (nome, salario, cargo, funcao) values ("Josue", 2500, "Segurança", "Portaria");
*/ 
select * from tb_funcionarios; -- mostrar todos os funcionarios da tabela

select * from tb_funcionarios where salario > 2000; -- mostrar todos os funcionarios com salario acima de 2000

select * from tb_funcionarios where salario < 2000; -- mostrar todos os funcionarios com salario abaixo de 2000

update tb_funcionarios set salario = 1999.99 where id = 4; -- atualizando o salario do funcionario id 4 