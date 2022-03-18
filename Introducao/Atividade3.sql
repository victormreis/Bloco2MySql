/*
Atividade 3
Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
informações dos estudantes deste registro dessa escola.
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos estudantes para se trabalhar com o serviço dessa escola.

Popule esta tabela com até 8 dados;
Faça um select que retorne o/as estudantes com a nota maior do que 7.
Faça um select que retorne o/as estudantes com a nota menor do que 7.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.

*/

/*
create database db_escola;
 use db_escola;

create table tb_estudantes(
id bigint auto_increment,
nome varchar(255),
turma varchar(25),
nota double,
matricula varchar(10),
primary key(id)
);

-- POPULANDO TABELA
*/
insert into tb_estudantes(nome, turma, nota, matricula) values ("Pedro Henrique","Quinto Ano", 7.5, "12345-9");
insert into tb_estudantes(nome, turma, nota, matricula) values ("Maria Joaquina","Sexto Ano", 9.7, "89745-3");
insert into tb_estudantes(nome, turma, nota, matricula) values ("Victor Reis","Quarto Ano", 6.9, "32145-5");
insert into tb_estudantes(nome, turma, nota, matricula) values ("Gustavo ","Primeiro Ano Médio", 4.5, "45645-7");
insert into tb_estudantes(nome, turma, nota, matricula) values ("Jessica","Oitavo Ano", 8.2, "79345-8");
insert into tb_estudantes(nome, turma, nota, matricula) values ("Daiane Santos","Nono Ano", 10, "56345-1");
insert into tb_estudantes(nome, turma, nota, matricula) values ("Michele", "Sexto Ano", 4.9, "58345-2");
insert into tb_estudantes(nome, turma, nota, matricula) values ("Pedro Paulo","Quinto Ano", 9.5, "31345-4");


select * from tb_estudantes;

select * from tb_estudantes where nota > 7; 
select * from tb_estudantes where nota < 7;

update tb_estudantes set nota = 7.9 where id = 7;