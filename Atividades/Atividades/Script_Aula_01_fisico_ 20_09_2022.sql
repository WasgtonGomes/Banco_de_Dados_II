create database bd_aula1;
use bd_aula1;
create table cliente(
id_cliente int auto_increment primary key,
nome_cli varchar(52),
data_nascimento_cli date,
sexo_cli varchar(20),
endereco_cli text,
cpf_cli varchar(15) );
/** comentario pode se usar este método ou também "/" */
/* NOME DA CHAVE ESTRAGEIRA: id_cli_fk integer

FOREINGN KEY (id_cli)

*/
 create table cidade(
 id_cidade_cid int auto_increment primary key,
 nome_cid varchar(50),
 sigla_cid int
 );
 
 
 create table funcionario (
 id_func int primary key ,
 nome_func varchar( 20),
 cpf_func varchar(12),
 funcao_func varchar(57)
 );
  create table produto (
 id_produto int primary key ,
 nome_func varchar( 20),
 cpf_func varchar(12),
 funcao_func varchar(57)
 );

create table venda(
id_venda int auto_increment primary key,
data_ven date,
valor_ven float,
id_cliente_fk int not null,
id_func_fk int not null,
FOREIGN KEY (id_cliente_fk) references cliente (id_cliente) ,
FOREIGN KEY (id_func_fk) references funcionario (id_func)
);
 
create table venda_produto(
id_vpr int auto_increment primary key,
quantidade_vpr float,
valor_venda_vpr float,
id_produto_fk int not null,
id_venda_fk int not null,
FOREIGN KEY (id_produto_fk) references produto (id_produto),
FOREIGN KEY (id_venda_fk) references venda (id_venda)
);