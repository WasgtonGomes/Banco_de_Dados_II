create database  Restaurante_Noturno_com_Entrega_WASGTON;
use Restaurante_Noturno_com_Entrega_WASGTON;
/* 
Discente: Wasgton Gomes Pereira
Turma: 3º Período ads 2022/02
*/
create table funcionario(
id_fun int auto_increment primary key,
nome_fun varchar(90) not null,
cpf_fun varchar(14) not null,
rg_fun varchar(30) not null,
email_fun varchar(100) not null,
contato_fun varchar(35) not null,
funcao_fun varchar(300) not null,
carga_horaria_fun time not null,
tipo_sanguineo_fun varchar(10) not null,
data_admissao_fun date not null
);

create table cliente(
id_cli int auto_increment primary key,
nome_cli varchar(90) not null,
cpf_cli varchar(14) not null,
rg_cli varchar(30) not null,
email_cli varchar(100) not null,
endereco_cli varchar(300) not null,
celular_cli varchar(35) not null,
data_nascimento_cli date not null,
tipo_cli varchar(50) not null
);

create table fornecedor(
id_for int auto_increment primary key,
nome_for varchar(150) not null,
cnpj_for varchar(21) not null,
endreco_for varchar(300) not null,
celular_for varchar(35) not null,
razao_social_for varchar(150) not null
);

create table mesa (
id_mes int not null auto_increment primary key,
numero_mes int not null,
capacidade_mes int not null,
status_mes varchar(90) not null,
posicionamento_restaurante_mes varchar(120) not null,
cor_mes varchar(90) not null
);

create table prato(
id_prat int not null auto_increment primary key,
nome_prat varchar(200) not null,
foto_prat varchar(300) not null, 
valor_prat float not null,
ingredientes_prat text not null,
peso_aprocimado_prat float not null,
adcionais_prat varchar(300) not null
);

create table entregador_app(
id_ent_app int auto_increment primary key,
nome_ent_app varchar(90) not null,
cpf_ent_app varchar(14) not null,
email_ent_app varchar(100) not null,
celular_ent_app varchar(35) not null,
aplicativo_ent_app varchar(300) not null,
taxa_ent_app float not null,
descricao_ent_app text not null
);

create table produto(
id_prod int auto_increment primary key,
nome_prod varchar(90) not null,
valor_venda_prod float not null,
estoque_prod int not null,
valor_compra_prod float not null,
tipo_prod varchar(100) not null,
descricao_prod text not null,
validade_prod date not null,
peso_prod float  not null,
dimensao_prod varchar(60) not null
);

create table compra(
id_comp int auto_increment primary key not null,
data_comp date not null,
valor_comp float  not null,
desconto_comp float not null, 
descricao_comp text not null,
id_fun_fk int  not null,
id_for_fk int  not null,
foreign key (id_fun_fk) references funcionario(id_fun),
foreign key (id_for_fk) references fornecedor(id_for)
);

create table pedido(
id_ped int not null auto_increment primary key,
hora_ped time not null,
valor_ped float not null,
descricao_ped text not null,
data_ped date not null
);


create table reserva(
id_res int not null auto_increment primary key,
horario_res time not null,
data_res date not null,
numero_pessoas_res int not null,
status_res varchar(25) not null,
tolerancia_de_atrazo_res time not null
);

create table caixa(
id_cai int auto_increment primary key,
numero_cai int not null,
data_cai date not null,
saldo_inicial_cai float not null,
total_recebimento_cai float not null,
total_pagamento_cai float not null,
saldo_final_cai float not null,
status_cai varchar(20) not null,
tipo_cai varchar(20) not null,
id_fun_fk int not null,
foreign key (id_fun_fk) references funcionario(id_fun)
);

create table despesa(
id_des int auto_increment primary key,
descricao_des text not null,
valor_des float not null,
data_des date not null,
parcelamento_des int not null,
vencimento_des date not null,
valor_final_des float not null,
multa_des float not null,
id_for_fk int not null,
foreign key (id_for_fk) references fornecedor (id_for)
);

create table pagamento(
id_pag int auto_increment primary key,
valor_pag float not null,
data_pag date not null,
parcela_pag int not null,
status_pag varchar(100) not null,
forma_pag varchar(100) not null,
venciemnto_pag date not null,
desconto_pag float not null,
imposto_pag float not null,
id_cai_fk int not null,
id_des_fk int not null,
foreign key(id_cai_fk) references caixa (id_cai),
foreign key(id_des_fk) references despesa (id_des)
);

create table entrega(
id_ent int not null auto_increment primary key,
hora_entrega_ent time not null,
hora_saida_ent time not null,
data_ent date not null,
endereco_alternativo_ent text not null,
endereco_principal_ent text not null,
tempo_ent time not null,
id_fun_fk int not null,
id_ent_app_fk int not null,
foreign key (id_fun_fk) references funcionario(id_fun),
foreign key (id_ent_app_fk ) references entregador_app(id_ent_app)
);

create table venda(
id_ven int auto_increment primary key ,
valor_ven float not null,
data_ven date not null,
parcelamento_ven varchar(100) not null,
imposto_ven float not null,
hora_ven time not null,
id_ent_fk int not null,
id_fun_fk int not null,
id_ped_fk int not null,
id_cli_fk int not null,
foreign key (id_ent_fk) references entrega(id_ent),
foreign key (id_fun_fk) references funcionario(id_fun),
foreign key (id_ped_fk) references pedido(id_ped),
foreign key (id_cli_fk) references cliente(id_cli)
);

create table recebimento(
id_rec int auto_increment primary key not null,
forma_rec varchar(100) not null,
valor_rec float not null ,
data_rec date not null,
parcela_rec int not null,
status_rec varchar(60)not null,
vencimento_rec date not null,
hora_rec time not null,
multa_rec float not null ,
id_cai_fk int not null,
id_ven_fk int not null,
foreign key (id_cai_fk) references caixa(id_cai),
foreign key (id_ven_fk) references venda(id_ven)
);

create table venda_prato(
id_ven_prat int auto_increment primary key not null,
quantidade_ven_prat int not null,
id_ven_fk int not null,
id_prat_fk int not null,
foreign key (id_ven_fk) references venda (id_ven),
foreign key (id_prat_fk) references prato (id_prat)
);

create table venda_produto(
id_ven_prod int auto_increment primary key not null,
quantidade_ven_prod int not null,
id_ven_fk int not null,
id_prod_fk int not null,
foreign key (id_ven_fk) references venda (id_ven),
foreign key (id_prod_fk) references produto (id_prod)
);

create table compra_produto(
id_com_prod int auto_increment primary key not null,
quantidade_com_prod int not null,
id_com_fk int not null,
id_prod_fk int not null,
foreign key (id_com_fk) references compra (id_comp),
foreign key (id_prod_fk) references produto (id_prod)
);

create table pedido_prato(
id_ped_prat int auto_increment primary key not null,
quantidade_ped_prat int not null,
id_ped_fk int not null,
id_prat_fk int not null,
foreign key (id_ped_fk) references pedido (id_ped),
foreign key (id_prat_fk) references prato (id_prat)
);

create table pedido_produto(
id_ped_prod int auto_increment primary key not null,
quantidade_ped_prod int not null,
id_ped_fk int not null,
id_prod_fk int not null,
foreign key (id_ped_fk) references pedido (id_ped),
foreign key (id_prod_fk) references produto (id_prod)
);