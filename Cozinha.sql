create database restaurante
default character set utf8
default collate utf8_general_ci;

use restaurante;

create table cozinha(
	id int not null auto_increment,
	tipo varchar(30) not null,
    horaAbertura int,
    horaFechamento int,
    pratoPrincipal varchar(30),
    numeroPratos int,
    numeroCozinheiros int,
    tempoPreparo int,
    primary key (id)
) default charset = utf8;
	
create table ingrediente(
	id int not null auto_increment,
	nome varchar(30) not null,
    dataValidade date not null,
    primary key (id)
) default charset = utf8;

create table funcionario(
	id int not null auto_increment,
	nome varchar(30) not null,
	atividade varchar(30) not null,
    primary key (id)
) default charset = utf8;

Insert into cozinha 
(tipo, horaAbertura, horaFechamento, pratoPrincipal) 
values ('Mineira', 13, 20, 'Feijoada');

Insert into cozinha 
(tipo, horaAbertura, horaFechamento, pratoPrincipal) 
values ('Chinesa', 10, 22, 'Yaksoba');

Insert into cozinha 
(tipo, horaAbertura, horaFechamento, pratoPrincipal) 
values ('Italiana', 12, 21, 'Pizza');

Insert into cozinha 
(tipo, horaAbertura, horaFechamento, pratoPrincipal) 
values ('Chinesa', 10, 22, 'Yaksoba');

Insert into funcionario
(nome, atividade)
values ("Lucas", "Cozinheiro");

Insert into funcionario
(nome, atividade)
values ("Felipe", "Cozinheiro");

Insert into funcionario
(nome, atividade)
values ("Lara", "Cozinheira");

Insert into funcionario
(nome, atividade)
values ("Fabrícia", "Cozinheira");

Insert into funcionario
(nome, atividade)
values ("Paulo", "Garçom");

Insert into funcionario
(nome, atividade)
values ("Paula", "Garçonete");

Insert into funcionario
(nome, atividade)
values ("Luiz", "Garçom");

Insert into funcionario
(nome, atividade)
values ("Keila", "Atendente");

Insert into funcionario
(nome, atividade)
values ("Adalberto", "Serviços Gerais");

Insert into funcionario
(id,nome, atividade)
values ("Luiza", "Serviços Gerais");

Delete from cozinha;

Select * from cozinha;

Select count(1)
from cozinha;

Select count(1)
from cozinha 
where horaAbertura = 10;

Select tipo 
from ingrediente join funcionario
where ingrediente is null;

Update cozinha set horaFechamento = 21
where tipo = 'Mineira';