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

create table comentario(
idComentario INT auto_increment primary key,
texto varchar(500),
fkUsuario Int,
constraint foreign key (fkUsuario) references usuario(id),
resposta int,
constraint foreign key (resposta) references comentario(idComentario),
fkArtigo INT,
constraint foreign key (fkArtigo) references artigo(idArtigo)
);

create table votação(
fkUsuario Int,
voto char(1),
constraint foreign key (fkUsuario) references usuario(id)
);

insert into artigo(nome)
values ('Skylander'),
('PokemonTCG'),
('Hq'),
('Funko Pop');

select * from artigo;

select * from usuario;

select * from votação;

-- drop database coleção;