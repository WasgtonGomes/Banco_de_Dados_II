create database hora_praticar_aula_02;
use hora_praticar_aula_02;

create table pais(
id_pais int auto_increment primary key,
nome_pais varchar(52),
continente_pais varchar(200)
 );

create table estado(
id_estado int auto_increment primary key,
nome_est varchar(52),
sigla_est varchar(2),
regiao_est varchar(20),
id_pais_fk int not null,
FOREIGN KEY (id_pais_fk) references pais (id_pais)
 );

 create table cidade(
id_cidade int auto_increment primary key,
nome_cid varchar(52),
data_criacao_cid date,
id_estado_fk int not null,
FOREIGN KEY (id_estado_fk) references estado (id_estado)
 );
 create table endereco(
id_endereco int auto_increment primary key,
rua_end varchar(52),
nemero_end int,
bairro_end varchar(20),
id_cidade_fk int not null,
FOREIGN KEY (id_cidade_fk) references cidade (id_cidade)
 );
create table cliente(
id_cliente int auto_increment primary key,
nome_cli varchar(52),
data_nascimento_cli date,
sexo_cli varchar(20),
endereco_cli text,
cpf_cli varchar(15),
id_endereco_fk int not null,
FOREIGN KEY (id_endereco_fk) references endereco (id_endereco)
 );




 
