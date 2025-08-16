#
#Turma: 3º Período ADS 2022/02
#Discente: Wasgton Gomes Pereira


/*
1. Criar o script SQL de criação desde banco de dados seguindo exatamente essa modelagem. Mas lembre-se 
de utilizar as práticas de programação ensinadas durante a disciplina como uso de sufixo no nome do atributos
 e o a sigla FK no nome das chaves estrangeiras, entre outros. Atenção: LEMBRE-SE de criar a 3ª tabela no
 relacionamentos N para N.

2. Insira 03 registros nas tabelas Produto, Serviço e Cliente. 

3. Insira 03 registros nas tabelas Fornecedor e Funcionário.

4. Insira 02 registros nas tabelas Despesa e Caixa.

5. Insira os registros necessários para vender 03 produtos diferentes para 01 cliente.

6. Insira os registros necessários para comprar 03 produtos diferentes de 01 fornecedor.

7. Insira os registros necessários para pagar 02 despesas.

8. Insira os registros necessários para receber a venda realizada.

9. Insira os registros necessários para vincular cada funcionário a 01 serviço existente.

Atenção: LEMBRE-SE que os registros devem ser inventados por você mas de acordo com a realidade
 de uma loja de informática. Sobre as pessoas utilize informações de pessoas próximas a você.  
 Cuidado com registros iguais (copy e cola) pois resultará na nota ZERO no trabalho.*/

create database bd_Techtop_by_Wasgton_avaliacao;
use bd_Techtop_by_Wasgton_avaliacao;

create table Cliente(  /* top*/
id_cli int primary key auto_increment not null,
nome_cli varchar(200) not null,
data_nasc_cli date not null,
endereco_cli text not null,
rg_cli varchar(50) not null,
renda_familiar_cli double not null,
sexo_cli varchar(20) not null,
telefones_cli varchar(40) not  null,
cpf_cli varchar(28) not null
);
insert into Cliente values  /* top*/
(null, 'Camila de Oliveiraa', '1978-10-17', 'Rua João durval, bairro centro, n 5587 ','1626428 ssp',  2457.32, 'Feminino','69 9 8432 1945', '751.012.462-05'),
(null, 'Wilaine Gomes Pereira', '2004-10-20', 'Rua Julio Guerra, Centro 109','2867185 sesd',  2000, 'Feminino','69 9 9232 4173', '065.175.112-88'),
(null, 'Rosilene Gomes Da Silva', '1983-05-29', 'Rua Amazonas, setor 4 1976','5812743',  1540, 'Feminino','69 9 9246 9341', '054.043.942-85');

create table Fornecedor( /* top*/
id_for int primary key auto_increment,
razao_for varchar(250) not null,
nome_for varchar(320) not null,
endereco_for text not null,
telefone_for varchar(40) not null,
cnpj_for varchar(28) not null
);
insert into Fornecedor values  /* top*/
(null, 'SAMSUNG ELETRONICA DA AMAZONIA LTDA', 'Sansung', 'R THOMAS NILSEN JUNIOR 150 PARTE A PARQUE MPERADOR CAMPINAS Cep: 13097105 SP Tel.: Fax:','+55 (19) 3326-5742', '00.280.273/0002-18'),
(null, ' Apple Computer Brasil Ltda', 'Apple', 'Rua Leopoldo Couto de Magalhães Jr., 700, 7º andar, São Paulo, 04542-000, Brasil','0800 761 0880', ' 00.623.904/0001-73'),
(null, 'LENOVO TECNOLOGIA (BRASIL) LIMITADA', 'Lenovo', 'ESTRADA MUNICIPAL JOSE COSTA DE MESQUITA, 200 GALPAO6 A 10 - CHACARA ALVORADA','(11) 8208-3099', '07.275.920/0001-61');

create table Despesa(  /* top*/
id_desp int primary key auto_increment not null,
descricao_desp text not null ,
data_vencimento_desp date not null,
forma_pag_desp varchar(100) not null,
valor_desp float not null
);
insert into Despesa values  /* top*/
(null, 'Energia', '2022-09-20', 'a vista', 1580),
(null, 'Segurança', '2020-01-15', 'a vista', 5820);

create table Compra(  /* top*/
id_comp int primary key auto_increment not null,
data_comp date,
forma_pag_comp varchar(100),
valor_comp float,
quant_comp float,
id_forn_fk int,
foreign key(id_forn_fk) references Fornecedor(id_for)
);
insert into Compra values  /* top*/
(null, '2020-09-14', 'a vista', 2540,  5, 3),
(null, '2022-10-05', 'a vista', 6972,  11, 1),
(null, '2022-01-28', 'a vista', 28900,  19, 2);

create table Funcionario(  /* top*/
id_fun int primary key auto_increment not null,
nome_fun varchar(150) not null,
telefone_fun varchar(40) not null,
salario_fun float not null,
rg_fun varchar (40) not null ,
cpf_fun varchar(20) not null,
funcao_fun varchar(200) not null,
endereco_fun text not null
);
insert into Funcionario values  /* top*/
(null, 'Luana Carvalho', '69 9 9361-8448', 4500, '2616842', '041.361.002-05', 'Vendedora','Imagrante , setor 3 n 2377'),
(null, 'Reginaldo Soares dos Santos', '96 9 8475-1213', 3200, '9476825', '065.175.192-62', 'técnico','Rio Grande do Sul, Setor 5, n 3640'),
(null, 'Ana Beatriz Budisk', '69 9 9931-7502',8450, 2569887, '050.071.612-92', 'Supervisor','AV Curitiba, Nova Brasilia, n 1750 ');

create table Venda(  /* top*/
id_vend int primary key auto_increment not null,
data_vend date not null,
hora_vend time not null,
forma_receb_vend varchar(100) not null,
valor_vend float not null,
id_fun_fk int not null,
foreign key(id_fun_fk) references Funcionario(id_fun),
id_cli_fk int,
foreign key(id_cli_fk) references Cliente(id_cli)
);

insert into Venda values  /* top*/
(null, '2014-02-16', '13:00', 'A vista', 250.00, 1, 1),
(null, '2013-02-18', '15:00', 'A vista', 650.00, 2, 2),
(null, '2017-02-11', '11:00', 'A vista', 950.00, 3, 3);


create table Produto( /* top*/
id_prod int primary key auto_increment,
tipo_prod varchar(450) not null,
tamanho_prod varchar(120) not null,
marca_prod varchar(500) not null,
valor_prod float not null,
quant_prod float not null,
descricao_prod text not null
);
insert into Produto values /* top*/
(null, 'Fonte 250W', '12x15x12', 'Splin', 175.00, 104, 'Fonte npara computadores  de mesa intermediario'),
(null, 'Mouse', '8X5X14', 'R8', 22.00, 78, 'Mouse com entrada UsB 2.0'),
(null, 'ssd M2 24511', '1T', 'Trevolor', 1200.00, 564, 'ssd para noteboks');

create table Servico(  /* top*/
id_serv int primary key auto_increment not null,
descricao_serv varchar(300) not null,
valor_serv double not null,
tempo_serv time not null
);

insert into Servico values  /* top*/
(null, 'Manutenção', 120, '00:40:00'),
(null, 'Formatação Sem Backup', 100.00, '00:25:00'),
(null, 'Formatação com beckup', 150.00, '01:00:00');


create table Caixa( /* top*/
id_cai int primary key auto_increment,
total_recebimentos_cai float,
saldo_final_cai float,
total_pagamento_cai float,
saldo_inicial_cai float,
data_Caixa_cai  date not null,
id_fun_fk int,
foreign key(id_fun_fk) references Funcionario(id_fun)
);
insert into Caixa values /* top*/
(null, 8750, 12000, 2500, 2000,'2020-04-02', 2),
(null, 2348, 3000, 1230, 2000,'2022-02-22', 3);

create table Recebimento ( /* top*/
id_rec int primary key auto_increment not null,
valor_rec double not null,
forma_rec varchar(120) not null,
parcela_rec int not null,
data_vencimento_rec date,
id_cai_fk int not null,
id_vend_fk int not null,
foreign key (id_cai_fk) references caixa (id_cai),
foreign key (id_vend_fk) references Venda(id_vend)
);

insert into Recebimento values/* top*/
(null, 5488.00, 'PIX', 1, '2016-11-19', 1, 1),
(null, 78495.00, 'Cheque', 1, '2022-01-13', 2, 3),
(null, 28245.00, 'Cheque', 1, '2020-05-20', 1, 2);

create table Pagamento( /* top*/
id_pag int primary key auto_increment not null,
parcela_pag int not null,
forma_pag varchar(90) not null,
valor_pag double not null,
data_pag date not null,
id_comp_fk int not null,
id_cai_fk int not null,
id_desp_fk int not null,
foreign key (id_comp_fk) references compra (id_comp),
foreign key (id_cai_fk) references caixa (id_cai),
foreign key (id_desp_fk) references despesa (id_desp)
);

insert into Pagamento values  /* top*/
(null, 9, 'Dinheiro', 8754.78, '2022-11-18', 3, 2, 2),
(null, 12, 'PIX', 3784.42, '2021-03-25', 2, 2, 1),
(null, 6, 'Cheque', 4500.00, '2020-10-07', 1, 1, 1);

create table Compra_Produto(      /* top*/
id_comp_prod int primary key auto_increment not null,
id_comp_fk int not null,
id_prod_fk int not null,
quant_cprod int not null,
foreign key (id_comp_fk) references Compra (id_comp),
foreign key (id_prod_fk) references Produto (id_prod)
);
insert into Compra_produto values /* top*/
(null, 2, 3, 245),
(null, 2, 2, 63),
(null, 1, 3, 87),
(null, 3, 2, 23),
(null, 3, 1, 278);

create table Servico_Funcionario (/* top*/
id_serv_fun int not null primary key auto_increment,
id_fun_fk int not null,
id_serv_fk int not null,
foreign key (id_fun_fk) references Funcionario (id_fun),
foreign key (id_serv_fk) references Servico (id_serv)
);
insert into Servico_Funcionario values /* top*/
(null, 3, 2),
(null, 1, 3),
(null, 2, 1);

create table Venda_Servico( /* top*/
id_vend_serv int primary key auto_increment not null,
quant_vend_serv int not null,
id_vend_fk int not null,
id_serv_fk int not null,
foreign key (id_vend_fk) references venda (id_vend),
foreign key (id_serv_fk) references servico (id_serv)
);
insert into Venda_Servico values /* top*/
(null, 123, 3, 2),
(null, 978, 1, 3),
(null, 321, 2, 1);

create table Produto_Venda( /* top*/
id_prod_vend int primary key auto_increment not null,
quant_vend_prod int,
id_vend_fk int not null,
id_prod_fk int not null,
foreign key (id_vend_fk) references Venda (id_vend),
foreign key (id_prod_fk) references Produto (id_prod)
);
insert into Produto_Venda values /* top*/
(null, 450, 1, 3),
(null, 201, 2, 3),
(null, 354, 1, 1),
(null, 212, 3, 2),
(null, 38, 2, 1);

#Pronto, agora com o seu banco de dados devidamente criado e povoado, crie comandos DML para fazer as seguintes ações: 

#1.  Exclua o atributo hora da tabela venda.
alter table venda drop hora_vend;

#2. Altere o tipo de dado do atributo data de vencimento da tabela despesa para Varchar.


alter table despesa change data_vencimento_desp data_vencimento_desp varchar(100);

# 3. Adicione o atributo status na tabela produto após o atributo descrição.
alter table produto add status_prod varchar(15) after descricao_prod;

# 4. Atualize o atributo status na tabela produto para 'Disponível' caso o estoque seja superior a 0.
update produto set status_prod ='Disponível' where (quant_prod > 0);

#. 5. Atualize o atributo status na tabela produto para 'Sem Estoque' caso o estoque seja igual a 0.
update produto set status_prod ='Sem estoque' where (quant_prod = 0);


#6. Atualize o salário aumentando em 20% nos funcionários com a função de 'Vendedor' ou 'Vendedora' e que contenham o número '1' ou '2' no CPF.

update funcionario set salario_fun = salario_fun * 1.2 where (((funcao_fun like '%vendedor%') or ( funcao_fun like '%vendedora%')) and ((cpf_fun like '%1%') or (cpf_fun like '%2%')));

#7. Atualize a renda familiar diminuindo em 10% nos clientes do sexo 'Feminino' e com data de nascimento entre os anos 1990 e 2000 e que tenham o nome iniciado com a letra 'A' ou terminando com a letra 'E'.

update cliente set renda_familiar_cli = renda_familiar_cli * 0.9 where ((sexo_cli = 'feminino') and (data_nasc_cli between '1990-01-01' and '2000-12-31') and ((nome_cli like 'A%') or (nome_cli like '%E')));

#8. Delete os produtos com quantidade de estoque entre 0 e 1 e que tenha valor superior a R$ 1.000,00.

delete from produto where (quant_prod between 0 and 1) and (valor_prod > 1000);

#9. Selecione os dados dos fornecedores que contenham a palavra 'fiat' no nome atributo nome e ordene pela razão social.

select * from fornecedor where (nome_for like '%fiat%') order by razao_for;
 
#10. Selecione o valor médio dos produtos;
select avg(valor_prod) as "Valor médio dos produtos" from produto;

#11. Selecione o salário máximo dos funcionários;
select max(salario_fun) as "Valor do Maior Salario" from funcionario;

#12. Selecione a soma e a média dos salários dos funcionários;
select sum(salario_fun) as "Soma dos salários", avg(salario_fun) as "Média dos Salários" from funcionario;

#13. Selecione o valor mínimo, máximo e médio dos serviços;
select min(valor_serv) as "Menor valor dos serviços", max(valor_serv)as "Maior valor dos serviços", avg(valor_serv) as "Media dos Serviços" from servico;

#14. Selecione os dados da venda, substituindo as FKs por nomes compreensíveis para o usuário.
select
venda.id_vend as Codigo,
venda.data_vend as Data,
venda.forma_receb_vend as "Forma de Recebimento",
venda.valor_vend as Valor_venda,
funcionario.nome_fun as funcionario,
cliente.nome_cli as cliente
from
venda inner join funcionario inner join  cliente
on
(venda.id_fun_fk = funcionario.id_fun) and
(venda.id_cli_fk = cliente.id_cli);


#15. Selecione os dados da compra, substituindo as FKs por nomes compreensíveis para o usuário.
select 
compra.id_comp as Codigo,
compra.data_comp as Data,
compra.forma_pag_comp as "Forma  de Pagamento",
compra.valor_comp as "Valor da Compra",
compra.quant_comp as "Quantidade de Compras",
fornecedor.nome_for as "Nome do Fornecedor"
from
compra,
fornecedor
where
(fornecedor.id_for = compra.id_forn_fk);

#16. Selecione o nome do cliente e os nomes dos serviços que o mesmo já comprou.
select 
cliente.nome_cli as Cliente,
Servico.descricao_serv as Serviços
from 
venda_servico inner join
servico inner join
cliente inner join
venda 
on
(venda.id_cli_fk = cliente.id_cli) and
(venda_servico.id_serv_fk = servico.id_serv);

# 17. Selecione o nome do cliente e os nomes dos produtos que o mesmo já comprou.
select 
cliente.nome_cli as Cliente,
produto.descricao_prod as Produtos
from 
Produto_Venda,
produto,
cliente,
venda
Where
(venda.id_cli_fk = cliente.id_cli) and
(Produto_Venda.id_prod_fk = produto.id_prod)and
(Produto_Venda.id_vend_fk = venda.id_vend);


#18. Selecione o nome do fornecedor e o nome dos produtos que o mesmo já vendeu.
select 
fornecedor.nome_for as Fornecedor,
produto.descricao_prod as Produtos
from 
compra_produto,
produto,
fornecedor,
compra
Where
(compra.id_forn_fk = fornecedor.id_for) and
(compra_produto.id_prod_fk = produto.id_prod)and
(compra_produto.id_comp_fk = compra.id_comp);
select * from compra_produto;


#19. Selecione o nome do funcionário e o nome dos serviços que o mesmo já fez
select 
funcionario.nome_fun as Funcionario,
servico.descricao_serv as Serviços
from 
venda_servico,
servico,
Funcionario,
venda
Where
(venda.id_fun_fk = funcionario.id_fun) and
(venda_servico.id_vend_fk= venda.id_vend)and
(venda_servico.id_serv_fk= servico.id_serv);
select *from venda_servico;

#20. Selecione o nome do cliente e o valor total das vendas que o mesmo está relacionado.
select 
cliente.nome_cli as Cliente,
venda.valor_vend as "Valor Total  das Compras"
from 
produto_venda inner join
cliente inner join
produto inner join
venda
on
((venda.id_cli_fk = cliente.id_cli) and
(Produto_Venda.id_vend_fk = venda.id_vend) and
(Produto_Venda.id_prod_fk = produto.id_prod)) ;