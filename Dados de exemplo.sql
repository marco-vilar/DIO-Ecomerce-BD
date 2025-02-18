-- 1 - Inserção de dados para clientes

INSERT INTO clients (Fname, Minit, Lname, CPF, Address) VALUES
('João', 'A', 'Silva', '12345678900', 'Rua das Flores, 123, Centro, São Paulo'),
('Maria', 'B', 'Oliveira', '98765432100', 'Avenida Paulista, 456, Bela Vista, São Paulo'),
('Carlos', 'X', 'Souza', '13524635700', 'Rua Rio de Janeiro, 789, Jardim das Acácias, Rio de Janeiro'),
('Ana', 'Q', 'Costa', '32165498700', 'Rua do Sol, 321, Morumbi, São Paulo'),
('Lucas', 'D', 'Pereira', '75315948600', 'Rua das Palmeiras, 654, Copacabana, Rio de Janeiro'),
('Paula', 'T', 'Lima', '25836974100', 'Rua Santa Catarina, 987, Vila Progredir, São Paulo'),
('Roberto', 'C', 'Martins', '96385274100', 'Rua das Laranjeiras, 321, Leblon, Rio de Janeiro'),
('Fernanda', 'V', 'Gomes', '74196325800', 'Avenida Brasil, 654, Tijuca, Rio de Janeiro'),
('Felipe', 'E', 'Almeida', '85274136900', 'Rua das Margaridas, 123, Vila Nova, Belo Horizonte'),
('Juliana', 'L', 'Ribeiro', '46813527900', 'Avenida do Estado, 876, Ipiranga, São Paulo');

-- 2 Inserção de dados na tabela product

INSERT INTO product (Pname, Category, Price_Product) VALUES
('Cadeira', 'Móveis', 150.00),
('Lâmpada', 'Iluminação', 35.50),
('Smartphone', 'Eletrônicos', 1200.00),
('Tênis', 'Calçados', 180.00),
('Mesa', 'Móveis', 450.00),
('Fone', 'Eletrônicos', 220.00),
('Camiseta', 'Roupas', 60.00),
('Geladeira', 'Eletrodomésticos', 2200.00),
('Microfone', 'Instrumentos', 350.00),
('Luva', 'Esportes', 45.00);

-- 3. Inserir dados na tabela Supplier (10 registros)
INSERT INTO Supplier (Socialname, CNPJ, contact) 
VALUES 
('Fornecedor TecnoBrasil', '12345678000195', '35987654321'),  -- DDD 35 (Minas Gerais)
('Indústria Litoral', '23456789000196', '12987654322'),  -- DDD 12 (São Paulo)
('Distribuidora Maré', '34567890000197', '21987654323'),  -- DDD 21 (Rio de Janeiro)
('Loja Céu Azul', '45678901000198', '19987654324'),  -- DDD 19 (Campinas, SP)
('Fornecedora Amazonas', '56789012000199', '44987654325'),  -- DDD 44 (Paraná)
('Vendas e Cia', '67890123000200', '35987654326'),  -- DDD 35 (Minas Gerais)
('EletroShop', '78901234000201', '11987654327'),  -- DDD 11 (São Paulo)
('Fábrica Sul', '89012345000202', '47987654328'),  -- DDD 47 (Santa Catarina)
('Cozinha Fácil', '90123456000203', '62987654329'),  -- DDD 62 (Goiás)
('Super Fornecedor X', '01234567000204', '81987654330');  -- DDD 81 (Pernambuco)

-- 4. Inserir dados em tabelas dependentes (Orders)
INSERT INTO Orders (idOrderClient, orderStatus, orderDescription, sendValue, paymentCash) 
VALUES 
(1, 'confirmado', 'Escadas para subir, difícil acesso.', 15.00, 1),
(2, 'em processamento', 'Zona rural, precisa de atenção.', NULL, 0),
(3, 'cancelado', 'Pedido cancelado, cliente não localizado.', 10.00, 1),
(4, 'confirmado', 'Endereço de difícil acesso, área residencial.', 20.00, 0),
(5, 'em processamento', 'Entrega em local de difícil acesso, próximo ao campo.', NULL, 1),
(6, 'cancelado', 'Pedido cancelado, erro no pagamento.', 5.00, 0),
(7, 'confirmado', 'Entrega com escadas, prédio antigo.', 12.00, 1),
(8, 'em processamento', 'Entrega em zona rural, estrada de terra.', NULL, 1),
(9, 'cancelado', 'Cliente pediu cancelamento, endereço incorreto.', 18.00, 0),
(10, 'confirmado', 'Entrega em área de difícil acesso, ao lado do hospital.', 25.00, 1);

-- 5. Inserir dados na tabela productOrder (10 registros)
INSERT INTO productOrder (idPOproduct, idPOorder, poQuantity, poStatus) 
VALUES 
(1, 1, 2, 'Disponível'),
(2, 2, 1, 'Sem estoque'),
(3, 3, 3, 'Disponível'),
(4, 4, 1, 'Disponível'),
(5, 5, 2, 'Disponível'),
(6, 6, 1, 'Sem estoque'),
(7, 7, 2, 'Disponível'),
(8, 8, 1, 'Sem estoque'),
(9, 9, 3, 'Disponível'),
(10, 10, 2, 'Disponível');

-- 6. Inserir dados na tabela productSupplier (10 registros)
INSERT INTO productSupplier (idPsSupplier, idPsProduct, quantity) 
VALUES 
(1, 1, 500),
(2, 2, 300),
(3, 3, 200),
(4, 4, 100),
(5, 5, 250),
(6, 6, 150),
(7, 7, 400),
(8, 8, 350),
(9, 9, 500),
(10, 10, 300);

-- 7. Inserir dados na tabela Seller (10 registros)
INSERT INTO Seller (Socialname, AbstName, location, CNPJ, CPF, contact) 
VALUES 
('Comércio Digital Ltda.', 'DigitalStore', 'Avenida Paulista, 1500, Bela Vista, São Paulo, SP', '12345678000195', NULL, '35412345678'),
('TecnoTrade Comércio de Eletrônicos Ltda.', 'TecnoTrade', 'Rua dos Três Irmãos, 120, Zona Norte, Rio de Janeiro, RJ', '23456789000196', NULL, '21234567890'),
('Almeida & Silva Comércio Ltda.', 'Almeida & Silva', 'Avenida São João, 1500, Centro, Belo Horizonte, MG', '34567890000197', NULL, '31987654321'),
('Flores & Cia Comércio Ltda.', 'Flores & Cia', 'Rua das Flores, 400, Vila Nova, São Paulo, SP', '45678901000198', NULL, '11323344556'),
('Martins Comércio e Tecnologia Ltda.', 'Martins Tech', 'Avenida Brasil, 500, Copacabana, Rio de Janeiro, RJ', '56789012000199', NULL, '21456789012'),
('Costa & Souza Comércio Ltda.', 'Costa & Souza', 'Rua do Sol, 350, Centro, Vitória, ES', '67890123000200', NULL, '27323232323'),
('Ribeiro & Filho Comércio Ltda.', 'Ribeiro & Filho', 'Rua das Acácias, 700, Porto Alegre, Rio Grande do Sul', '78901234000201', NULL, '5124567890'),
('Lima Comércio de Produtos Ltda.', 'Lima Comercial', 'Avenida Rio Branco, 1500, Centro, Rio de Janeiro, RJ', '89012345000202', NULL, '21343243243'),
('Fernandes & Costa Ltda.', 'Fernandes & Costa', 'Rua D. Pedro, 50, Centro, São Paulo, SP', '90123456000203', NULL, '11987654321'),
('Almeida & Rocha Comércio Ltda.', 'Almeida Rocha', 'Rua do Comércio, 850, Centro, Belo Horizonte, MG', '01234567000204', NULL, '31323232323');

-- 8. Inserir dados na tabela productSeller (10 registros)
INSERT INTO productSeller (idPseller, idPproduct, prodQuantity) 
VALUES 
(1, 1, 100),
(2, 2, 50),
(3, 3, 30),
(4, 4, 70),
(5, 5, 90),
(6, 6, 110),
(7, 7, 200),
(8, 8, 150),
(9, 9, 250),
(10, 10, 300);

-- 9. Inserir dados na tabela productStorage (10 registros)
INSERT INTO productStorage (storageLocation, quantity) 
VALUES 
('Rua das Acácias, 200, Centro, São Paulo, SP', 500),
('Avenida Rio Branco, 1500, Centro, Rio de Janeiro, RJ', 300),
('Rua São João, 850, Centro, Belo Horizonte, MG', 200),
('Rua do Sol, 350, Centro, Vitória, ES', 100),
('Avenida Paulista, 1000, Bela Vista, São Paulo, SP', 250),
('Rua das Palmeiras, 1500, Zona Norte, Rio de Janeiro, RJ', 150),
('Rua das Acácias, 700, Porto Alegre, RS', 400),
('Avenida Boa Viagem, 1000, Boa Viagem, Recife, PE', 350),
('Rua do Mar, 300, Centro, Florianópolis, SC', 500),
('Rua das Pedras, 1200, Centro, Salvador, BA', 300);

-- 10. Inserir dados na tabela storageLocation (10 registros)
INSERT INTO storageLocation (idLproduct, idLstorage, location) 
VALUES 
(1, 1, 'Armazém 1, SP'),
(2, 2, 'Armazém 2, RJ'),
(3, 3, 'Armazém 3, MG'),
(4, 4, 'Armazém 4, ES'),
(5, 5, 'Armazém 5, SP'),
(6, 6, 'Armazém 6, RJ'),
(7, 7, 'Armazém 7, RS'),
(8, 8, 'Armazém 8, PE'),
(9, 9, 'Armazém 9, SC'),
(10, 10, 'Armazém 10, BA');