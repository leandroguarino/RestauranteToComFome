#zera as tabelas
update produto set id_estoque=null;
delete from preferencias_clientes;
delete from item_pedido;
delete from pedido;
delete from cliente;
delete from estoque;
delete from produto;

#insere as bebidas
insert into produto(version,id_estoque,nome,preco,tipo,quantidade_pessoas,calorias,liquido,unidade)
values (0,null,'Coca-cola',5.0,'BEBIDA',null,null,600.0,'ml');
insert into produto(version,id_estoque,nome,preco,tipo,quantidade_pessoas,calorias,liquido,unidade)
values (0,null,'Guaraná Antarctica',4.5,'BEBIDA',null,null,600.0,'ml');
insert into produto(version,id_estoque,nome,preco,tipo,quantidade_pessoas,calorias,liquido,unidade)
values (0,null,'Tubaína',3.0,'BEBIDA',null,null,600.0,'ml');
insert into produto(version,id_estoque,nome,preco,tipo,quantidade_pessoas,calorias,liquido,unidade)
values (0,null,'Pepsi',4.8,'BEBIDA',null,null,600.0,'ml');
insert into produto(version,id_estoque,nome,preco,tipo,quantidade_pessoas,calorias,liquido,unidade)
values (0,null,'Picolino',2.5,'BEBIDA',null,null,600.0,'ml');
insert into produto(version,id_estoque,nome,preco,tipo,quantidade_pessoas,calorias,liquido,unidade)
values (0,null,'Coca-cola',3.0,'BEBIDA',null,null,250.0,'ml');
insert into produto(version,id_estoque,nome,preco,tipo,quantidade_pessoas,calorias,liquido,unidade)
values (0,null,'Guaraná Antarctica',2.5,'BEBIDA',null,null,250.0,'ml');
insert into produto(version,id_estoque,nome,preco,tipo,quantidade_pessoas,calorias,liquido,unidade)
values (0,null,'Tubaína',1.5,'BEBIDA',null,null,250.0,'ml');
insert into produto(version,id_estoque,nome,preco,tipo,quantidade_pessoas,calorias,liquido,unidade)
values (0,null,'Pepsi',2.8,'BEBIDA',null,null,250.0,'ml');
insert into produto(version,id_estoque,nome,preco,tipo,quantidade_pessoas,calorias,liquido,unidade)
values (0,null,'Picolino',1.5,'BEBIDA',null,null,250.0,'ml');

#insere as sobremesas
insert into produto(version,id_estoque,nome,preco,tipo,quantidade_pessoas,calorias,liquido,unidade)
values (0,null,'Torta de limão',5.0,'SOBREMESA',null,400.0,null,null);
insert into produto(version,id_estoque,nome,preco,tipo,quantidade_pessoas,calorias,liquido,unidade)
values (0,null,'Mousse de maracujá',4.0,'SOBREMESA',null,350.0,null,null);
insert into produto(version,id_estoque,nome,preco,tipo,quantidade_pessoas,calorias,liquido,unidade)
values (0,null,'Bem-casado',2.5,'SOBREMESA',null,200.0,null,null);
insert into produto(version,id_estoque,nome,preco,tipo,quantidade_pessoas,calorias,liquido,unidade)
values (0,null,'Brigadeiro gourmet',3.0,'SOBREMESA',null,250.0,null,null);
insert into produto(version,id_estoque,nome,preco,tipo,quantidade_pessoas,calorias,liquido,unidade)
values (0,null,'Petit gateau',6.0,'SOBREMESA',null,400.0,null,null);
insert into produto(version,id_estoque,nome,preco,tipo,quantidade_pessoas,calorias,liquido,unidade)
values (0,null,'Bolo de chocolate',12.0,'SOBREMESA',null,900.0,null,null);

#insere os pratos
insert into produto(version,id_estoque,nome,preco,tipo,quantidade_pessoas,calorias,liquido,unidade)
values (0,null,'Bife à parmegiana',20.0,'PRATO',2,null,null,null);
insert into produto(version,id_estoque,nome,preco,tipo,quantidade_pessoas,calorias,liquido,unidade)
values (0,null,'Bife à milanesa',15.0,'PRATO',2,null,null,null);
insert into produto(version,id_estoque,nome,preco,tipo,quantidade_pessoas,calorias,liquido,unidade)
values (0,null,'Picanha na tábua',40.0,'PRATO',2,null,null,null);
insert into produto(version,id_estoque,nome,preco,tipo,quantidade_pessoas,calorias,liquido,unidade)
values (0,null,'Bife de soja',30.0,'PRATO',2,null,null,null);
insert into produto(version,id_estoque,nome,preco,tipo,quantidade_pessoas,calorias,liquido,unidade)
values (0,null,'Porção de batata frita',10.0,'PRATO',2,null,null,null);
insert into produto(version,id_estoque,nome,preco,tipo,quantidade_pessoas,calorias,liquido,unidade)
values (0,null,'Salmão gratinado ao molho de limão',50.0,'PRATO',2,null,null,null);
insert into produto(version,id_estoque,nome,preco,tipo,quantidade_pessoas,calorias,liquido,unidade)
values (0,null,'Tilápia fura-mão',25.0,'PRATO',2,null,null,null);
insert into produto(version,id_estoque,nome,preco,tipo,quantidade_pessoas,calorias,liquido,unidade)
values (0,null,'Cesta do Zé Colméia',40.0,'PRATO',4,null,null,null);

#cria um estoque para as 10 bebidas cadastradas
set @idProduto =(select id from produto where tipo='BEBIDA' and id not in (select id_produto from estoque) order by rand() limit 1);
insert into estoque(version,id_produto,quantidade,quantidade_minima)
values (0,@idProduto,round(rand()*10,0),round(rand()*5,0));
set @idProduto =(select id from produto where tipo='BEBIDA' and id not in (select id_produto from estoque) order by rand() limit 1);
insert into estoque(version,id_produto,quantidade,quantidade_minima)
values (0,@idProduto,round(rand()*10,0),round(rand()*5,0));
set @idProduto =(select id from produto where tipo='BEBIDA' and id not in (select id_produto from estoque) order by rand() limit 1);
insert into estoque(version,id_produto,quantidade,quantidade_minima)
values (0,@idProduto,round(rand()*10,0),round(rand()*5,0));
set @idProduto =(select id from produto where tipo='BEBIDA' and id not in (select id_produto from estoque) order by rand() limit 1);
insert into estoque(version,id_produto,quantidade,quantidade_minima)
values (0,@idProduto,round(rand()*10,0),round(rand()*5,0));
set @idProduto =(select id from produto where tipo='BEBIDA' and id not in (select id_produto from estoque) order by rand() limit 1);
insert into estoque(version,id_produto,quantidade,quantidade_minima)
values (0,@idProduto,round(rand()*10,0),round(rand()*5,0));
set @idProduto =(select id from produto where tipo='BEBIDA' and id not in (select id_produto from estoque) order by rand() limit 1);
insert into estoque(version,id_produto,quantidade,quantidade_minima)
values (0,@idProduto,round(rand()*10,0),round(rand()*5,0));
set @idProduto =(select id from produto where tipo='BEBIDA' and id not in (select id_produto from estoque) order by rand() limit 1);
insert into estoque(version,id_produto,quantidade,quantidade_minima)
values (0,@idProduto,round(rand()*10,0),round(rand()*5,0));
set @idProduto =(select id from produto where tipo='BEBIDA' and id not in (select id_produto from estoque) order by rand() limit 1);
insert into estoque(version,id_produto,quantidade,quantidade_minima)
values (0,@idProduto,round(rand()*10,0),round(rand()*5,0));
set @idProduto =(select id from produto where tipo='BEBIDA' and id not in (select id_produto from estoque) order by rand() limit 1);
insert into estoque(version,id_produto,quantidade,quantidade_minima)
values (0,@idProduto,round(rand()*10,0),round(rand()*5,0));
set @idProduto =(select id from produto where tipo='BEBIDA' and id not in (select id_produto from estoque) order by rand() limit 1);
insert into estoque(version,id_produto,quantidade,quantidade_minima)
values (0,@idProduto,round(rand()*10,0),round(rand()*5,0));

#atualiza o id do estoque nas bebidas cadastradas
update produto p set id_estoque=(select id from estoque where id_produto=p.id);

#insere os clientes;
set @nome = 'Jao';
insert into cliente(version,email,nome,senha) values (0,concat(replace(lower(@nome),' ',''),'@gmail.com'),@nome,round(rand()*9999+10000,0));
set @nome = 'Gumercindo';
insert into cliente(version,email,nome,senha) values (0,concat(replace(lower(@nome),' ',''),'@gmail.com'),@nome,round(rand()*9999+10000,0));
set @nome = 'Anacleto';
insert into cliente(version,email,nome,senha) values (0,concat(replace(lower(@nome),' ',''),'@gmail.com'),@nome,round(rand()*9999+10000,0));
set @nome = 'Robert';
insert into cliente(version,email,nome,senha) values (0,concat(replace(lower(@nome),' ',''),'@gmail.com'),@nome,round(rand()*9999+10000,0));
set @nome = 'Silvestre';
insert into cliente(version,email,nome,senha) values (0,concat(replace(lower(@nome),' ',''),'@gmail.com'),@nome,round(rand()*9999+10000,0));
set @nome = 'Roberval';
insert into cliente(version,email,nome,senha) values (0,concat(replace(lower(@nome),' ',''),'@gmail.com'),@nome,round(rand()*9999+10000,0));
set @nome = 'Juca';
insert into cliente(version,email,nome,senha) values (0,concat(replace(lower(@nome),' ',''),'@gmail.com'),@nome,round(rand()*9999+10000,0));
set @nome = 'Tonho da Lua';
insert into cliente(version,email,nome,senha) values (0,concat(replace(lower(@nome),' ',''),'@gmail.com'),@nome,round(rand()*9999+10000,0));
set @nome = 'Graucinei Davidson';
insert into cliente(version,email,nome,senha) values (0,concat(replace(lower(@nome),' ',''),'@gmail.com'),@nome,round(rand()*9999+10000,0));
set @nome = 'Maria';
insert into cliente(version,email,nome,senha) values (0,concat(replace(lower(@nome),' ',''),'@gmail.com'),@nome,round(rand()*9999+10000,0));
set @nome = 'Joaquina';
insert into cliente(version,email,nome,senha) values (0,concat(replace(lower(@nome),' ',''),'@gmail.com'),@nome,round(rand()*9999+10000,0));
set @nome = 'Michaelly';
insert into cliente(version,email,nome,senha) values (0,concat(replace(lower(@nome),' ',''),'@gmail.com'),@nome,round(rand()*9999+10000,0));
set @nome = 'Zumara';
insert into cliente(version,email,nome,senha) values (0,concat(replace(lower(@nome),' ',''),'@gmail.com'),@nome,round(rand()*9999+10000,0));
set @nome = 'Marcielena';
insert into cliente(version,email,nome,senha) values (0,concat(replace(lower(@nome),' ',''),'@gmail.com'),@nome,round(rand()*9999+10000,0));

#insere as preferências dos clientes aleatoriamente
insert into preferencias_clientes(id_cliente,id_produto) values ( (select id from cliente order by rand() limit 1), (select id from produto order by rand() limit 1));
insert into preferencias_clientes(id_cliente,id_produto) values ( (select id from cliente order by rand() limit 1), (select id from produto order by rand() limit 1));
insert into preferencias_clientes(id_cliente,id_produto) values ( (select id from cliente order by rand() limit 1), (select id from produto order by rand() limit 1));
insert into preferencias_clientes(id_cliente,id_produto) values ( (select id from cliente order by rand() limit 1), (select id from produto order by rand() limit 1));
insert into preferencias_clientes(id_cliente,id_produto) values ( (select id from cliente order by rand() limit 1), (select id from produto order by rand() limit 1));
insert into preferencias_clientes(id_cliente,id_produto) values ( (select id from cliente order by rand() limit 1), (select id from produto order by rand() limit 1));
insert into preferencias_clientes(id_cliente,id_produto) values ( (select id from cliente order by rand() limit 1), (select id from produto order by rand() limit 1));
insert into preferencias_clientes(id_cliente,id_produto) values ( (select id from cliente order by rand() limit 1), (select id from produto order by rand() limit 1));
insert into preferencias_clientes(id_cliente,id_produto) values ( (select id from cliente order by rand() limit 1), (select id from produto order by rand() limit 1));
insert into preferencias_clientes(id_cliente,id_produto) values ( (select id from cliente order by rand() limit 1), (select id from produto order by rand() limit 1));
insert into preferencias_clientes(id_cliente,id_produto) values ( (select id from cliente order by rand() limit 1), (select id from produto order by rand() limit 1));
insert into preferencias_clientes(id_cliente,id_produto) values ( (select id from cliente order by rand() limit 1), (select id from produto order by rand() limit 1));
insert into preferencias_clientes(id_cliente,id_produto) values ( (select id from cliente order by rand() limit 1), (select id from produto order by rand() limit 1));
insert into preferencias_clientes(id_cliente,id_produto) values ( (select id from cliente order by rand() limit 1), (select id from produto order by rand() limit 1));
insert into preferencias_clientes(id_cliente,id_produto) values ( (select id from cliente order by rand() limit 1), (select id from produto order by rand() limit 1));
insert into preferencias_clientes(id_cliente,id_produto) values ( (select id from cliente order by rand() limit 1), (select id from produto order by rand() limit 1));
insert into preferencias_clientes(id_cliente,id_produto) values ( (select id from cliente order by rand() limit 1), (select id from produto order by rand() limit 1));
insert into preferencias_clientes(id_cliente,id_produto) values ( (select id from cliente order by rand() limit 1), (select id from produto order by rand() limit 1));
insert into preferencias_clientes(id_cliente,id_produto) values ( (select id from cliente order by rand() limit 1), (select id from produto order by rand() limit 1));
insert into preferencias_clientes(id_cliente,id_produto) values ( (select id from cliente order by rand() limit 1), (select id from produto order by rand() limit 1));
insert into preferencias_clientes(id_cliente,id_produto) values ( (select id from cliente order by rand() limit 1), (select id from produto order by rand() limit 1));
insert into preferencias_clientes(id_cliente,id_produto) values ( (select id from cliente order by rand() limit 1), (select id from produto order by rand() limit 1));
insert into preferencias_clientes(id_cliente,id_produto) values ( (select id from cliente order by rand() limit 1), (select id from produto order by rand() limit 1));
insert into preferencias_clientes(id_cliente,id_produto) values ( (select id from cliente order by rand() limit 1), (select id from produto order by rand() limit 1));

#insere os pedidos
insert into pedido(version,id_cliente,data_hora,valor_total) values (0,(select id from cliente order by rand() limit 1),DATE_SUB(now(),INTERVAL round(rand()*30,0) DAY),0);
insert into pedido(version,id_cliente,data_hora,valor_total) values (0,(select id from cliente order by rand() limit 1),DATE_SUB(now(),INTERVAL round(rand()*30,0) DAY),0);
insert into pedido(version,id_cliente,data_hora,valor_total) values (0,(select id from cliente order by rand() limit 1),DATE_SUB(now(),INTERVAL round(rand()*30,0) DAY),0);
insert into pedido(version,id_cliente,data_hora,valor_total) values (0,(select id from cliente order by rand() limit 1),DATE_SUB(now(),INTERVAL round(rand()*30,0) DAY),0);
insert into pedido(version,id_cliente,data_hora,valor_total) values (0,(select id from cliente order by rand() limit 1),DATE_SUB(now(),INTERVAL round(rand()*30,0) DAY),0);
insert into pedido(version,id_cliente,data_hora,valor_total) values (0,(select id from cliente order by rand() limit 1),DATE_SUB(now(),INTERVAL round(rand()*30,0) DAY),0);
insert into pedido(version,id_cliente,data_hora,valor_total) values (0,(select id from cliente order by rand() limit 1),DATE_SUB(now(),INTERVAL round(rand()*30,0) DAY),0);
insert into pedido(version,id_cliente,data_hora,valor_total) values (0,(select id from cliente order by rand() limit 1),DATE_SUB(now(),INTERVAL round(rand()*30,0) DAY),0);
insert into pedido(version,id_cliente,data_hora,valor_total) values (0,(select id from cliente order by rand() limit 1),DATE_SUB(now(),INTERVAL round(rand()*30,0) DAY),0);
insert into pedido(version,id_cliente,data_hora,valor_total) values (0,(select id from cliente order by rand() limit 1),DATE_SUB(now(),INTERVAL round(rand()*30,0) DAY),0);
insert into pedido(version,id_cliente,data_hora,valor_total) values (0,(select id from cliente order by rand() limit 1),DATE_SUB(now(),INTERVAL round(rand()*30,0) DAY),0);
insert into pedido(version,id_cliente,data_hora,valor_total) values (0,(select id from cliente order by rand() limit 1),DATE_SUB(now(),INTERVAL round(rand()*30,0) DAY),0);
insert into pedido(version,id_cliente,data_hora,valor_total) values (0,(select id from cliente order by rand() limit 1),DATE_SUB(now(),INTERVAL round(rand()*30,0) DAY),0);
insert into pedido(version,id_cliente,data_hora,valor_total) values (0,(select id from cliente order by rand() limit 1),DATE_SUB(now(),INTERVAL round(rand()*30,0) DAY),0);
insert into pedido(version,id_cliente,data_hora,valor_total) values (0,(select id from cliente order by rand() limit 1),DATE_SUB(now(),INTERVAL round(rand()*30,0) DAY),0);
insert into pedido(version,id_cliente,data_hora,valor_total) values (0,(select id from cliente order by rand() limit 1),DATE_SUB(now(),INTERVAL round(rand()*30,0) DAY),0);
insert into pedido(version,id_cliente,data_hora,valor_total) values (0,(select id from cliente order by rand() limit 1),DATE_SUB(now(),INTERVAL round(rand()*30,0) DAY),0);
insert into pedido(version,id_cliente,data_hora,valor_total) values (0,(select id from cliente order by rand() limit 1),DATE_SUB(now(),INTERVAL round(rand()*30,0) DAY),0);
insert into pedido(version,id_cliente,data_hora,valor_total) values (0,(select id from cliente order by rand() limit 1),DATE_SUB(now(),INTERVAL round(rand()*30,0) DAY),0);
insert into pedido(version,id_cliente,data_hora,valor_total) values (0,(select id from cliente order by rand() limit 1),DATE_SUB(now(),INTERVAL round(rand()*30,0) DAY),0);
insert into pedido(version,id_cliente,data_hora,valor_total) values (0,(select id from cliente order by rand() limit 1),DATE_SUB(now(),INTERVAL round(rand()*30,0) DAY),0);
insert into pedido(version,id_cliente,data_hora,valor_total) values (0,(select id from cliente order by rand() limit 1),DATE_SUB(now(),INTERVAL round(rand()*30,0) DAY),0);
insert into pedido(version,id_cliente,data_hora,valor_total) values (0,(select id from cliente order by rand() limit 1),DATE_SUB(now(),INTERVAL round(rand()*30,0) DAY),0);
insert into pedido(version,id_cliente,data_hora,valor_total) values (0,(select id from cliente order by rand() limit 1),DATE_SUB(now(),INTERVAL round(rand()*30,0) DAY),0);
insert into pedido(version,id_cliente,data_hora,valor_total) values (0,(select id from cliente order by rand() limit 1),DATE_SUB(now(),INTERVAL round(rand()*30,0) DAY),0);
insert into pedido(version,id_cliente,data_hora,valor_total) values (0,(select id from cliente order by rand() limit 1),DATE_SUB(now(),INTERVAL round(rand()*30,0) DAY),0);
insert into pedido(version,id_cliente,data_hora,valor_total) values (0,(select id from cliente order by rand() limit 1),DATE_SUB(now(),INTERVAL round(rand()*30,0) DAY),0);
insert into pedido(version,id_cliente,data_hora,valor_total) values (0,(select id from cliente order by rand() limit 1),DATE_SUB(now(),INTERVAL round(rand()*30,0) DAY),0);
insert into pedido(version,id_cliente,data_hora,valor_total) values (0,(select id from cliente order by rand() limit 1),DATE_SUB(now(),INTERVAL round(rand()*30,0) DAY),0);
insert into pedido(version,id_cliente,data_hora,valor_total) values (0,(select id from cliente order by rand() limit 1),DATE_SUB(now(),INTERVAL round(rand()*30,0) DAY),0);

#insere os produtos nos pedidos
set @idProduto = (select id from produto order by rand() limit 1);
set @valorVenda = (select preco from produto where id = @idProduto);
set @idPedido = (select id from pedido order by rand() limit 1);
insert into item_pedido(version,observacao,id_pedido,id_produto,quantidade,valor_venda) values (0,null,@idPedido,@idProduto,round(rand()*2+1,0),@valorVenda);

set @idProduto = (select id from produto order by rand() limit 1);
set @valorVenda = (select preco from produto where id = @idProduto);
set @idPedido = (select id from pedido order by rand() limit 1);
insert into item_pedido(version,observacao,id_pedido,id_produto,quantidade,valor_venda) values (0,null,@idPedido,@idProduto,round(rand()*2+1,0),@valorVenda);

set @idProduto = (select id from produto order by rand() limit 1);
set @valorVenda = (select preco from produto where id = @idProduto);
set @idPedido = (select id from pedido order by rand() limit 1);
insert into item_pedido(version,observacao,id_pedido,id_produto,quantidade,valor_venda) values (0,null,@idPedido,@idProduto,round(rand()*2+1,0),@valorVenda);

set @idProduto = (select id from produto order by rand() limit 1);
set @valorVenda = (select preco from produto where id = @idProduto);
set @idPedido = (select id from pedido order by rand() limit 1);
insert into item_pedido(version,observacao,id_pedido,id_produto,quantidade,valor_venda) values (0,null,@idPedido,@idProduto,round(rand()*2+1,0),@valorVenda);

set @idProduto = (select id from produto order by rand() limit 1);
set @valorVenda = (select preco from produto where id = @idProduto);
set @idPedido = (select id from pedido order by rand() limit 1);
insert into item_pedido(version,observacao,id_pedido,id_produto,quantidade,valor_venda) values (0,null,@idPedido,@idProduto,round(rand()*2+1,0),@valorVenda);

set @idProduto = (select id from produto order by rand() limit 1);
set @valorVenda = (select preco from produto where id = @idProduto);
set @idPedido = (select id from pedido order by rand() limit 1);
insert into item_pedido(version,observacao,id_pedido,id_produto,quantidade,valor_venda) values (0,null,@idPedido,@idProduto,round(rand()*2+1,0),@valorVenda);

set @idProduto = (select id from produto order by rand() limit 1);
set @valorVenda = (select preco from produto where id = @idProduto);
set @idPedido = (select id from pedido order by rand() limit 1);
insert into item_pedido(version,observacao,id_pedido,id_produto,quantidade,valor_venda) values (0,null,@idPedido,@idProduto,round(rand()*2+1,0),@valorVenda);

set @idProduto = (select id from produto order by rand() limit 1);
set @valorVenda = (select preco from produto where id = @idProduto);
set @idPedido = (select id from pedido order by rand() limit 1);
insert into item_pedido(version,observacao,id_pedido,id_produto,quantidade,valor_venda) values (0,null,@idPedido,@idProduto,round(rand()*2+1,0),@valorVenda);

set @idProduto = (select id from produto order by rand() limit 1);
set @valorVenda = (select preco from produto where id = @idProduto);
set @idPedido = (select id from pedido order by rand() limit 1);
insert into item_pedido(version,observacao,id_pedido,id_produto,quantidade,valor_venda) values (0,null,@idPedido,@idProduto,round(rand()*2+1,0),@valorVenda);

set @idProduto = (select id from produto order by rand() limit 1);
set @valorVenda = (select preco from produto where id = @idProduto);
set @idPedido = (select id from pedido order by rand() limit 1);
insert into item_pedido(version,observacao,id_pedido,id_produto,quantidade,valor_venda) values (0,null,@idPedido,@idProduto,round(rand()*2+1,0),@valorVenda);

set @idProduto = (select id from produto order by rand() limit 1);
set @valorVenda = (select preco from produto where id = @idProduto);
set @idPedido = (select id from pedido order by rand() limit 1);
insert into item_pedido(version,observacao,id_pedido,id_produto,quantidade,valor_venda) values (0,null,@idPedido,@idProduto,round(rand()*2+1,0),@valorVenda);

set @idProduto = (select id from produto order by rand() limit 1);
set @valorVenda = (select preco from produto where id = @idProduto);
set @idPedido = (select id from pedido order by rand() limit 1);
insert into item_pedido(version,observacao,id_pedido,id_produto,quantidade,valor_venda) values (0,null,@idPedido,@idProduto,round(rand()*2+1,0),@valorVenda);

set @idProduto = (select id from produto order by rand() limit 1);
set @valorVenda = (select preco from produto where id = @idProduto);
set @idPedido = (select id from pedido order by rand() limit 1);
insert into item_pedido(version,observacao,id_pedido,id_produto,quantidade,valor_venda) values (0,null,@idPedido,@idProduto,round(rand()*2+1,0),@valorVenda);

set @idProduto = (select id from produto order by rand() limit 1);
set @valorVenda = (select preco from produto where id = @idProduto);
set @idPedido = (select id from pedido order by rand() limit 1);
insert into item_pedido(version,observacao,id_pedido,id_produto,quantidade,valor_venda) values (0,null,@idPedido,@idProduto,round(rand()*2+1,0),@valorVenda);

set @idProduto = (select id from produto order by rand() limit 1);
set @valorVenda = (select preco from produto where id = @idProduto);
set @idPedido = (select id from pedido order by rand() limit 1);
insert into item_pedido(version,observacao,id_pedido,id_produto,quantidade,valor_venda) values (0,null,@idPedido,@idProduto,round(rand()*2+1,0),@valorVenda);

set @idProduto = (select id from produto order by rand() limit 1);
set @valorVenda = (select preco from produto where id = @idProduto);
set @idPedido = (select id from pedido order by rand() limit 1);
insert into item_pedido(version,observacao,id_pedido,id_produto,quantidade,valor_venda) values (0,null,@idPedido,@idProduto,round(rand()*2+1,0),@valorVenda);

set @idProduto = (select id from produto order by rand() limit 1);
set @valorVenda = (select preco from produto where id = @idProduto);
set @idPedido = (select id from pedido order by rand() limit 1);
insert into item_pedido(version,observacao,id_pedido,id_produto,quantidade,valor_venda) values (0,null,@idPedido,@idProduto,round(rand()*2+1,0),@valorVenda);

set @idProduto = (select id from produto order by rand() limit 1);
set @valorVenda = (select preco from produto where id = @idProduto);
set @idPedido = (select id from pedido order by rand() limit 1);
insert into item_pedido(version,observacao,id_pedido,id_produto,quantidade,valor_venda) values (0,null,@idPedido,@idProduto,round(rand()*2+1,0),@valorVenda);

set @idProduto = (select id from produto order by rand() limit 1);
set @valorVenda = (select preco from produto where id = @idProduto);
set @idPedido = (select id from pedido order by rand() limit 1);
insert into item_pedido(version,observacao,id_pedido,id_produto,quantidade,valor_venda) values (0,null,@idPedido,@idProduto,round(rand()*2+1,0),@valorVenda);

set @idProduto = (select id from produto order by rand() limit 1);
set @valorVenda = (select preco from produto where id = @idProduto);
set @idPedido = (select id from pedido order by rand() limit 1);
insert into item_pedido(version,observacao,id_pedido,id_produto,quantidade,valor_venda) values (0,null,@idPedido,@idProduto,round(rand()*2+1,0),@valorVenda);

set @idProduto = (select id from produto order by rand() limit 1);
set @valorVenda = (select preco from produto where id = @idProduto);
set @idPedido = (select id from pedido order by rand() limit 1);
insert into item_pedido(version,observacao,id_pedido,id_produto,quantidade,valor_venda) values (0,null,@idPedido,@idProduto,round(rand()*2+1,0),@valorVenda);

set @idProduto = (select id from produto order by rand() limit 1);
set @valorVenda = (select preco from produto where id = @idProduto);
set @idPedido = (select id from pedido order by rand() limit 1);
insert into item_pedido(version,observacao,id_pedido,id_produto,quantidade,valor_venda) values (0,null,@idPedido,@idProduto,round(rand()*2+1,0),@valorVenda);

set @idProduto = (select id from produto order by rand() limit 1);
set @valorVenda = (select preco from produto where id = @idProduto);
set @idPedido = (select id from pedido order by rand() limit 1);
insert into item_pedido(version,observacao,id_pedido,id_produto,quantidade,valor_venda) values (0,null,@idPedido,@idProduto,round(rand()*2+1,0),@valorVenda);

set @idProduto = (select id from produto order by rand() limit 1);
set @valorVenda = (select preco from produto where id = @idProduto);
set @idPedido = (select id from pedido order by rand() limit 1);
insert into item_pedido(version,observacao,id_pedido,id_produto,quantidade,valor_venda) values (0,null,@idPedido,@idProduto,round(rand()*2+1,0),@valorVenda);

#atualiza o valor total dos pedidos que possuem itens pedidos
update pedido p set valor_total=(select sum(valor_venda*quantidade) from item_pedido where id_pedido=p.id) where id in (select id_pedido from item_pedido);