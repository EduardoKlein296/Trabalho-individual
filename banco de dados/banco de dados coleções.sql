Create database coleção;

use coleção;

create table usuario(
id INT auto_increment primary key,
nome varchar(45),
email varchar(45),
senha varchar(45),
constraint emailValido check (email like('%@%'))
);

create table artigo(
idArtigo INT auto_increment primary key,
nome varchar(45)
);


create table votação(
fkUsuario Int,
voto char(1),
constraint foreign key (fkUsuario) references usuario(id)
);

create table funko(
id INT primary key auto_increment,
nome varchar(45)
);

insert into funko (nome)
values ("Batman que ri"),
("Mimikyu"),
("Yoda Fantasma"),
("Eddie Ciborgue"),
("Motoqueiro Fantasma Cósmico"); 

alter table votação
modify column voto INT;

alter table votação
add constraint foreign key (voto) references funko (id);

select * from usuario;

select * from funko;

select * 
from votação;

select f.nome, count(v.voto) as votos from votação v inner join
funko f on v.voto = f.id group by f.nome;
-- drop database coleção;