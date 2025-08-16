#Banco de Dados do Restaurante Noturno
#Discente:  WASGTON GOMES PEREIRA
#Turma: 3º periodo ads 2022/02

create database bd_Restaurante_Wasgton;
use bd_Restaurante_Wasgton;

create table Funcionario (
id_fun int primary key auto_increment,
nome_fun varchar(300) not null,
cpf_fun varchar(100) not null,
rg_fun varchar(100),
data_nasc_fun date,
sexo_fun varchar(100),
telefone_fun varchar (300),
email_fun varchar(300),
funcao_fun varchar(300)
);

 insert into Funcionario values(null, 'Marcos Soares dos Santos','048.265.922.02', '5742931 ssp/TO','1980-02-27','Masculino', '(69) 9 9956-3122',
  'soaresMarcos88@gmail.com',  'Garçon');
  insert into funcionario values(null, 'Carlos Moura Bendis','082.012.567.01', '3891258 ssp/PR', '185-10-20','Masculino', '(69) 9 8162-0374',
  'carlosmourão@gmail.com', 'Caixa');
  insert into funcionario values(null, 'Ana Gonçalves Silva','978.645.312.00', '9854132 ssp/RO', '1992-03-25', 'Feminino','(69) 9 9203-4978',
  'anajjj1@gmail.com', 'Cozinheira');
  insert into funcionario values(null, 'Joelia Pereira Ferreira','513.264.957.40', '5246819 ssp/RJ','1990-05-30','Feminino', '(69) 9 9638-0016',
  'ferreira*Joelia@gmail.com',  'Cozinheira');
  insert into funcionario values(null, 'Andréia Boger dos Santos','197.316.671.73', '7439482 ssp/sc','1987-06-26','Feminino', '(69) 9 8436-2681',
 'andréia@gmail.com', 'Gerente');

create table Entregador_App (
id_app int primary key auto_increment,
nome_app varchar(300) not null,
cpf_app varchar(100) not null,
rg_app varchar (100),
data_nasc_app date,
sexo_app varchar(100),
celular_app varchar(100),
email_app varchar(300),
aplicativo_app varchar(100)
);

insert into Entregador_App values(null, 'Fabiola Ferreira', '000.987.321-55', '7468495 sescD RO', '1991-02-02', 'Feminino', '(69) 9 9246-9341',
 'fabiola@gmail.com', 'Pediu chegou');
 insert into Entregador_App values(null, 'Teoma Galiliu', '480.317.541-37', '8268422 sescD RO', '1989-01-20', 'Feminino', '(69) 9 9387-6087',
 'teoma@gmail.com', 'Sped toque');
 insert into Entregador_App values(null, 'Moises Abrão', '692.184.187-25', '3768408 sescD RO', '1999-11-13', 'Masculino', '(69) 9 8419-2018',
 'abrãoa@gmail.com', 'Contato flesh');
 insert into Entregador_App values(null, 'Joabi Daniel', '997.005.872-66', '9068446 sescD RO', '1997-08-07', 'Masculino', '(69) 9 9271-1322',
 'joabi@gmail.com', 'Free toquer');
 insert into Entregador_App values(null, 'Wendel Fabiano', '204.751.065-85', '0568416 sescD RO', '1979-10-18', 'Masculino', '(69) 9 0678-1912',
 'wendel@gmail.com', 'Chamda Rapida');

create table Mesa (
id_mes int primary key auto_increment,
numero_mes int not null,
capacidade_mes int,
status_mes varchar(100),
cor_mes varchar(100),
nivel_mes varchar(100)
);

insert into Mesa values(null, 15,8, 'Livre', 'Azul', 'Comercial' );
insert into Mesa values(null, 16,10, 'Livre', 'Azul', 'Comercial' );
insert into Mesa values(null, 17,12, 'Ocupado', 'Cinza', 'Premio' );
insert into Mesa values(null, 18,6, 'Reservado', 'Amarela', 'Vip' );
insert into Mesa values(null, 19,4, 'Ocupado', 'Branca', 'Premio' );

create table Fornecedor(
id_for int primary key auto_increment,
razao_social_for varchar(300) not null,
nome_fantasia_for varchar(300),
cnpj_for varchar(100) not null,
endereco_for varchar(300),
celular_for varchar(100),
email_for varchar(300)
);

insert into fornecedor values(null, 'Coca Cola Industrias Ltda', 'Coca Cola', '45.997.418/0001-53', 'Estrada do Mendanha, 4489
CAMPO GRANDE RIO DE JANEIRO - RJ 23097-003','(21) 3200-9738','cocacola@gmail.com');
insert into fornecedor values(null, 'PEPSICO SOCIEDADE PREVIDENCIARIA', 'Pepes', '00.098.693/0001-05', 'Avenida Presidente 
Juscelino Kubitschek, 180, 15º andar, Vila Nova Conceição, São Paulo, SP, 04543-000','(21) 3485-9500','pepis@gmail.com');
insert into fornecedor values(null, 'INDUSTRIA E COMERCIO DE BEBIDAS MDM LTDA', 'REFRIGERANTES DYDYO', '03.559.491/0001-01', 
'Rua Raimundo Cantuaria, 7761 TIRADENTES PORTO VELHO - RO 76824-629','(69) 3216-0458','REFRIGERANTES_DYDYO@gmail.com');
insert into fornecedor values(null, 'PAULO HENRIQUE FAUSTINO MACIEL', 'Doritos', '34.522.511/0001-95', 'Avenida Vinte e 
Quatro de Marco, 220 CENTRO IBIUNA - SP 18150-000','(15) 99697-1055','pfaustino92@gmail.com');
insert into fornecedor values(null, 'CHOKITO MOTOS', '	CHOKITO ', '08.184.617/0001-16', 'Rua Joao Lumina Junior, 170
COHAB I BOTUCATU - SP 18605-120','(14) 99655-7452','CHOKITO@gmail.com');

create table Cliente(
id_cli int primary key auto_increment,
nome_cli varchar(300) not null,
cpf_cli varchar(300) not null,
rg_cli varchar(100),
sexo_cli varchar(100),
data_nascimento_cli date,
celular_cli varchar(100),
endereco_cli varchar(300),
email_cli varchar(300)
);

insert into Cliente values(null,'Joaquim Gomes Da Silva', '194.017.222-01','7468495 sescD RO','Masculino','1943-10-02', '(69) 9 9300-2584',
'Rua Fortaleza nº 2377 Bairro JK', 'joaquim@gmail.com');
insert into Cliente values(null,'Raquel Gomes Da Silva','084.772.698-85','5183927 sescD RO','Feminino','1987-03-15', '(69) 9 9917-3496' , 
'Rua Monte Negro nº 917 Bairro Esperança','raquel@gmail.com');
insert into Cliente values(null,'Rozilda Gomes Da Silva','087.476.262-69','1593576 sescD RO','Femenino','1978-09-21',   '(69) 9 8472-6603',
'Rua Santa fé nº 4578 Bairro Centro', 'rozilda@gmail.com');
insert into Cliente values(null,'Marta Gomes Da Silva','022.934.538-37','0128520 sescD RO','Feminino','1980-12-23', '(69) 9 9231-0052' ,
'Rua Pimenteira nº 1784 Bairro Novo Horizonte','marta@gmail.com' );
insert into Cliente values(null,'Rogildo Gomes Machado','229.745.400-23','8967249 sescD RO','Masculino','1972-01-01',  '(69) 9 9966-8740'  ,
'Rua Ponta Fina nº 1990 Bairro Setor 10','rogildo@gmail.com');

create table Reserva (
id_res int primary key auto_increment,
data_solicitacao_res date,
horario_solicitacao_res time,
data_reservada_res date not null,
horario_reservado_res time not null,
numero_pessoas_res int not null,
id_cli_fk int not null,
foreign key (id_cli_fk) references Cliente (id_cli),
id_mes_fk int not null,
foreign key (id_mes_fk) references Mesa (id_mes)
);

insert into Reserva Values (null, '2022-09-12', '19:00:00', '2022-10-19', '19:30:00',8, 5, 1);
insert into Reserva Values (null, '2022-09-11', '09:25:31', '2022-10-12', '19:45:00',4, 3, 5);
insert into Reserva Values (null, '2022-09-13', '14:48:37', '2022-10-04', '22:50:00',6, 1, 4);
insert into Reserva Values (null, '2022-09-19', '08:05:14', '2022-10-29', '21:10:00',10, 4, 3);
insert into Reserva Values (null, '2022-09-03', '20:18:02', '2022-10-24', '20:15:00',9, 5, 2);

/* ESTE AQUI EM BAIXO É A TABELA DO SCRIP QUE O SENHOR DEIXOU, POREM EU NOTEI QUE O TIPO DE DADO DO ATRIBUTO "DATA" ESTÁ DECLARADO COMO
O TIPO "TIME". Por essa razão em expecifico estarei modificando somente este atributo em particular para que ocora uma relação que faça sentido na tabela. 
create table Caixa (
id_cai int primary key auto_increment,
numero_cai int not null,
data_cai time not null, 
horario_abertura_cai time,
saldo_inicial_cai float not null,
total_recebimentos_cai float,
total_pagamentos_cai float,
saldo_final_cai float,
horario_fechamento_cai time,
id_fun_fk int not null,
foreign key (id_fun_fk) references Funcionario (id_fun)
);*/

create table Caixa (
id_cai int primary key auto_increment,
numero_cai int not null,
data_cai date not null, # -----> Atributo que foi modificado o tipo de TIME para DATE
horario_abertura_cai time,
saldo_inicial_cai float not null,
total_recebimentos_cai float,
total_pagamentos_cai float,
saldo_final_cai float,
horario_fechamento_cai time,
id_fun_fk int not null,
foreign key (id_fun_fk) references Funcionario (id_fun)
);

insert into caixa values(null,245,'2022-10-01','18:00:59', 1200, 7540, 240,8500, '23:00:00',2 );
insert into caixa values(null,246,'2022-10-02','18:05:18', 1200, 5492, 600,4892, '23:07:00',2 );
insert into caixa values(null,247,'2022-10-03','17:58:07', 1200, 14850, 1400,13450, '23:15:00',2 );
insert into caixa values(null,248,'2022-10-04','18:01:39', 1200, 21875, 700,21175, '23:06:00',2 );
insert into caixa values(null,249,'2022-10-05','18:08:00', 1200, 9782, 100,9682, '22:57:00',2 );

create table Despesa (
id_des int primary key auto_increment,
descricao_des varchar(300) not null,
data_des date,
hora_des time,
valor_des float not null,
parcelamento_des int not null,
tipo_des varchar(300),
id_for_fk int,
foreign key (id_for_fk) references Fornecedor (id_for)
);

insert into Despesa values(null, 'Referente ao mês 12-2020', '2020-12-06','14:00:00', 420, 5, 'Compra a prazo', 5);
insert into Despesa values(null, 'Referente ao mês 12-2020', '2020-12-10','07:00:00', 2300,1,'Compra a prazo', 4);
insert into Despesa values(null, 'Referente ao mês 12-2020', '2020-11-30','10:00:00',8458.62, 3, 'Compra a prazo',3);
insert into Despesa values(null, 'Referente ao mês 12-2020', '2020-12-15','17:00:00',86.31, 15, 'Amostra', 1);
insert into Despesa values(null, 'Referente ao mês 12-2020', '2020-12-01','13:00:00',700, 1, 'Amostra parcial', 2);

create table Pagamento (
id_pag int primary key auto_increment,
data_pag date,
parcela_pag int not null,
valor_pag float,
forma_pagamento_pag varchar(100),
status_pag varchar(100),
vencimento_pag date not null,
hora_pag time,
id_cai_fk int,
foreign key (id_cai_fk) references Caixa (id_cai),
id_des_fk int not null,
foreign key (id_des_fk) references Despesa (id_des)
);

insert into pagamento values(null, '2022-05-12', 9,420,'Pix','Em andamento', '2022-05-30', '18:00:00', 2,1);
insert into pagamento values(null, '2022-02-19', 2,420,'Boleto','Em andamento', '2022-05-30', '18:00:00', 4,2);
insert into pagamento values(null, '2022-10-26', 1,420,'Cheque','Em andamento', '2022-05-30', '18:00:00', 3,3);
insert into pagamento values(null, '2022-11-30', 4,420,'Dinheiro','Finalizado', '2022-05-30', '18:00:00', 4,5);
insert into pagamento values(null, '2022-08-17', 7,420,'Cartão debito','Em andamento', '2022-05-30', '18:00:00', 1,4);

create table Pedido (
id_ped int primary key auto_increment,
hora_ped time,
data_ped date not null,
prioridade_ped varchar(300),
valor_ped float not null,
status_ped varchar (300) not null,
id_mes_fk int,
foreign key (id_mes_fk) references Mesa (id_mes),
id_fun_fk int,
foreign key (id_fun_fk) references Funcionario (id_fun)
);

insert into Pedido values(null, '18:24:01', '2022-10-01', 'Sem Prioridade', 40, 'Aguardando', 1,5);
insert into Pedido values(null, '18:34:19', '2022-09-28', 'Prioridade Nivel 7', 5478, 'Fnalizado', 4,5);
insert into Pedido values(null, '19:07:37', '2022-01-09', 'Sem Prioridade', 710, 'Aguardando', 3,5);
insert into Pedido values(null, '20:43:04', '2022-12-12', 'Sem Prioridade', 578, 'Aguardando', 2,5);
insert into Pedido values(null, '18:50:44', '2022-11-03', 'Prioridade Nivel 1', 8422, 'Aguardando', 5,5);

create table Venda (
id_ven int primary key auto_increment,
valor_ven float not null,
data_ven date not null,
hora_ven time not null,
parcelamento_ven varchar(300) not null,
id_fun_fk int not null,
foreign key (id_fun_fk) references Funcionario (id_fun),
id_cli_fk int,
foreign key (id_cli_fk) references Cliente (id_cli),
id_ped_fk int,
foreign key (id_ped_fk) references Pedido (id_ped)
);


insert into Venda values(null, 500,'2022-01-01', '20:12:36', 1,2,5,3);
insert into Venda values(null, 1450,'2022-02-02', '19:10:06', 4,2,4,1);
insert into Venda values(null, 7891,'2022-03-03', '21:29:29', 2,2,3,2);
insert into Venda values(null, 12500,'2022-04-04', '19:30:47', 1,2,2,4);
insert into Venda values(null, 78100,'2022-11-05', '22:20:41', 1,2,1,5);

create table Prato (
id_pra int primary key auto_increment,
nome_pra varchar(100) not null,
foto_pra longblob,
valor_pra float not null,
ingredientes_pra varchar(300),
avaliacao_pra varchar(300),
valor_nutritivo_pra varchar(300),
calorias_pra varchar(300),
estoque_pra float
);

insert into Prato values(null, 'Prato Feito', '200X200', 54, 'Arroz, feijão, Salada, befe bovino, ovo, farofa e polenta', '5', 'Rico em proteinas e carboidratos', '150 kcal', 120);
insert into Prato values(null, 'Sopa', '300X200', 21, 'Macarrão, batata, cenoura, yame', '4.2', 'Rico em carboidratos', '80 kcal', 27);
insert into Prato values(null, 'Carne assada', '500X500', 45, 'Carne bovina', '4.9', 'Rico em proteina animal', '250 kcal', 154);
insert into Prato values(null, 'Miojo', '400X200', 21, 'Macarrão stantanei e tempero', '5', 'Rico em carboidratos, vitamina b1 e b2', '20 kcal', 300);
insert into Prato values(null, 'Cachorro quente', '100X100', 12, 'Pão, salsicha, molho, milho verde, bacon, queijo, presunto e ovo', '5.0', 'Rico em proteinas,
 vitaminas do tipo(b1 a b12), carboidratos, gorduras saturadas, sódio e potasio', '450 kcal', 540);

create table Venda_Prato (
id_ven_pra int primary key auto_increment,
quantidade_ven_pra float not null,
valor_ven_pra float not null,
id_ven_fk int not null,
foreign key (id_ven_fk) references Venda (id_ven),
id_pra_fk int not null,
foreign key (id_pra_fk) references Prato (id_pra)
);

insert into Venda_Prato values(null,4, 840, 1, 5);
insert into Venda_Prato values(null,12, 120, 2, 4);
insert into Venda_Prato values(null,1, 4875, 3, 3);
insert into Venda_Prato values(null,5, 2015, 4, 2);
insert into Venda_Prato values(null,3, 2020, 5, 1);

create table Produto (
id_pro int primary key auto_increment,
nome_pro varchar(300) not null,
descricao_pro varchar(300),
und_pro varchar (30),
tipo_pro varchar (300),
codigo_barras_pro varchar(300),
estoque_pro int,
valor_pro float not null
);

insert into produto values( null,'Coca cola lata','Coca cola lata 300ml',1,'Bebida', '1234567891123' ,154, 9.00  );
insert into produto values( null,'Coca cola garafa','Coca cola 2 l',2,'Bebida', '9724682451457' ,250, 20.00  );
insert into produto values( null,'Coca cala Garrafa','Coca cola garrafa 1000ml',1,'Bebida', '254655874698' , 78,15.00 );
insert into produto values( null,'Fanta', 'Fanta lata 300ml',1,'Bebida', '7319584265978' ,150,11.00  );
insert into produto values( null,'Antartida','Guarana Antartida lata 300ml', 1,'Bebida', '9183764385724' ,364, 12.50 );

create table Venda_Produto (
id_ven_pro int primary key auto_increment,
quantidade_ven_pro int not null,
valor_ven_pro float not null,
id_ven_fk int not null,
foreign key (id_ven_fk) references Venda (id_ven),
id_pro_fk int not null,
foreign key (id_pro_fk) references Produto (id_pro)
);

insert into venda_Produto values (null, 5, 1565, 1, 1);
insert into venda_Produto values (null, 78, 2545, 2, 5);
insert into venda_Produto values (null, 3, 45, 4, 3);
insert into venda_Produto values (null, 10, 100, 3, 2);
insert into venda_Produto values (null, 2, 65, 5, 5);

create table Prato_Pedido (
id_pra_ped int primary key auto_increment,
quantidade_prat_ped float not null,
valor_pra_ped float not null,
id_pra_fk int not null,
foreign key (id_pra_fk) references Prato (id_pra),
id_ped_fk int not null,
foreign key (id_ped_fk) references Pedido (id_ped)
);

insert into Prato_Pedido values(null, 15, 741, 1,2);
insert into Prato_Pedido values(null, 74, 15870, 3,5);
insert into Prato_Pedido values(null, 1, 740, 4,1);
insert into Prato_Pedido values(null, 5, 287, 2,3);
insert into Prato_Pedido values(null, 7, 5278, 5,1);

create table Produto_Pedido (
id_pro_ped int primary key auto_increment,
quantidade_pro_ped int not null,
valor_pro_ped float not null,
id_pro_fk int,
foreign key (id_pro_fk) references Produto (id_pro),
id_ped_fk int,
foreign key (id_ped_fk) references Pedido (id_ped)
);

insert into Produto_Pedido values(null, 6, 412, 5,4);
insert into Produto_Pedido values(null, 12, 870, 4,3);
insert into Produto_Pedido values(null, 9, 45, 3,2);
insert into Produto_Pedido values(null, 4, 259, 2,1);
insert into Produto_Pedido values(null, 11, 250, 1,5);

create table Compra (
id_com int primary key auto_increment,
valor_com float,
data_com date,
hora_com time,
parcelamento_comp varchar(300),
descricao_comp varchar(300),
id_for_fk int not null,
foreign key (id_for_fk) references Fornecedor (id_for),
id_fun_fk int not null,
foreign key (id_fun_fk) references Funcionario (id_fun)
);

insert into compra values(null, 100,  '2022-10-10','13:50:01','1X','Compra de produtos de limpeza' ,1,5);
insert into compra values(null, 120,  '2022-10-11','13:55:01','2X','Compra de produtos em falta no estoque no mês' ,2,4);
insert into compra values(null, 190,  '2022-10-12','13:56:01','1X','Compra de produtos de higiene' ,3,3);
insert into compra values(null, 200,  '2022-10-13','13:57:01','5X','Compra de uniformes' ,4,2);
insert into compra values(null, 300,  '2022-10-14','13:58:01','1X','Compra de lampadas' ,5,1);

create table Compra_Produto (
id_com_pro int primary key auto_increment,
quantidade_com_pro int not null,
valor_com_pro float not null,
id_com_fk int not null,
id_pro_fk int not null,
foreign key (id_com_fk) references Compra (id_com), 
foreign key (id_pro_fk) references Produto (id_pro)
);

insert into Compra_Produto values(null, 3, 145,1,5);
insert into Compra_Produto values(null, 9, 200,3,2);
insert into Compra_Produto values(null, 12, 450,4,3);
insert into Compra_Produto values(null, 15, 160,5,4);
insert into Compra_Produto values(null, 18, 100,3,2);

create table Entrega (
id_ent int primary key auto_increment,
endereco_alternativo_ent varchar(300),
hora_saida_ent time,
hora_chegada_ent time,
data_ent date,
status_ent varchar(100),
veiculo_ent varchar(100),
id_app_fk int,
foreign key (id_app_fk) references Entregador_App (id_app),
id_fun_fk int,
foreign key (id_fun_fk) references Funcionario (id_fun),
id_ven_fk int not null,
foreign key (id_ven_fk) references Venda (id_ven)
);

insert into Entrega values(null, 'Rua joão pinheiro 2348 santa luzia','19:15:00','19:20:00', '2022-09-15', 'Finalizada', 'Fan 160', 1,2,3);
insert into Entrega values(null, 'Rua Galo de briga 1977 setor 4','18:35:00','18:45:00', '2022-07-13', 'Em Andamento', 'XJ6 2022', 2,2,2);
insert into Entrega values(null, 'Rua mato grosso 3640 setor 5','19:15:00','19:20:00', '2022-01-02', 'Finalizada', 'Cb 500 x', 3,2,1);
insert into Entrega values(null, 'Rua dom pedro I 1955 setor 10','20:41:00','21:05:00', '2022-04-18', 'Finalizada', 'Bross 160', 4,2,5);
insert into Entrega values(null, 'Rua julio Guerra 2109 são cristovão','21:15:00','21:27:00', '2022-10-15', 'Em Andamento', 'Titan 160', 5,2,4);

create table Recebimento (
id_rec int primary key auto_increment,
data_rec date,
parcela_rec int,
valor_rec float,
forma_recebimento_rec varchar(100),
status_rec varchar(100),
vencimento_rec date,
hora_rec time,
valor_parcela_rec float,
id_cai_fk int,
foreign key (id_cai_fk) references Caixa (id_cai),
id_ven_fk int not null,
foreign key (id_ven_fk) references Venda (id_ven)
);

insert into Recebimento values (null, '2022-05-06',2,5400,'PIX', 'Finalizado', '2022-05-30','13:00:00', 540,1,1);
insert into Recebimento values (null, '2022-06-07',1,4800,'Dinheiro', 'Em aberto', '2022-06-30','14:00:00', 480,2,2);
insert into Recebimento values (null, '2022-07-08',3,4200,'Boleto', 'Em aberto', '2022-07-30','15:00:00', 420,3,3);
insert into Recebimento values (null, '2022-08-09',1,3600,'Cheque', 'Finalizado', '2022-08-30','16:00:00', 600,4,4);
insert into Recebimento values (null, '2022-09-10',5,3000,'PIX', 'Finalizado', '2022-09-30','17:00:00', 300,5,5);

select *from  funcionario;
select *from  entregador_app;
select *from  mesa  ;
select *from  fornecedor  ;
select *from  cliente ;
select *from  reserva  ;
select *from  caixa ;
select *from  despesa  ;
select *from  pagamento ;
select *from  pedido  ;
select *from  venda  ;
select *from  prato  ;
select *from  Venda_Prato  ;
select *from  produto ;
select *from  Venda_Produto ;
select *from  Prato_Pedido  ;
select *from  Produto_Pedido  ;
select *from  compra  ;
select *from  Compra_Produto ;
select *from  entrega ;
select *from  recebimento  ;
























