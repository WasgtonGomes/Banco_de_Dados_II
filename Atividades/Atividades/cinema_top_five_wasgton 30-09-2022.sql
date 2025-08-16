Create database cinema_top_five_wasgton;
use cinema_top_five_wasgton;

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

create table cliente(
id_cli int auto_increment primary key,
nome_cli varchar(90) not null,
cpf_cli varchar(14) not null,
rg_cli varchar(30) not null,
email_cli varchar(100) not null,
endereco_cli varchar(300) not null,
contato_cli varchar(35) not null,
data_nascimento_cli date not null,
tipo_cli varchar(50) not null
);

create table filme(
id_fil int auto_increment primary key,
titulo_fil varchar(150) not null,
sinopse_fil text not null,
diretor_fil varchar(200) not null,
atores_filme_fil text not null,
duração_fil time not null,
data_lancamento_fil date
);

create table sala(
id_sal int auto_increment primary key,
nome_sal varchar(90) not null,
capacidade_sal int not null,
local_sal varchar(250) not null,
numero_sala_sal varchar(20) not null,
andar_sal varchar(60) not null
);

create table fornecedor(
id_for int auto_increment primary key,
nome_for varchar(150) not null,
cnpj_for varchar(21) not null,
endreco_for varchar(300) not null,
razao_social_for varchar(150) not null
);

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

create table caixa(
id_cai int auto_increment primary key,
numero_cai int not null,
data_cai date not null,
saldo_inicial_cai float not null,
total_recebimento_cai float not null,
total_retirado_cai float not null,
salda_final_cai float not null,
status_cai varchar(20) not null,
tipo_cai varchar(20) not null
);

create table sessao(
id_ses int auto_increment primary key,
horario_inicio_ses time not null,
horario_fim_ses time not null,
data_ses date not null,
dublado_ses bool not null,
tres_d bool not null,
id_sal_fk int not null,
id_fil_fk int not null,
FOREIGN KEY (id_fil_fk) references filme (id_fil),
FOREIGN KEY (id_sal_fk) references sala (id_sal)
);

create table poltrona(
id_pol int auto_increment primary key,
numero_pol int not null,
fileira_pol varchar(20) not null,
status_pol varchar(30) not null,
cor_pol varchar(60) not null,
tipo_pol varchar(70) not null,
id_sal_fk int not null,
FOREIGN KEY (id_sal_fk) references sala (id_sal)
);

create table ingresso (
id_ing int auto_increment primary key,
valor_ing float not null,
data_ing date not null,
quantidade_ing int not null,
inteiro_ing bool not null,
id_ses_fk int not null,
foreign key (id_ses_fk) references sessao(id_ses)
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

create table despesa(
id_des int auto_increment primary key,
descricao_des text not null,
valor_des float not null,
data_des date not null,
parcela_des int not null,
vencimento_des date not null,
valor_final_des float not null,
multa_des float not null,
id_comp_fk int not null,
foreign key (id_comp_fk) references compra (id_comp)
);

create table pagamento(
id_pag int auto_increment primary key,
valor_pag float not null,
data_pag date not null,
parcela_pag int not null,
status_pag varchar(100) not null,
forma_pag varchar(100) not null,
desconto_pag float not null,
imposto_pag float not null,
id_cai_fk int not null,
id_des_fk int not null,
foreign key(id_cai_fk) references caixa (id_cai),
foreign key(id_des_fk) references despesa (id_des)
);

create table venda(
id_ven int auto_increment primary key ,
valor_ven float not null,
data_ven date not null,
imposto_ven float not null,
hora_ven time not null,
id_ing_fk int not null,
id_fun_fk int not null,
id_pol_fk int not null,
id_cli_fk int not null,
foreign key (id_ing_fk) references ingresso(id_ing),
foreign key (id_fun_fk) references funcionario(id_fun),
foreign key (id_pol_fk) references poltrona(id_pol),
foreign key (id_cli_fk) references cliente(id_cli)
);

create table recebimento(
id_rec int auto_increment primary key not null,
forma_rec varchar(100) not null,
valor_rec float not null ,
data_rec date not null,
parcela_rec int not null,
status_rec varchar(60)not null,
hora_rec time not null,
multa_rec float not null ,
id_cai_fk int not null,
id_ven_fk int not null,
foreign key (id_cai_fk) references caixa(id_cai),
foreign key (id_ven_fk) references venda(id_ven)
);

create table produto_venda(
id_prod_ven int auto_increment primary key not null,
quantidade_prod_ven int not null,
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