-- Criação do Banco de Dados para cenário de E-Commerce

create database ecommerce;
use ecommerce;

-- criar tabela cliente

create table Clients( 

	idClient int auto_increment primary key,
	Fname varchar(10),
	Minit char(3),
	Lname varchar(20),
	CPF char(11) not null,
	Address varchar(245),
	constraint unique_cpf_client unique (CPF)
 
);
ALTER TABLE clients AUTO_INCREMENT = 1;



-- criar tabela produto
create table Product(
idProduct int auto_increment primary key,
Pname varchar(10) not null,
Category varchar(20),
Price_Product FLOAT not null

);

-- criar tabela pagamentos


-- criar tabela pedido

create table Orders(
idOrder int auto_increment primary key,
idOrderClient int,
orderStatus enum('cancelado', 'confirmado', 'em processamento') default 'em processamento',
orderDescription varchar(255),
sendValue float default 10, 
paymentCash bool default false,
constraint fk_orders_client foreign key (idOrderClient) references clients(idClient)


);

-- criar tabela estoque

create table productStorage(
idProdStorage int auto_increment primary key,
storageLocation varchar(255),
quantity int default 0
);


-- criar tabela fornecedor

create table supplier(
idSupplier int auto_increment primary key,
Socialname varchar(255) not null,
CNPJ char(15) not null,
contact char(11) default 0,

constraint unique_supplier unique (CNPJ)

);


-- criar tabela vendedor

create table seller (
idSeller int auto_increment primary key,
Socialname varchar(255) not null,
AbstName varchar(255),
location varchar(255),
CNPJ char(15),
CPF char(11),
contact char(11) default 0,

constraint unique_cnpj_seller unique (CNPJ),
constraint unique_cpf_seller unique (CPF)


);

-- criar tabela produto - vendedor

create table productSeller(
idPseller int,
idPproduct int,
prodQuantity int default 1,

primary key(idPseller, idPproduct),
constraint fk_product_seller foreign key (idPseller) references seller(idSeller),
constraint fk_product_product foreign key (idPproduct) references product(idProduct)

);

-- criar tabela produto - pedido

create table productOrder (
idPOproduct int,
idPOorder int,
poQuantity int default 1,
poStatus enum('Disponível', 'Sem estoque') default 'Disponível',
primary key(idPOproduct, idPOorder),
constraint fk_productorder_seller foreign key (idPOproduct) references product(idProduct),
constraint fk_productorder_product foreign key (idPOorder) references orders(idOrder)

);

-- criar tabela estoque - produto

create table storageLocation (
idLproduct int,
idLstorage int,
location varchar(255) not null,

primary key(idLproduct, idLstorage),
constraint fk_storage_location_product foreign key (idLproduct) references product(idProduct),
constraint fk_storage_location_storage foreign key (idLstorage) references productStorage(idProdStorage)

);

-- criar tabela produto fornecedor
create table productSupplier (
idPsSupplier int,
idPsProduct int,
quantity int not null,

primary key(idPsSupplier , idPsProduct),

constraint fk_product_supplier_supplier foreign key (idPsSupplier) references supplier(idSupplier),
constraint fk_storage_supplier_product foreign key (idPsProduct) references product(idProduct)

);

