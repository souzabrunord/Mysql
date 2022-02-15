-- Cria do Banco de dados
create database db_game_online;

-- Seleciona o Banco de dados para uso
use db_game_online;

create table tb_classes(
 id bigint auto_increment,
 nome varchar(255) not null,
 habilidade varchar(255),
 arma varchar(255),
 primary key (id)
 );
 
 insert into tb_classes (nome, habilidade, arma) 
 values ("Feiticeiro", "Bola de fogo", "Cajado");
 insert into tb_classes (nome, habilidade, arma) 
 values ("Arqueiro", "Chuva de Flechas", "Arco e Flecha"); 
 insert into tb_classes (nome, habilidade, arma) 
 values ("Druida", "Gelo", "Livro"); 
 insert into tb_classes (nome, habilidade, arma) 
 values ("Guerreiro", "Excalibur", "Espada"); 
 insert into tb_classes (nome, habilidade, arma) 
 values ("Curandeiro", "Ressureição", "Gaze");

-- Lista todas as Classes
select * from tb_classes;

-- Cria a tabela personagem
create table tb_personagens(
id bigint auto_increment,
nome varchar(100),
nivel int,
ataque int,
defesa int,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classes(id)
);

-- Dados da tabela personagem
insert into tb_personagens (nome, nivel, ataque, defesa, classe_id) 
values ("Bakur", 150, 4000, 1000, 5);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) 
VALUES ("Limn", 120, 3000, 2220, 1);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) 
VALUES ("Armina", 110, 1000, 2500, 2);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) 
VALUES ("Kinor", 10, 200, 300, 3);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) 
VALUES ("Miken", 1000, 10000, 4000, 4);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) 
VALUES ("Balof", 2, 100, 200, 5);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) 
VALUES ("Asdalf", 400, 9000, 2200, 1);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) 
VALUES ("Jorgin", 300, 3000, 1000, 2);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) 
VALUES ("Sobek", 50, 100, 500, 3);

select * from tb_personagens;

select * from tb_personagens where ataque > 2000;

select * from tb_personagens where defesa between 1000 and 2000;

select * from tb_personagens where nome like "%c%";

select * from tb_personagens inner join tb_classes 
on tb_classes.id = tb_personagens.classe_id;


select * from tb_personagens inner join tb_classes 
on tb_classes.id = tb_personagens.classe_id 
where tb_classes.id = 2;