drop database loja_etec;

create database loja_etec;

use loja_etec;

#Tabelas _________________________________________________
create table tbl_produto(
	cod_prod int (10) auto_increment primary key,
    nome varchar (500) not null,
    descricao text not null,
    preco decimal (10,2) not null
);

create table tbl_iten_pedido(
	cod_prod int (10),
    cod_ped int (10)
);

create table tbl_pedido(
    cod_ped int (10)  auto_increment primary key,
    data_ped varchar (10) not null
);

#Inserts _________________________________________________
insert into tbl_produto (nome, descricao, preco)
values ("produto1", "produto relacionado a queda de cabelo", 12.30),
	   ("produto2", "tonico para cabelo", 16.99),
	   ("produto3", "vitamina para cabelo", 8.00),
	   ("produto4", "tonico para barba", 10.50),
	   ("produto5", "creme para pentear", 23.30),
	   ("produto6", "escova de cabelo", 5.00),
	   ("produto7", "vitamina para barba", 12.99),
	   ("produto8", "shampoo anti quedas", 18.25),
	   ("produto9", "shampoo 2 em 1", 7.99),
	   ("produto10", "mascara para hidratação", 13.50);
       
insert into tbl_pedido (data_ped)
values ("30/02/2024"),
	   ("31/02/2024"),
	   ("04/03/2024");


#instrução para selecionar todos os campos da tbl_produto
select cod_prod , nome, descricao, preco from tbl_produto;
/*neste caso poderia ser utilizado * ao inves de escrever cada campo, porem
isso torna o motor de busca do banco menos eficiente*/


#instrução para selecionar os campos nome e descrição da tbl_produto
select nome, descricao from tbl_produto;


#instrução para selecionar os campos nome e descrição da tbl_produto de apenas 1 codigo
select nome, descricao from tbl_produto where cod_prod < 10;


#instrução para selecionar os campos nome e descrição da tbl_produto e renomea-los
select nome as Produto, descricao as Detalhes from tbl_produto;

select * from tbl_iten_pedido;


