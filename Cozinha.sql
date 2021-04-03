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
    numeroFuncionarios int,
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
(tipo, horaAbertura, horaFechamento, pratoPrincipal, numeroPratos, numeroFuncionarios, tempoPreparo) 
values ('Mineira', 14, 20, 'Feijoada', 5, 4, 30);

Insert into cozinha 
(tipo, horaAbertura, horaFechamento, pratoPrincipal, numeroPratos, numeroFuncionarios, tempoPreparo) 
values ('Chinesa', 10, 21, 'Yakissoba', 3, 3, 20);

Insert into cozinha 
(tipo, horaAbertura, horaFechamento, pratoPrincipal, numeroPratos, numeroFuncionarios, tempoPreparo) 
values ('Italiana', 13, 22, 'Pizza', 6, 2, 40);

Insert into cozinha
(tipo, horaAbertura, horaFechamento, pratoPrincipal, numeroPratos, numeroFuncionarios, tempoPreparo) 
values
('Francesa', 12, 20, 'Escargot', 6, 7, 50),
('Japonesa', 13, 20, 'Sushi', 10, 10, 10);

Insert into ingrediente
(nome, dataValidade)
values 
('Feijão', '2020-03-15'),
('Arroz', '2021-03-15'),
('Batata', '2021-03-15'),
('Carne', '2021-08-13'),
('Queijo', '2021-05-17'),
('Macarrão', '2020-10-11'),
('Champignon', '2021-07-25'),
('Presunto', '2020-03-03');

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
(nome, atividade)
values ("Luiza", "Serviços Gerais");

Select count(1)
from cozinha;

Select tipo
from cozinha 
where horaFechamento = 20;

Select *
from ingrediente
where dataValidade <= '2021-04-02';