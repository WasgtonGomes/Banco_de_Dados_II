create database Atividade_BD_Clinica_Ordontologica_wasgton;
use Atividade_BD_Clinica_Ordontologica_wasgton;
/*
Discente: Wasgton Gomes Pereira
Turma: 3º Periodo ADS 2022/02
*/
Create table Fornecedor(
 id_fornecedor int primary key auto_increment,
 razao_social_for varchar(20),
 nome_fantasia_for varchar(90),
 cnpj_for int,
 endereco_for text,
 contato_for int,
 contrato_for varchar(200),
 taxa_entrega_for float,
 horario_servico_for time
);

Create table Funcionario(
 id_funcionario int primary key auto_increment,
 rg_fun int,
 nome_fun varchar(90),
 cpf_fun int,
 endereco_fun text,
 celular_fun int, 
 data_nascimento_fun date,
 funcao_fun varchar(80),
 email_fun varchar(50),
 especialidade_fun varchar(90),
 carga_horaria_fun time,
 tipo_sanguineo_fun varchar(10),
 data_admissao_fun date
);

Create table Sala(
 id_sala int primary key auto_increment,
 nome_sala varchar(90),
 equipamento_sala varchar(80),
 capacidade int,
 andar_sala varchar(20),
 setor_sala varchar(20),
 status_sala varchar(60)
);
Create table Material(
 id_material int primary key auto_increment,
 nome_sala varchar(90),
 estoque_mat int,
 descricao_mat text,
 valor_mat float,
 tipo_mat varchar(70),
 validade_mat date,
 peso_mat float,
 dimensao_mat varchar(60)
);


Create table Despesa(
 id_despesa int primary key auto_increment,
 nome_des varchar(90),
 data_des date,
 parcela_des int,
 vencimento_des date,
 valor_final_des float,
 multa_des float, 
 descricao_des text

);

/*/
*/
Create table Caixa(
 id_caixa int primary key auto_increment,
 total_entrada_cai float,
 data_cai date,
 saldo_inicial_cai float,
 total_saida_cai float,
 saldo_final_cai float,
 numero_cai int,
 status_cai varchar(20),
 tipo_cai varchar(20)
 
);

Create table Compra(
 id_compra int primary key auto_increment,
 data_comp date not null,
 valor_comp float,
 valor_final_comp float,
 desconto_comp float, 
 descricao_comp text,
 id_caixa_fk int not null,
 FOREIGN KEY (id_caixa_fk) references Caixa (id_caixa)

);


Create table Paciente(
 id_paciente int primary key auto_increment,
 nome_pac varchar(90),
 cpf_pac int,
 endereco_pac text,
 celular_pac int, 
 data_nascimento_pac date,
 email_pac varchar(50), 
 rg_pac int,
 pessoa_para_contato int,
 tipo varchar(50)
);

Create table Anamnese(
 id_anamnense int primary key auto_increment,
 data_anam date,
 diabete_anam varchar(250),
 cardiopatia_anam varchar(250),
 obesidade_anam varchar(250),
 tipo_anam varchar(20 ),
 queixa_inical_anam varchar(20),
 diagnostico_anam text,
 historico_familiar_anam text,
 id_paciente_fk int not null,
 FOREIGN KEY (id_paciente_fk) references Paciente (id_paciente)
);

Create table Agenda(
 id_agenda int primary key auto_increment,
 data_age date,
 hora_age time,
 tipo_age varchar(20 ),
 quantidade_acompanhante_age int,
 nivel_urgencia_age int,
 preferencial_age bool,
 id_paciente_fk int not null,
 id_funcionario_fk int not null,
 id_sala_fk int not null,
 FOREIGN KEY (id_paciente_fk) references Paciente (id_paciente),
 FOREIGN KEY (id_funcionario_fk) references Funcionario (id_funcionario),
 FOREIGN KEY (id_sala_fk) references Sala (id_sala)
);

Create table Odontograma(
 id_odontograma int primary key auto_increment,
 data_odo date,
 molar_odo varchar(250),
 incisivo_central_odo varchar(250),
 canino_odo varchar(250),
 molar_3_odo varchar(250 ),
 canino_odo02 varchar(250),
 premolar_odo varchar(250),
 insisivo_lateral_odo varchar(250 ),
 insisivo_lateral02_odo varchar(250 ),
 id_paciente_fk int not null,
 FOREIGN KEY (id_paciente_fk) references Paciente (id_paciente)
);



Create table Procedimento(
 id_procedimento int primary key auto_increment,
 nome_pro varchar(90),
 valor_pro float,
 descricao text,
 tempo datetime,
 tipo varchar(120), 
 data_inicial_pro date,
 data_final_pro date,
 acompanhate_pro int
);

Create table Consulta(
 id_consulta int primary key auto_increment,
 valor_consu float,
 preferencia_consu bool,
 nivel_urgencia_consu int,
 horario_alternativo_consu datetime,
 id_paciente_fk int not null,
 id_funcionario_fk int not null,
 id_odontograma_fk int not null,
 FOREIGN KEY (id_paciente_fk) references Paciente (id_paciente),
 FOREIGN KEY (id_funcionario_fk) references Funcionario (id_funcionario),
 FOREIGN KEY (id_odontograma_fk) references Odontograma (id_odontograma)
);

Create table Recebimento(
 id_recebimento int primary key auto_increment,
 status_rec varchar(90),
 data_rec date,
 parcela_rec int,
 forma_rec varchar(50),
 valor_rec float,
 hora_pro time,
 multa_pro float,
 protocolo_pro int,
 id_consulta_fk int not null,
 id_caixa_fk int not null,
 FOREIGN KEY (id_consulta_fk) references Consulta (id_consulta),
 FOREIGN KEY (id_caixa_fk) references Caixa (id_caixa)
);

Create table Pagamento(
 id_pagamento int primary key auto_increment,
 status_pag varchar(90),
 data_pag date,
 parcela_pag int,
 forma_pag varchar(50),
 valor_pag float,
 multa_pag float,
 desconto_pag float,
 imposto_pag float,
 id_despesa_fk int not null,
 id_caixa_fk int not null,
 FOREIGN KEY (id_despesa_fk) references Despesa (id_despesa),
 FOREIGN KEY (id_caixa_fk) references Caixa (id_caixa)
);


Create table Consulta_Material(
 id_consulta_material int primary key auto_increment,
 id_consulta_fk int not null,
 id_material_fk int not null,
 quantidade_consulta_material int,
 orgamento_consulta_material bool,
 urgencia_consulta_material bool,
 FOREIGN KEY (id_consulta_fk) references Consulta (id_consulta),
 FOREIGN KEY (id_material_fk) references Material (id_material)
);

Create table Consulta_Procedimento(
 id_consulta_procedimento int primary key auto_increment,
 id_consulta_fk int not null,
 id_procedimento_fk int not null,
 FOREIGN KEY (id_consulta_fk) references Consulta (id_consulta),
 FOREIGN KEY (id_procedimento_fk) references Procedimento (id_procedimento)
);

Create table Material_Procedimento(
 id_material_procedimento int primary key auto_increment,
 id_material_fk int not null,
 id_procedimento_fk int not null,
 quantidade_material_procedimento int,
 FOREIGN KEY (id_procedimento_fk) references Procedimento (id_procedimento),
 FOREIGN KEY (id_material_fk) references Material (id_material)
);

Create table Compra_Material(
 id_compra_material int primary key auto_increment,
 id_compra_fk int not null,
 id_material_fk int not null,
 quantidade_compra_material int,
 FOREIGN KEY (id_compra_fk) references Compra (id_compra),
 FOREIGN KEY (id_material_fk) references Material (id_material)
);
