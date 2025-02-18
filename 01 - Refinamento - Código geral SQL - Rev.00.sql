create database ecommerce;
use ecommerce;

-- criar tabela cliente

create table Cliente( 

	id_Cliente int auto_increment primary key,
	Primeiro_Nome varchar(15),
	Nome_Meio char(3),
	Sobrenome varchar(20),
	CPF_CNPJ varchar(14) not null,
	Endereço varchar(245),
	Data_Nasimento Date,
	Tipo_de_Cliente enum('PF','PJ') default 'PF',
	
	constraint unique_CPF_CNPJ_client unique (CPF_CNPJ)
	
 
);
ALTER TABLE Cliente AUTO_INCREMENT = 1;



-- criar tabela produto
create table Produto(

	id_Produto int auto_increment primary key,
	Descrição varchar(45) not null,
	Categoria varchar(20),
	Valor FLOAT not null

);

-- criar tabela pagamentos

create table Pagamento(

	id_Pagamento int auto_increment primary key,
	id_Pagamento_Pedido int,
	id_Pagamento_Cliente int,
	Tipo_Pagamento enum('cartão','dois cartões', 'Pix') default 'Pix',
	Numero_Cartao_1 char(16),
	Numero_Cartao_2 char(16),
	Chave_Pix varchar(32),
	
	
	constraint fk_pagamento_pedido foreign key (id_Pagamento_Pedido) references Pedido(id_Pedido),
	constraint fk_pagamento_cliente foreign key (id_Pagamento_Cliente) references Cliente(id_Cliente)

);



-- criar tabela pedido

create table Pedido(
	
	id_Pedido int auto_increment primary key,
	id_Pedido_Cliente int,
	Status_Pedido enum('em andamento', 'em processamento', 'enviado', 'entregue') default 'em processamento',
	Descrição varchar(255),
	Frete float,
	
	
	
	constraint fk_pedido_cliente foreign key (id_Pedido_Cliente) references Cliente(id_Cliente)


);

-- criar tabela estoque

create table Estoque(

	id_Estoque int auto_increment primary key,
	localizacao varchar(255),
	quantidade int default 0

);


-- criar tabela fornecedor

create table Fornecedor(

	id_Fornecedor int auto_increment primary key,
	Razao_Social varchar(255) not null,
	CNPJ char(14) not null,
	Contato char(11) default 0,
	Nome_Fantasia varchar(255),

constraint unique_fornecedor unique (CNPJ)

);


-- criar tabela vendedor

create table Vendedor (

	id_Vendedor int auto_increment primary key,
	Razao_Social varchar(255) not null,
	Nome_Fantasia varchar(255),
	localizacao varchar(255),
	CNPJ char(14),
	CPF char(11),
	Contato char(11) default 0,

constraint unique_cnpj_vendedor unique (CNPJ),
constraint unique_cpf_vendedor unique (CPF)


);

-- criar tabela produto - vendedor

create table Produto_Vendedor(

	id_Produto_Vendedor_Produto int,
	id_Produto_Vendedor_Vendedor int,
	Quantidade int default 1,

	primary key(id_Produto_Vendedor_Produto, id_Produto_Vendedor_Vendedor),

	constraint fk_ProdutoVendedor_Vendedor foreign key (id_Produto_Vendedor_Vendedor) references Vendedor(id_Vendedor),
	constraint fk_ProdutoVendedor_Produto foreign key (id_Produto_Vendedor_Produto) references Produto(id_Produto)

);

-- criar tabela produto - pedido

create table Produto_Pedido (

	id_Produto_Pedido_Produto int,
	id_Produto_Pedido_Pedido int,
	Quantidade int default 1,
	Status_Produto_Pedido enum('Disponível', 'Sem estoque') default 'Disponível',
	
	primary key(id_Produto_Pedido_Produto, id_Produto_Pedido_Pedido),
	
	constraint fk_ProdutoPedido_Produto foreign key (id_Produto_Pedido_Produto) references Produto(id_Produto),
	constraint fk_ProdutoPedido_Pedido foreign key (id_Produto_Pedido_Pedido) references Pedido(id_Pedido)

);

-- criar tabela estoque - produto

create table Estoque_Produto (

	id_Estoque_Produto_Estoque int,
	id_Estoque_Produto_Produto int,
	
	localizacao varchar(255) not null,

	primary key(id_Estoque_Produto_Estoque, id_Estoque_Produto_Produto),
	
	constraint fk_EstoqueProduto_Estoque foreign key (id_Estoque_Produto_Estoque) references Estoque(id_Estoque),
	constraint fk_EstoqueProduto_Produto foreign key (id_Estoque_Produto_Produto) references Produto(id_Produto)

);

-- criar tabela produto fornecedor

create table Fornecedor_Produto (

	id_Fornecedor_Produto_Fornecedor int,
	id_Fornecedor_Produto_Produto int,
	Quantidade int not null,

	primary key(id_Fornecedor_Produto_Fornecedor , id_Fornecedor_Produto_Produto),

	constraint fk_FornecedorProduto_Fornecedor foreign key (id_Fornecedor_Produto_Fornecedor) references Fornecedor(id_Fornecedor),
	constraint fk_FornecedorProduto_Produto foreign key (id_Fornecedor_Produto_Produto) references Produto(id_Produto)

);

create table Entrega (

	id_Entrega int auto_increment primary key,
	id_Entega_Pedido int,
	id_Entega_Cliente int,
	Codigo_Rastreio char(10),
	Status_Entrega enum('aguardando coleta','em trânsito', 'entregue','tentativa de entrega','recusada'),

	primary key(id_Entega_Pedido , id_Entega_Cliente),

	constraint fk_Entega_Pedido foreign key (id_Entega_Pedido) references Pedido(id_Pedido),
	constraint fk_Entrega_Cliente foreign key (id_Entega_Cliente) references Cliente(id_Cliente)

);