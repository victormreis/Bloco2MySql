CREATE database db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classe(
id bigint auto_increment,
tipo varchar(255),
nivel int,
habilidade varchar(255),

primary key (id)
);

CREATE table tb_personagem(
id bigint auto_increment,
nome varchar(255),
raca varchar(255),
vida int,
ataque int,
defesa int,
classe_id bigint,

primary key(id),
foreign key (classe_id) references tb_classe(id)
);

insert into tb_classe (tipo,nivel,habilidade) values ("Guerreiro", 99, "Lutador");
insert into tb_classe (tipo,nivel,habilidade) values ("Mago", 189, "Magia");
insert into tb_classe (tipo,nivel,habilidade) values ("Assassino", 200, "Dano Verdadeiro");
insert into tb_classe (tipo,nivel,habilidade) values ("Tanque", 155, "Absorção de Dano");
insert into tb_classe (tipo,nivel,habilidade) values ("Invisivel", 77, "Camuflagem");

select * from tb_personagem;

INSERT INTO  tb_personagem (nome,raca, vida, ataque, defesa, classe_id) values ("Morgana", "Fada", 1100, 2200, 1200, 2);
INSERT INTO  tb_personagem (nome,raca, vida, ataque, defesa, classe_id) values ("Zed", "Matador", 850, 3500, 2000, 3);
INSERT INTO  tb_personagem (nome,raca, vida, ataque, defesa, classe_id) values ("Master Yi", "Samurai", 1300, 3800, 3200, 1);
INSERT INTO  tb_personagem (nome,raca, vida, ataque, defesa, classe_id) values ("Garen", "Demaciano", 2500, 900, 2500, 4);
INSERT INTO  tb_personagem (nome,raca, vida, ataque, defesa, classe_id) values ("Shaco", "Palhaço", 999, 1199, 800, 5);
INSERT INTO  tb_personagem (nome,raca, vida, ataque, defesa, classe_id) values ("Udyr", "Urso", 3100, 1700, 2000, 1);
INSERT INTO  tb_personagem (nome,raca, vida, ataque, defesa, classe_id) values ("Anivia", "Passaro", 600, 1900, 1500, 2);
INSERT INTO  tb_personagem (nome,raca, vida, ataque, defesa, classe_id) values ("Kayn", "Zumbi", 1350, 1899, 2600, 3);


SELECT * FROM tb_personagem where ataque > 2000;

SELECT * FROM tb_personagem where defesa between 1000 AND 2000;

SELECT * FROM tb_personagem where nome like "%c%";

SELECT * FROM tb_personagem  INNER JOIN  tb_classe on tb_classe.id = tb_personagem.classe_id;

SELECT * FROM tb_personagem INNER JOIN  tb_classe on tb_personagem.classe_id = tb_classe.id where classe_id = 3;