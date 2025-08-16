#Banco de Dados do Cinema
# Discente: WASGTON GOMES PEREIRA
# Turma: 3º periodo ads 2022/02

create database bd_cinema_com_insert_wasgton;
use bd_cinema_com_insert_wasgton;

create table Cliente(
id_cli int primary key auto_increment,
nome_cl varchar(300),
sexo_cli varchar(100),
data_nasc date,
cpf_cli varchar(100),
rg_cli varchar(100),
email_cli varchar(300),
endereco_cli varchar(300),
telefone_cli varchar(300),
cartao_sus_cli varchar(300),
tipagem_sanguinea_cli varchar(100)
);
insert into Cliente values(null,'Joaquim Gomes Da Silva','Masculino','1943-10-02', '194.017.222-01','7468495 sescD RO', 'joaquim@gmail.com','Rua Fortaleza nº 2377 Bairro JK', 
'(69) 9 9300-2584', '701 2000 7607217', 'O-');
insert into Cliente values(null,'Raquel Gomes Da Silva','Feminino','1987-03-15', '084.772.698-85','5183927 sescD RO', 'raquel@gmail.com','Rua Monte Negro nº 917 Bairro Esperança', 
'(69) 9 9917-3496', '024 2548 8722793', 'O+');
insert into Cliente values(null,'Rozilda Gomes Da Silva','Femenino','1978-09-21', '087.476.262-69','1593576 sescD RO', 'rozilda@gmail.com','Rua Santa fé nº 4578 Bairro Centro', 
'(69) 9 8472-6603', '878 2036 5183947', 'O-');
insert into Cliente values(null,'Marta Gomes Da Silva','Feminino','1980-12-23', '022.934.538-37','0128520 sescD RO', 'marta@gmail.com','Rua Pimenteira nº 1784 Bairro Novo Horizonte', 
'(69) 9 9231-0052', '346 5842 3607425', 'A+');
insert into Cliente values(null,'Rogildo Gomes Machado','Masculino','1972-01-01', '229.745.400-23','8967249 sescD RO', 'rogildo@gmail.com','Rua Ponta Fina nº 1990 Bairro Setor 10', 
'(69) 9 9966-8740', '364 1976 8746823', 'AB+');

create table Fornecedor(
id_forn int primary key auto_increment,
nome_forn varchar(300),
razao_Social_forn varchar(300),
cnpj_forn varchar(300),
endereco_forn varchar(300),
email_forn varchar(300),
telefone_forn varchar(300)
);

insert into fornecedor values(null, 'Coca Cola Industrias Ltda', 'Coca Cola', '45.997.418/0001-53', 'Estrada do Mendanha, 4489
CAMPO GRANDE RIO DE JANEIRO - RJ 23097-003','cocacola@gmail.com','(21) 3200-9738');
insert into fornecedor values(null, 'PEPSICO SOCIEDADE PREVIDENCIARIA', 'Pepes', '00.098.693/0001-05', 'Avenida Presidente 
Juscelino Kubitschek, 180, 15º andar, Vila Nova Conceição, São Paulo, SP, 04543-000','pepis@gmail.com','(21) 3485-9500');
insert into fornecedor values(null, 'INDUSTRIA E COMERCIO DE BEBIDAS MDM LTDA', 'REFRIGERANTES DYDYO', '03.559.491/0001-01', 
'Rua Raimundo Cantuaria, 7761 TIRADENTES PORTO VELHO - RO 76824-629','REFRIGERANTES_DYDYO@gmail.com','(69) 3216-0458');
insert into fornecedor values(null, 'PAULO HENRIQUE FAUSTINO MACIEL', 'Doritos', '34.522.511/0001-95', 'Avenida Vinte e 
Quatro de Marco, 220 CENTRO IBIUNA - SP 18150-000','pfaustino92@gmail.com','(15) 99697-1055');
insert into fornecedor values(null, 'CHOKITO MOTOS', '	CHOKITO ', '08.184.617/0001-16', 'Rua Joao Lumina Junior, 170
COHAB I BOTUCATU - SP 18605-120','CHOKITO@gmail.com','(14) 99655-7452');
select * from fornecedor;

create table Despesa(
id_desp int primary key auto_increment,
descricao_desp varchar(300),
valor_desp float,
data_desp date,
parcelas_desp int,
vencimento_desp date
);

insert into Despesa values(null, 'Energia referente ao mês 12-2020',420, '2020-12-06', 1 , '2022-10-30');
insert into Despesa values(null, 'Aluguel referente ao mês 12-2020',2300, '2020-12-10', 2,'2022-12-30');
insert into Despesa values(null, 'Contabilidade referente ao mês 12-2020',8458.62, '2020-11-30',1, '2022-08-30');
insert into Despesa values(null, 'Água referente ao mês 12-2020',86.31, '2020-12-15', 1,'2022-09-30');
insert into Despesa values(null, 'Segurança referente ao mês 12-2020',700, '2020-12-01', 1,'2022-08-30');

create table Funcionario(
id_fun int primary key auto_increment,
nome_fun varchar(300),
cpf_fun varchar(100),
rg_fun varchar (100),
telefone_fun varchar(100),
email_fun varchar(300),
sexo_fun varchar(100),
funcao_fun varchar(300),
salario_fun float,
horario_entrada_fun time,
horario_saida_fun time,
data_nasc_fun date,
carteira_trabalho varchar(300)
);

insert into funcionario values(null, 'Reginaldo Soares dos Santos', '048.265.922.02', '5742931 ssp/TO', '(69) 9 9956-3122',
'soaresRegis88@gmail.com','Masculino', 'Gerente', 8647.83,'07:30:00', '17:30:00', '1989-11-12','04826592 202 TO');
insert into funcionario values(null, 'Danilo Moura Bendis', '082.012.567.01', '3891258 ssp/PR', '(69) 9 8162-0374',
'danilomourão@gmail.com', 'Masculino', 'Responsável pelo Filme',4810.90,'07:30:00', '17:30:00', '1989-11-12','08201256 701 PR');
insert into funcionario values(null, 'Adelson Gonçalves Silva', '978.645.312.00', '9854132 ssp/RO', '(69) 9 9203-4978',
'adelsonjjj1@gmail.com', 'Masculino', 'Venda de bilheteria',1497.03,'07:30:00', '17:30:00', '1990-07-09','97864531 200 PR');
insert into funcionario values(null, 'Jesse Pereira Ferreira', '513.264.957.40', '5246819 ssp/RJ', '(69) 9 9638-0016',
'Ferreira*Jesse@gmail.com', 'Masculino', 'Atendente',3261.36,'07:30:00', '17:30:00', '1990-07-09','51326495 740 RJ');
insert into funcionario values(null, 'André Fagundes dos Santos', '197.316.671.73', '7439482 ssp/sc', '(69) 9 8436-2681',
'André157@gmail.com', 'Masculino', 'Atendente', 4875.53,'07:30:00', '17:30:00', '1985-06-02','19731667 173 SC');
 
create table Caixa(
id_cai int primary key auto_increment,
numero_cai int,
data_cai date,
saldo_inicial_cai float,
saldo_final_cai float,
total_recebimentos_cai float,
total_retiradas_cai float,
id_fun_fk int,
foreign key(id_fun_fk) references Funcionario(id_fun)
);

insert into caixa values(null,01444,'2022-10-01', 632, 7500, 1500, 6500, 4);
insert into caixa values(null,456,'2022-10-02', 1024, 12600, 600, 12500, 3);
insert into caixa values(null,5484,'2022-10-03', 364, 18000, 100, 18300, 1);
insert into caixa values(null,94949,'2022-10-04', 785, 10000, 1000, 9500, 5);
insert into caixa values(null,5454,'2022-10-05', 873, 25000, 200, 25800, 4);

create table Pagamento(
id_pag int primary key auto_increment,
valor_pag float,
data_pag date,
parcela_pag int,
status_pag varchar(300),
forma_pag varchar(300),
id_cai_fk int,
foreign key(id_cai_fk) references Caixa(id_cai),
id_desp_fk int,
foreign key(id_desp_fk) references Despesa(id_desp)
);

insert into Pagamento values(null,17820,'2022-09-02', 1, 'Pago','Pix', 1,5);
insert into Pagamento values(null,6580,'2022-09-12', 2,'Pago', 'Boleto', 2,4);
insert into Pagamento values(null,4250,'2022-09-05', 1,'Pago', 'Pix', 3,3);
insert into Pagamento values(null,230,'2022-09-20', 1,'Pago', 'Dinheiro', 4,2);
insert into Pagamento values(null,20,'2021-02-02',  1,'Pago','Pix', 1,1);

create table Filme(
id_film int primary key auto_increment,
titulo_film varchar(300),
sinopse_film varchar(500),
atores_film varchar(300),
diretor_film varchar(300),
genero_film varchar(300),
classificacao_indicativa_film varchar(300),
duracao_film time
);

insert into filme values(null,'Dupla jornada','Trampar como casador', 
'jamie foxx, dave Franco, Natasha Liu Bordizzo e etc', 'Charles Vargas', 
'Ação e comedia, aventura terror', '96% relevate', '01:53:00' );
insert into filme values(null,'Cores da Justiça','Uma policial novat sem querer grava', 
'Tyrese Gilbson, Frank Grilo e etc', 'Naomi Harris', 
'Ação e comedia, aventura terror', '87% relevate', '01:36:00' );
insert into filme values(null,'A maldição de Bridge Hollow','Um pai que odeia  
Halloween é obrigado a se unir a sua finha quando...', 'Luis, Daniel, ]
Higor e etc', 'Marcos Andrade', 
'Familia e comedia', '96% relevate', '01:31:00' );
insert into filme values(null,'Uma Garota de Muita Sorte','A vida perfeeits de uma
escritora começa se despedaçar quando um documentário sobre crime reais ....', 
'Finn Wittrock, Connie Britton e etc', 'Mila Kunis', 
'Baseado em Livros e Drama', '92% relevate', '01:55:00' );
insert into filme values(null,'Blackout','Um homem desperta com aminésia em um hospital', 
' Abbie Cormish, Omar Chaparro e etc', 'Josh Duhamel', 
'Ação e aventura,  Policiais terror', 'NOVO', '01:21:00' );

create table Sala(
id_sala int primary key auto_increment,
nome_sala varchar(300),
numero_sala int,
capacidade_sala varchar(300),
local_sala varchar(300)
);

insert into sala values(null, 'Sala A0', 011, 250, '1º andar' );
insert into sala values(null, 'Sala A1', 012, 110, '1º andar' );
insert into sala values(null, 'Sala A2', 013, 150, '2º andar' );
insert into sala values(null, 'Sala A3', 014, 90, '2º andar' );
insert into sala values(null, 'Sala A4', 015, 130, '2º andar' );

create table Poltrona(
id_polt int primary key auto_increment,
numero_polt int,
fileira_polt int,
coordenada_polt varchar(100),
status_polt varchar(100),
id_sala_fk int,
foreign key(id_sala_fk) references Sala(id_sala)
);

insert into poltrona values(null, 1, 1 , '01;01','Livre',1);
insert into poltrona values(null, 2, 1 , '05;01','Ocupada',2);
insert into poltrona values(null, 3, 1 , '06;01','Reservada',2);
insert into poltrona values(null, 4, 1 , '07;01','Ocupada',1);
insert into poltrona values(null, 5, 1 , '15;01','Livre',5);

create table Sessao(
id_ses int primary key auto_increment,
hora_inicio_ses time,
data_ses date,
hora_fim_ses time,
id_sala_fk int,
foreign key(id_sala_fk) references Sala(id_sala),
id_film_fk int,
foreign key(id_film_fk) references Filme(id_film)
);

insert into sessao values(null, '19:00:00', '2022-10-15', '20:30:00', 1,2);
insert into sessao values(null, '22:00:00', '2022-10-19',  '23:55:00', 3,5);
insert into sessao values(null, '19:30:00', '2022-10-10',  '21:00:00', 2,4);
insert into sessao values(null, '15:30:00', '2022-10-13', '17:30:00', 5,1);
insert into sessao values(null, '16:00:00', '2022-10-11',  '17:45:00', 4,3);

create table Ingresso(
id_ing int primary key auto_increment,
valor_ing float,
data_ing date,
cod_barras_ing varchar(300),
id_ses_fk int,
foreign key (id_ses_fk) references Sessao (id_ses)
);

insert into ingresso values (null, 10.00, '2022-10-12', '154484 48448  5485545 5454111 1515151', 01);
insert into ingresso values (null, 25.00, '2022-09-16', '444844 84447  5548484 5485518 1515511', 02);
insert into ingresso values (null, 20.00, '2022-11-18', '192837 58487  8452734 8246514 2254521', 01);
insert into ingresso values (null, 10.00, '2022-11-25', '295456 54531  1949763 5731945 3289752', 05);
insert into ingresso values (null, 10.00, '2022-12-14', '139745 75445  4682458 5842684 8455422', 03);

create table Venda(
id_vend int primary key auto_increment,
valor_vend float,
hora_vend time,
data_vend date,
id_polt_fk int,
foreign key(id_polt_fk) references Poltrona(id_polt),
id_ing_fk int,
foreign key(id_ing_fk) references Ingresso(id_ing),
id_fun_fk int,
foreign key(id_fun_fk) references Funcionario(id_fun),
id_cli_fk int,
foreign key(id_cli_fk) references Cliente(id_cli)
);

insert into venda values( null, 100.00, '19:25:15', '2022-02-02', 1, 1, 1,1);
insert into venda values( null, 50.00, '19:35:15', '2022-08-23', 2, 2, 2,2);
insert into venda values( null, 70.00, '19:45:15', '2022-07-29', 3, 5, 2,1);
insert into venda values( null, 120.00, '20:19:02', '2022-12-13', 4, 1, 4,1);
insert into venda values( null, 100.00, '19:25:15', '2022-02-02', 2, 3, 2,1);

create table Produto(
id_prod int primary key auto_increment,
nome_prod varchar(300),
marca_prod varchar(300),
valor_venda_prod float,
valor_compra_prod float,
estoque_prod int,
tipo_prod varchar(300),
descricao_prod varchar(300)
);

insert into produto values( null,'Coca cola lata 300ml','Coca cola', 10.00, 5,154,'Bebida', '300 ml'  );
insert into produto values( null,'Coca cola 2 l','Coca cola', 20.00, 12,250,'Bebida', '2000 ml'  );
insert into produto values( null,'Coca cola garrafa 1000ml','Coca cala', 15.00, 7.5,78,'Bebida', '1000 ml'  );
insert into produto values( null,'Fanta lata 300ml','Fanta', 10.00, 5,150,'Bebida', '300 ml'  );
insert into produto values( null,'Guarana Antartida lata 300ml','Antartida', 10.00, 5,364,'Bebida', '300 ml'  );

create table Venda_Produto(
id_vend_prod int primary key auto_increment,
qtd_itens_vend_prod int,
valor_vend_prod float,
id_prod_fk int,
foreign key(id_prod_fk) references Produto(id_prod),
id_vend_fk int,
foreign key(id_vend_fk) references Venda(id_vend)
);

insert into venda_Produto values (null, 5, 1565, 1, 1);
insert into venda_Produto values (null, 78, 2545, 2, 5);
insert into venda_Produto values (null, 3, 45, 4, 3);
insert into venda_Produto values (null, 10, 100, 3, 2);
insert into venda_Produto values (null, 2, 65, 5, 5);

create table Compra(
id_comp int primary key auto_increment,
valor_comp float,
hora_comp time,
data_comp date,
id_fun_fk int,
foreign key(id_fun_fk) references Funcionario(id_fun),
id_forn_fk int,
foreign key(id_forn_fk) references Fornecedor(id_forn)
);

insert into compra values(null, 100, '13:50:01', '2022-10-10',1,2);
insert into compra values(null, 120, '13:55:01', '2022-10-11',2,5);
insert into compra values(null, 190, '13:56:01', '2022-10-12',4,2);
insert into compra values(null, 200, '13:57:01', '2022-10-13',1,4);
insert into compra values(null, 300, '13:12:01', '2022-10-14',3,2);

create table Compra_Produto(
id_vend_comp int primary key auto_increment,
qtd_itens_comp_prod int,
valor_comp_prod float,
id_prod_fk int,
foreign key(id_prod_fk) references Produto(id_prod),
id_comp_fk int,
foreign key(id_comp_fk) references Compra(id_comp)
);

insert into Compra_Produto values(null, 3, 145,1,5);
insert into Compra_Produto values(null, 9, 200,3,2);
insert into Compra_Produto values(null, 12, 450,4,3);
insert into Compra_Produto values(null, 15, 160,5,4);
insert into Compra_Produto values(null, 18, 100,3,2);
