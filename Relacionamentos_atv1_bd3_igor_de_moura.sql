alter table tbl_iten_pedido add constraint fk_produto
Foreign key (cod_prod)
references tbl_produto(cod_prod);

alter table tbl_iten_pedido add constraint fk_pedido
foreign key (cod_ped)
references tbl_pedido(cod_ped);
