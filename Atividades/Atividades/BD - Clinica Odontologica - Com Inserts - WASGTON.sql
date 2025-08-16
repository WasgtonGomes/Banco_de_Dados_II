#CLINICA ODONTOLOGICA
#Discente:  WASGTON GOMES PEREIRA
#Turma: 3º periodo ads 2022/02

create database BD_Clinica_Odontologica_Wasgton;
use BD_Clinica_Odontologica_Wasgton;

create table Paciente(
pac_id int primary key,
pac_nome varchar (300),
pac_cpf varchar (100),
pac_data_nascimento date,
pac_email varchar (300),
pac_celular varchar (100),
pac_endereco varchar (300)
);
insert  into Paciente values(1, 'José Alves', '587.931.424-65', '2012-02-14', 'josé@gmail.com', '(11) 9 8112-6322', ' Rua monte Negro, nº 456, Bairro Sertanejos');
insert  into Paciente values(2, 'Larissa Torre de Andrade', '007.222.582-22', '1998-09-02', 'larissa@gmail.com', '(54) 9 9911-0762', ' Rua Dutra, nº 007, Bairro Banhados');
insert  into Paciente values(3, 'Maria Clara Costa Silva', '032.674.838-27', '1996-08-10', 'ClaraMaria@gmail.com', '(69) 9 9345-1560', ' Rua São José, nº 1097, Bairro Quedas das pedras');
insert  into Paciente values(4, 'Arthus Afonso Guilda', '212.819.552-00', '1980-11-02', 'arthur@gmail.com', '(51) 9 9600-2120', ' Rua Paulo Leiva, nº 9825, Bairro Cerejeiras');
insert  into Paciente values(5, 'Cristiane Martins Silva', '741.963.258-53', '1992-04-13', 'cristiane@gmail.com', '(69) 9 8427-9991', ' Rua Araujo Cardoso, nº 4462, Bairro Colina Branca');

create table Anamnese(
ana_id int primary key,
ana_data date,
ana_diabete varchar (100),
ana_cardiopatia varchar (300),
ana_obesidade varchar (300),
ana_sintomas varchar (1000),
ana_tipo varchar (100),
id_pac_fk int,
foreign key (id_pac_fk) references Paciente (pac_id)
);

insert into Anamnese values(1, '2022-10-18', 'Não', 'Otimo', 'Não possui','Nenhuma queixa Grave','interrogatório cruzado',1 );
insert into Anamnese values(2, '2022-02-10', 'Sim', 'Bom', 'Possui','Queixa de falta de ar','interrogatório cruzado',4 );
insert into Anamnese values(3, '2022-08-11', 'Não', 'Ruim', 'Não possui','Nenhuma queixa Grave','interrogatório cruzado',2 );
insert into Anamnese values(4, '2022-05-03', 'Sim', 'Otimo', 'Não possui','Nenhuma queixa Grave','interrogatório cruzado',5 );
insert into Anamnese values(5, '2022-09-30', 'Não', 'Otimo', 'Não possui','Nenhuma queixa Grave','interrogatório cruzado',3 );

create table Odontograma(
odo_id int primary key,
ono_incisivo_lateral int,
ono_1_molar int,
ono_canino int,
ono_2_molar int,
ono_incisivo_central int,
ono_2_premolar int,
ono_1_premolar int,
ono_3_molar int,
id_pac_fk int,
foreign key (id_pac_fk) references Paciente (pac_id)
);

insert into Odontograma values(1, 0,0,1,0,1,2,0,1,5);
insert into Odontograma values(2, 1,1,1,1,0,0,1,0,2);
insert into Odontograma values(3, 0,1,0,0,0,0,0,0,4);
insert into Odontograma values(4, 2,0,0,0,0,0,0,0,1);
insert into Odontograma values(5, 1,1,1,1,1,1,1,1,3);

create table Funcionario(
fun_id int primary key,
fun_nome varchar (300),
fun_especialidade varchar (300),
fun_cpf varchar (100),
fun_rg varchar (100),
fun_funcao varchar (300),
fun_data_nascimento date,
fun_celular varchar (100),
fun_endereco varchar (300),
fun_email varchar (300)
);

insert into funcionario values(1 , 'Kenia Rodrigues Pereira','Administração', '231.564.978.10', '162642-8 Sesdes TO ', 'Atendente',
'1991-08-25','(69) 9 9361-8448', 'Rua Julio Guerra, nº 409 Bairro Centro','Kenia@hotmail.com');
insert into funcionario values(2 , 'Elilson Fabiano Pereira','Odontologia', '743.003.852.20', '213340-4 Sesdes RO ', 'Dentista Pediatrico',
'1983-05-12','(69) 9 9900-4425', 'Rua Mato Grosso, nº 2433 Bairro 2 de Abril','elilson@gmail.com');
insert into funcionario values(3 , 'Carlos Augusto Lyra','Ciencias Contabeis', '045.677.195.03', '638246-9 Sesdes SP ', 'Gestor Finaceiro',
'1995-12-05','(69) 9 9337-5781', 'Rua 1ª Guerra Mundial, nº 9781 Bairro Cordel','Carlos@hotmail.com');
insert into funcionario values(4 , 'Ana Beatriz Butisk','Odontologia', '591.734.468.07', '163096-5 Sesdes RO ', 'Dentista Pediatrico',
'1990-07-03','(69) 9 8144-1440', 'Rua Rio Grande do Sul, nº 3640 Bairro Setor 5','dr.Ana_Beatriz@gmail.com');
insert into funcionario values(5 , 'Yara Duarte Guedes','Odontologia', '039.845.249.47', '396182-4 Sesdes MT ', 'Dentista Geral',
'1987-10-04','(69) 9 9973-6428', 'Rua Amazônas, nº 1976 Bairro Setor 4 ','dr.Yara_Duarte@gmail.com');

create table Sala(
sal_id int primary key,
sal_nome varchar (301),
sal_descricao varchar (1001),
sal_estoque int,
sal_valor double,
sal_tipo varchar (301)
);

insert into Sala values(1, 'Sala de Espera', 'Lugar de espera por atendimento',2,9000, 'Monitorada' );
insert into Sala values(2, 'Sala de Consulta Pediatrica', 'Lugar de Consulta odontologica pediatrico',4,80000, 'Monitorada' );
insert into Sala values(3, 'Sala de Consulta Adulto ', 'Lugar de Consulta odontologica',2,25900, 'Monitorada' );
insert into Sala values(4, 'Recepição', 'Lugar de recepção dos pacientes',1,50000, 'Monitorada' );
insert into Sala values(5, 'Adimistrativo', 'Área destinada a asustos finaceiros e adimistrativos',1,70000, ' Não Monitorada' );

create table Caixa(
cai_id int primary key,
cai_data date,
cai_saldo_inicial double,
cai_total_entrada double,
cai_total_saida double,
cai_saldo_final double
);

# Na empresa onde trabalho o saldo inicial do caixa é um valor fixo de R$ 500,00  para troco e tals. 
#Por este motivo juguei  que o caixa aqui poderia iniciar com um valor fixo, blz professor.

insert into caixa values(1, '2022-10-01', 500, 78000, 500, 78000);
insert into caixa values(2, '2022-10-02', 500, 40500, 1000, 40000);
insert into caixa values(3, '2022-10-03', 500, 29670, 1170, 29000);
insert into caixa values(4, '2022-10-04', 500, 97856, 1356, 97000);
insert into caixa values(5, '2022-10-05', 500, 67923, 1423, 67000);

create table Fornecedor(
for_id int primary key,
for_razao_social varchar (300),
for_nome_santasia varchar (300),
for_cnpj varchar (300),
for_endereco varchar (300),
for_contato varchar (100)
);

insert into Fornecedor values(1 , 'Consumi lognat ltda', 'Delvat', '00.098.693/0001-05', 'AV Paulista nº 2546, Centro','(21) 9 3200-9738');
insert into Fornecedor values(2 , 'JD Masca Norte ltda', 'Masca Norte', '11.022.198/0001-96', 'Rua São Tiago nº 007, Nova União','(69) 9 3216-0458');
insert into Fornecedor values(3 , 'A.A.D JOSÉ vst LTDA', 'Belcon', '33.909.690/56483-12', 'AV Goinia nº 3041, Zona Norte','(69)  9 3521-1440');
insert into Fornecedor values(4 , 'J. M Farinácio', 'Fama', '55.724.513/0001-33', 'AV Maringa nº 1750, Figueiredo','(69) 9 9364-1337');
insert into Fornecedor values(5 , 'A.A Altair Martins Cintra', 'Altair ', '43.097.8273/0023-64', 'AV Dom Pedro I nº 5612, Setor 5','(69) 9 3521-0027');

create table Despesa(
des_id int primary key,
des_nome varchar (301),
des_data date,
des_vencimento date,
des_parcelamento varchar (301)
);

insert into Despesa values(1, 'Energia referente ao mês 12-2020', '2020-12-06', '2022-10-30',1);
insert into Despesa values(2, 'Aluguel referente ao mês 12-2020', '2020-12-10', '2022-12-30',1);
insert into Despesa values(3, 'Contabilidade referente ao mês 12-2020', '2020-11-30','2022-08-30',2);
insert into Despesa values(5, 'Água referente ao mês 12-2020', '2020-12-15', '2022-09-30',3);
insert into Despesa values(4, 'Segurança referente ao mês 12-2020', '2020-12-01','2022-08-30',1);

create table Agenda(
age_id int primary key,
age_data_hora datetime,
age_tipo varchar (301),
id_pac_fk int,
id_fun_fk int,
id_sal_fk int,
foreign key (id_pac_fk) references Paciente (pac_id),
foreign key (id_fun_fk) references Funcionario (fun_id),
foreign key (id_sal_fk) references Sala (sal_id)
);

insert into Agenda values(1, '2022-10-02 10:30:00', 'Pediatríco',5,1,2);
insert into Agenda values(2, '2022-10-03 08:30:00', 'Adulto',2,1,3);
insert into Agenda values(3, '2022-10-04 07:30:00', 'Adulto',1,1,3);
insert into Agenda values(4, '2022-10-05 16:30:00', 'Adulto',3,1,3);
insert into Agenda values(5, '2022-10-06 14:30:00', 'Adulto',4,1,3);

create table Pagamento(
pag_id int primary key,
pag_parcela varchar (301),
pag_status varchar (301),
pag_forma varchar (300),
pag_data date,
pag_valor double,
id_cai_fk int,
id_des_fk int,
foreign key (id_cai_fk) references Caixa (cai_id),
foreign key (id_des_fk) references Despesa (des_id)
);

insert into Pagamento values(1,1, 'Pago','Pix','2022-09-02',6580, 1,5);
insert into Pagamento values(2,2, 'Pago','Boleto','2022-09-12',17820,2,4);
insert into Pagamento values(3,1, 'Pago','Pix','2022-09-05',230, 3,3);
insert into Pagamento values(4,1, 'Pago','Dinheiro','2022-09-20',4250,  4,2);
insert into Pagamento values(5,1, 'Pago','Pix','2021-02-02',210, 1,1);

create table Consulta(
con_id int primary key,
con_valor double,
con_data_tempo datetime,
id_pac_fk int,
id_odo_fk int,
id_fun_fk int,
id_sal_fk int,
foreign key (id_pac_fk) references Paciente (pac_id),
foreign key (id_odo_fk) references Odontograma (odo_id),
foreign key (id_fun_fk) references Funcionario (fun_id),
foreign key (id_sal_fk) references Sala (sal_id)
);

insert into Consulta values(1, 750,'2022-10-10 14:00:00',1,2,2,2);
insert into Consulta values(2, 850,'2022-10-09 10:00:00',2,5,4,3);
insert into Consulta values(3, 850,'2022-10-11 08:00:00',3,3,2,3);
insert into Consulta values(4, 900,'2022-10-12 16:00:00',4,1,4,3);
insert into Consulta values(5, 600,'2022-10-08 13:00:00',5,4,2,3);

create table Material(
mat_id int primary key,
mat_nome varchar (300),
mat_descricao varchar (1000),
mat_estoque int,
mat_valor double,
mat_tipo varchar (300)
);

insert into Material values(1 , 'Ponta diamantada esferica', ' Utilizada em operações rotineiras em esmalte, dentina e preparações cavitárias em geral',
78, 10.29,'Invict');
insert into Material values(2 , 'Kit Acadêmico com Spray Externo Tb', ' O kit de peças de mão da dabi atlante é completo para a necessidade do cirurgião-dentista',
31, 3840,'Saevo');
insert into Material values(3 , 'Luva de Procedimento Látex', ' são destinadas para a proteção do profissional de saúde nos procedimentos médicos e de enfermagem',
780, 15.99,'SUPERMAX');
insert into Material values(4 , 'Compressa de Gaze - 9 Fios', ' É Utilizada Para Absorção De Sangue e  Líquidos',
260, 25.90,'UltraCotton');
insert into Material values(5 , 'Agulha Gengival', ' Agulha descartável para uso exclusivo Odontológico, utilizado para injetar anestésico ou soluções intra-dentais',
650, 43.89,'AllPrime');

create table Compra (
com_id int primary key,
com_data date,
com_valor double,
id_for_fk int,
foreign key (id_for_fk) references Fornecedor (for_id)
);

insert into Compra  values(1, '2022-10-01', 5420, 3);
insert into Compra  values(2, '2022-08-21', 16932, 5);
insert into Compra  values(3, '2022-04-09', 2889, 4);
insert into Compra  values(4, '2022-01-30', 25346, 1);
insert into Compra  values(5, '2022-07-26', 9173, 2);

create table Material_Compra (
mat_com_id int primary key,
id_com_fk int,
id_mat_fk int,
foreign key (id_com_fk) references Compra (com_id),
foreign key (id_mat_fk) references Material (mat_id)
);

insert into Material_Compra values(1 , 1, 1);
insert into Material_Compra values(2 , 2, 2);
insert into Material_Compra values(3 , 5, 4);
insert into Material_Compra values(4 , 2, 3);
insert into Material_Compra values(5 , 4, 5);

create table Recebimento(
rec_id int primary key,
rec_parcela varchar (300),
rec_status varchar (300),
rec_forma varchar (300),
rec_data date,
rec_valor double,
id_con_fk int,
id_cai_fk int,
foreign key (id_con_fk) references Consulta (con_id),
foreign key (id_cai_fk) references Caixa (cai_id)
);

insert into Recebimento values(1,  1,  'Finalizado','Dinheiro','2022-10-12',450,1,1);
insert into Recebimento values(2,  2, 'Finalizado','Pix','2022-10-01',300,2,5);
insert into Recebimento values(3,  1,  'Finalizado','Cartão de Crédito Visa','2022-10-03',3000,3,4);
insert into Recebimento values(4,  9,  'Finalizado','Cheque','2022-10-20',1540,4,3);
insert into Recebimento values(5,  1,  'Finalizado','Pix','2022-10-25',987,5,2);

create table Procedimento(
pro_id int primary key,
pro_valor double,
pro_nome varchar (300),
pro_descricao varchar (1000),
pro_tempo time,
pro_tipo varchar (300),
pro_requisitos varchar (300)
);

insert  into Procedimento values(1,150, 'Restauração Odontológica',' É uma forma de fazer com que o dente afetado pela cárie volte à sua forma e sua função normal',
 '1:30:00', 'Serviço,', 'Consulta');
 insert  into Procedimento values(2,200, 'Aplicação de flúor','A aplicação pode ser feita na forma de gel ou espuma, através de moldeiras ajustáveis, deixando o flúor
 em íntimo contato com a superfície dental num período','00:30:00', 'Serviço,', 'Consulta');
 insert  into Procedimento values(3,1500, 'tratamentos de canal',' É um procedimento que consiste na retirada da polpa do dente, um tecido encontrado na parte interna da raiz',
 '2:30:00', 'Serviço,', 'Consulta');
 insert  into Procedimento values(4,750, 'Tratamento de bruxismo',' Recurso mais comum utilizado por dentistas que atendem por plano odontológico é a indicação de uso de placas interoclusais',
 '4:00:00', 'Serviço com material adicional,', 'Consulta');
 insert  into Procedimento values(5,280, 'Aplicação de selante','  É composto por um material resinoso que é aplicado sobre os dentes, protegendo-os das cáries',
 '02:00:00', 'Serviço com material,', 'Consulta');
 
create table  Consulta_Procedimento(
con_pro_id int primary key,
id_con_fk int,
id_pro_fk int,
foreign key (id_con_fk) references Consulta (con_id),
foreign key (id_pro_fk) references Procedimento (pro_id)
);

insert into Consulta_Procedimento values(1, 2,3);
insert into Consulta_Procedimento values(2, 3,4);
insert into Consulta_Procedimento values(3, 4,5);
insert into Consulta_Procedimento values(4, 3,2);
insert into Consulta_Procedimento values(5, 1,1);

create table  Material_Consulta (
mat_con_id int primary key,
id_con_fk int,
id_mat_fk int,
foreign key (id_con_fk) references Consulta (con_id),
foreign key (id_mat_fk) references Material (mat_id)
);

insert into Material_Consulta values(1, 5,3);
insert into Material_Consulta values(2, 1,4);
insert into Material_Consulta values(3, 3,4);
insert into Material_Consulta values(4, 2,5);
insert into Material_Consulta values(5, 4,1);

create table Material_Procedimento(
mat_pro_id int primary key,
id_mat_fk int,
id_pro_fk int,
foreign key (id_mat_fk) references Material (mat_id),
foreign key (id_pro_fk) references Procedimento (pro_id)
);

insert into Material_Procedimento values(1, 4, 2);
insert into Material_Procedimento values(2, 1, 5);
insert into Material_Procedimento values(3, 2, 4);
insert into Material_Procedimento values(4, 5, 3);
insert into Material_Procedimento values(5, 3, 1);



select *from Paciente;
select *from Anamnese;
select *from Odontograma;
select *from Funcionario;
select *from Sala;
select *from Caixa;
select *from Fornecedor;
select *from Despesa;
select *from Agenda;
select *from Pagamento;
select *from Consulta;
select *from Material;
select *from Compra;
select *from Material_Compra;
select *from Recebimento;
select *from Procedimento;
select *from Consulta_Procedimento;
select *from Material_Consulta;
select *from Material_Procedimento;