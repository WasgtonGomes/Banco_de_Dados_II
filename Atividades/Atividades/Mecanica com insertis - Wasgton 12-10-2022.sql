/*
Scrit do BD_Mecanica Carro ZERO
 */
 # NOME: Wasgton Gomes Pereira
 # Turma: 3º Período ads 2022/02

create database BD_mecanica_Wasgton;
use BD_mecanica_Wasgton;

create table Cliente (
id_cli int primary key auto_increment not null,
nome_cli varchar(200) not null,
cpf_cli varchar(50) not null,
rg_cli varchar(50) not null,
telefone_cli varchar(50) not null,
endereco_cli varchar(200) not null,
email_cli varchar(100),
sexo_cli varchar(50),
renda_cli double not null,
data_Nasc_cli date not null,
status_cli varchar (100)
);

insert into Cliente values(null,'Rosilene Gomes Da Silva', '751.012.262-04','5678495 sescD RO', '(69) 9 9246-9341', 'Rua marília nº 2377 Bairro JK', 'rosilemesgomez80@gmail.com',
'Feminino',1487.45, '1983-05-29', 'Ativo');
insert into Cliente values(null,'Wilaine Gomes Pereira', '065.175.112-88','6247328 sescD RO', '(69) 9 9270-4009', 'Rua Ipe nº 2478 Bairro Valparaizo', 'Wilaine@gmail.com',
'Feminino',1200.20, '2004-10-20', 'Ativo');
insert into Cliente values(null,'Celio Soares Da Silva', '578.424.262-87','5826312 sescD RR', '(69) 9 9334-2758', 'AV Maringa nº 1899 Bairro Nova Brasilia', 'SoaresCelio@gmail.com',
'Masculino',2987.75, '1976-02-10', 'Ativo');
insert into Cliente values(null,'Wasgton Gomes Pereira', '065.175.192-62','1626428 pasep RO', '(69) 9 9361-8448', 'Rua Julio Guerra nº 409 Bairro Centro', 'wasgton.jipara@gmail.com',
'Masculino',1734.69, '2022-09-02', 'Ativo');
insert into Cliente values(null,'Josimar Gomes Da Silva', '041.361.002-05','7134932 ses SP', '(69) 9 8459-1204', 'Rua Amazonas nº 731 Bairro Jardim dos Imigrantes', 'josimargomezR7@gmail.com',
'Masculino',3987.12, '1998-11-08', 'Inativo');

create table Funcionario (
id_func int primary key auto_increment not null,
nome_func varchar(200) not null,
funcao_func varchar(100) not null,
cpf_func varchar(50) not null,
rg_func varchar(50) not null,
telefone_func varchar(50),
endereco_func varchar (200),
email_func varchar (200),
sexo_func varchar (20),
salario_func double not null
);

 insert into funcionario values(null, 'Reginaldo Soares dos Santos', 'Gerente','048.265.922.02', '5742931 ssp/TO', '(69) 9 9956-3122',
 'AV Brasil nº 624 Bairro Nova Brasilia', 'soaresRegis88@gmail.com', 'Masculino', 8647.83);
  insert into funcionario values(null, 'Danilo Moura Bendis', 'Mecânico Geral','082.012.567.01', '3891258 ssp/PR', '(69) 9 8162-0374',
 'Rua São Paulo nº 9648 Bairro Jotão', 'danilomourão@gmail.com', 'Masculino', 4810.90);
  insert into funcionario values(null, 'Adelson Gonçalves Silva', 'Ajudante de Mecânico','978.645.312.00', '9854132 ssp/RO', '(69) 9 9203-4978',
 'AV Marechal Rondon nº 691 Bairro Centro', 'adelsonjjj1@gmail.com', 'Masculino', 1497.03);
  insert into funcionario values(null, 'Jesse Pereira Ferreira', 'Atendente','513.264.957.40', '5246819 ssp/RJ', '(69) 9 9638-0016',
 'Rua Jacarezinho nº 1784 Bairro Parque Brasil', 'Ferreira*Jesse@gmail.com', 'Masculino', 3261.36);
  insert into funcionario values(null, 'André Fagundes dos Santos', 'Mecânico','197.316.671.73', '7439482 ssp/sc', '(69) 9 8436-2681',
 'Rua Mógno nº 1645 Bairro União', 'André157@gmail.com', 'Masculino', 4875.53);

create table Servico (
id_serv int primary key auto_increment not null,
descricao_serv varchar(300) not null,
valor_serv double not null,
tempo_serv time
);

insert into Servico values(null, 'Troca de óleo Completa', 210.96,'00:35:02');
insert into Servico values(null, 'Troca da correia dentada', 360.26,'01:05:11');
insert into Servico values(null, 'Revisão Geral', 420.63,'02:49:01');
insert into Servico values(null, 'Reparo de suspensão dianteiro e traseiro', 790.32,'02:12:19');
insert into Servico values(null, 'Alinhamento e balanceamento', 340.87,'00:56:02');

create table Fornecedor (
id_forn int primary key auto_increment not null,
razao_forn varchar(150) not null,
nome_forn varchar(150) not null,
cnpj_forn varchar(50) not null,
endereco_forn varchar(300) not null,
telefone_forn varchar(50) not null
);

insert into fornecedor values(null, 'Elring Klinger do Brasil Ltda', 'Elring Klinger', '01.576.749/0001-44', '13.422-170
RUA FRANCISCO CARLOS DE CASTRO NEVES 945, - DIST INDL UNILESTE PIRACICABA, SP','+497123724799');
insert into fornecedor values(null, 'Axios Administradora de Bens e Participacoes Ltda', 'Axios', '13.457.062/0001-79', '12A RUA RUI BARBOSA, 867
SALAA - SOBRE LOJA - CENTRO, PIRAPOZINHO | SP','(18) 3269-4422');
insert into fornecedor values(null, 'LKS OFICIAL LTDA', 'LKS', '40.999.174/0001-24', 'AV WALTER C. MACHADO,QUADRA: C; LOTE: 06; BOX: 893;
SETOR CENTRAL, SANTO ANTONIO DE GOIAS, GO','62 9195-1521');
insert into fornecedor values(null, 'LUK DO BRASIL EMBREAGENS LTDA', 'Luk', '43.735.703/0001-70', 'AVENIDA INDEPENDENCIA, 3500
PARTE - EDEN, SOROCABA | SP','(11) 2597-8835');
insert into fornecedor values(null, 'Petroleo Brasileiro S A Petrobras (Petrobras - Edise)', 'Petrobras', '33.000.167/0001-01', 'AVENIDA REPUBLICA DO CHILE, 65
CENTRO, RIO DE JANEIRO | RJ','(21) 3224-4477');

create table Produto ( 
id_prod int primary key auto_increment not null,
nome_prod varchar(300) not null,
marca_prod varchar(150) not null,
estoque_prod int not null,
valor_prod double not null,
tamanho_prod varchar(5) not null,
tipo_prod varchar(50) not null
);

insert into Produto values(null, 'Óleo 20w50 1L', 'Lubrax Essencial', 154, 34.65, '14cm', 'Lubrificantes');
insert into Produto values(null, 'Pneu Pireli', 'Pireli', 94, 340.20, 'aro15', 'Pneu');
insert into Produto values(null, 'Coreia dentada', 'Good car', 74, 45, '125', 'Para motor');
insert into Produto values(null, 'Paleta gol 2008', 'Boer Aero', 41, 29.96, '42cm', 'Acessório parabrisa');
insert into Produto values(null, 'Aromatizante Interno', 'Bardal ', 60, 14.98, '6cm', 'Acessório interno');

create table Compra (
id_comp int primary key auto_increment not null,
data_comp date not null,
valor_comp double not null,
quant_itens_comp int,
forma_pagamento_comp varchar(50) not null,
id_forn_fk int not null,
foreign key (id_forn_fk) references Fornecedor (id_forn)
);

insert into Compra values(null, '2020-02-10', 3548.92, 78, 'Pix', 1);
insert into Compra values(null, '2020-01-23', 154.01, 16, 'Cheque', 3);
insert into Compra values(null, '2021-11-16', 6587.33, 102, 'Tranferencia Brancária', 5);
insert into Compra values(null, '2019-08-03', 1945.01, 121, 'Pix', 2);
insert into Compra values(null, '2022-06-30', 874, 36, 'Pix', 4);

create table Despesa (
id_desp int primary key auto_increment not null,
descricao_desp varchar(200),
valor_desp double not null,
data_desp date not null,
forma_pagamento_desp varchar(100) not null
);

insert into Despesa values(null, 'Energia referente ao mês 12-2020',420, '2020-12-06', 'Boleto');
insert into Despesa values(null, 'Aluguel referente ao mês 12-2020',2300, '2020-12-10', 'PIx');
insert into Despesa values(null, 'Contabilidade referente ao mês 12-2020',8458.62, '2020-11-30', 'Pix');
insert into Despesa values(null, 'Água referente ao mês 12-2020',86.31, '2020-12-15', 'Boleto');
insert into Despesa values(null, 'Segurança referente ao mês 12-2020',700, '2020-12-01', 'Boleto');

create table Caixa(
id_cai int primary key auto_increment not null,
data_cai date not null,
saldo_inicial_cai double not null,
total_recebimento_cai double not null,
total_pagamento_cai double not null,
saldo_final_cai double not null,
status_cai varchar (300),
id_func_fk int not null,
foreign key (id_func_fk) references funcionario (id_func)
);

insert into caixa values(null,'2022-10-01', 500, 7500, 1500, 6500, 'Fechado',4);
insert into caixa values(null,'2022-10-02', 500, 12600, 600, 12500, 'Fechado',1);
insert into caixa values(null,'2022-10-03', 500, 18000, 100, 18300, 'Fechado',1);
insert into caixa values(null,'2022-10-04', 500, 10000, 1000, 9500, 'Fechado',4);
insert into caixa values(null,'2022-10-05', 500, 25000, 200, 25800, 'Fechado',4);

create table Pagamento (
id_pag int primary key auto_increment not null,
valor_pag double not null,
parcela_pag double not null,
data_pag date not null,
forma_pag varchar(50) not null,
status_pag varchar (300),
id_comp_fk int,
id_cai_fk int not null,
id_desp_fk int,
foreign key (id_comp_fk) references compra (id_comp),
foreign key (id_cai_fk) references caixa (id_cai),
foreign key (id_desp_fk) references despesa (id_desp)
);

insert into Pagamento values(null,17820, 1,'2022-09-02', 'Pix', 'Pago',1,1,1);
insert into Pagamento values(null,6580, 2,'2022-09-12', 'Boleto', 'Pago',2,2,2);
insert into Pagamento values(null,4250, 1,'2022-09-05', 'Pix', 'Pago',3,1,5);
insert into Pagamento values(null,230, 1,'2022-09-20', 'Dinheiro', 'Pago',4,2,1);
insert into Pagamento values(null,20, 1,'2021-02-02', 'Pix', 'Pago',1,3,1);

create table Venda (
id_vend int primary key auto_increment not null,
valor_vend double not null,
data_vend date not null,
hora_vend varchar(20),
forma_pag_vend varchar(100),
id_cli_fk int not null,
id_func_fk int not null,
foreign key (id_cli_fk) references cliente (id_cli),
foreign key (id_func_fk) references funcionario (id_func)
);

insert into Venda values(null, 540, '2022-10-01', '13:25:54', 'Dinheiro', 1,4);
insert into Venda values(null, 980.56, '2022-10-01', '10:12:46', 'Cartão de Credito Visa', 2,1);
insert into Venda values(null, 120.00, '2022-10-14', '07:41:10', 'Cartão de Débito Mastercard', 3,4);
insert into Venda values(null, 1350.20, '2022-10-02', '16:35:24', 'Cheque', 4,1);
insert into Venda values(null, 40, '2022-10-01', '09:05:04', 'Dinheiro', 5,4);

create table Recebimento (
id_rec int primary key auto_increment not null,
valor_rec double not null,
parcela_rec int not null,
forma_rec varchar(100) not null,
data_vencimento_rec date not null,
status_rec varchar (300),
id_cai_fk int not null,
id_vend_fk int not null,
foreign key (id_cai_fk) references caixa (id_cai),
foreign key (id_vend_fk) references Venda(id_vend)
);

insert into Recebimento values(null, 300, 1, 'Pix','2022-10-01', 'Finalizado',1,1);
insert into Recebimento values(null, 450, 2, 'Dinheiro','2022-10-12', 'Finalizado',2,5);
insert into Recebimento values(null, 1540, 1, 'Cheque','2022-10-20', 'Finalizado',3,4);
insert into Recebimento values(null, 3000, 9, 'Cartão de Crédito Visa','2022-10-03', 'Finalizado',4,3);
insert into Recebimento values(null, 1300, 1, 'Pix','2022-10-25', 'Finalizado',5,2);

create table Venda_Serv(
id_vser int primary key auto_increment not null,
id_vend_fk int not null,
id_serv_fk int not null,
quant_vser int,
foreign key (id_vend_fk) references venda (id_vend),
foreign key (id_serv_fk) references servico (id_serv)
);

insert into Venda_Serv values(null,1,1,6);
insert into Venda_Serv values(null,2,2,15);
insert into Venda_Serv values(null,3,3,9);
insert into Venda_Serv values(null,4,4,22);
insert into Venda_Serv values(null,5,5,10);

create table Venda_Prod(
id_vpro int primary key auto_increment not null,
id_vend_fk int not null,
id_prod_fk int not null,
quant_vpro int,
foreign key (id_vend_fk) references venda (id_vend),
foreign key (id_prod_fk) references produto (id_prod)
);

insert into Venda_Prod values(null,1,1,3);
insert into Venda_Prod values(null,1,3,2);
insert into Venda_Prod values(null,4,2,7);
insert into Venda_Prod values(null,5,4,21);
insert into Venda_Prod values(null,3,3,19);

create table Compra_Prod(
id_cprod int primary key auto_increment not null,
id_comp_fk int not null,
id_prod_fk int not null,
quant_cprod int,
valor_cprod float,
foreign key (id_comp_fk) references Compra (id_comp),
foreign key (id_prod_fk) references Produto (id_prod)
);

insert into Compra_Prod values(null, 1,3,30,3560);
insert into Compra_Prod values(null, 2,5,41,4781);
insert into Compra_Prod values(null, 3,4,08,48541);
insert into Compra_Prod values(null, 4,2,29,13793);
insert into Compra_Prod values(null, 1,1,38,12289);

create table Funcionario_Servico (
id_fserv int not null primary key auto_increment,
id_func_fk int not null,
id_serv_fk int not null,
foreign key (id_func_fk) references Funcionario (id_func),
foreign key (id_serv_fk) references Servico (id_serv)
);

insert into Funcionario_Servico values (null, 2,1);
insert into Funcionario_Servico values (null, 3,3);
insert into Funcionario_Servico values (null, 2,5);
insert into Funcionario_Servico values (null, 5,4);
insert into Funcionario_Servico values (null, 3,2);

select*from Cliente ;
select*from Funcionario ;
select*from Servico ;
select*from Fornecedor ;
select*from Produto ;
select*from Compra ;
select*from Despesa ;
select*from Caixa;
select*from Pagamento;
select*from Venda;
select*from Recebimento;
select*from Venda_Serv;
select*from Venda_Prod;
select*from Compra_Prod;
select*from Funcionario_Servico;


