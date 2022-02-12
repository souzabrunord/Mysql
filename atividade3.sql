create database db_estudantes;

use db_estudantes;

create table tb_informacoes(
	id bigint auto_increment,
    nome varchar(255) not null,
    matricula varchar(255) not null,
    nota int not null,
    periodo varchar(255) not null,
    primary key (id)
);

INSERT INTO tb_informacoes (nome,matricula,nota,periodo) VALUES ("Berg","1",5,"Matutino");
INSERT INTO tb_informacoes (nome,matricula,nota,periodo) VALUES ("Jorge","2",9,"Matutino");
INSERT INTO tb_informacoes (nome,matricula,nota,periodo) VALUES ("Luis","3",9,"Vespertino");

select * from tb_informacoes where nota > 7;

select * from tb_informacoes where nota < 7;

update tb_informacoes set nota = 10 where id = 1;