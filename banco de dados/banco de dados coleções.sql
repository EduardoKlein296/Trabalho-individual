Create database coleção;

use coleção;

create table usuario(
idUsuario INT auto_increment primary key,
nome varchar(45),
email varchar(45),
senha varchar(45),
constraint emailValido check (email like('%@%'))
);

create table comentario(
idComentario INT auto_increment primary key,
texto varchar(500),
fkUsuario Int,
constraint foreign key (fkUsuario) references usuario(idUsuario),
resposta int,
constraint foreign key (resposta) references comentario(idComentario)
);

create table votação(
idVotacao INT auto_increment primary key,
voto char(1),
fkUsuario Int,
constraint foreign key (fkUsuario) references usuario(idUsuario)
);

drop database coleção;