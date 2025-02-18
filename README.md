# DIO-Ecomerce-BD
Criação de um Banco de Dados e consultas realizadas para responder as perguntas de negócios.

## Ferramentas utilizadas

Foi utilizado o MYSQL Workbench para a criação do model ode Entidade - Relacionamento e também para a criação do Banco de Dados através de SQL.


## Criação do Diagrama Entidade - Relacionamento.

Foi desenvolvido um "Enhanced Entity-Relationship"  (EER) ou Diagrama de Entidade Relacionamento Aprimorado, através do MySQL Workbench.

![E-commerce](https://github.com/user-attachments/assets/693024c3-306b-495b-989f-fd651eca5448)

## Criação do Banco de Dados

A partir do modelo de Entidade - Relacionamento criado foi mais simples a criação do Banco de Dados.

Abaixo a criação do Banco de Dados de acordo com os relacionamentos, os atributos, as constraints e as Primary Key e Foreign Key.


- [01 - Código Criação Banco de Dados](documentos/banco_de_dados/01_Codigo_Criacao_BancoDeDados_Rev_04.txt)

## Dados de Exemplo.

Dados inseridos de exemplo para o modelo de Banco de Dados.

- [02 - Dados Exemplo](documentos/banco_de_dados/02_Dados_Exemplo_rev_00.txt)


## Refinamento do Modelo.

Solicitações para o Refinamento

1 - Cliente PJ e PF – Uma conta pode ser PJ ou PF, mas não pode ter as duas informações;

2 - Pagamento – Pode ter cadastrado mais de uma forma de pagamento;

3 - Entrega – Possui status e código de rastreio;

4 - Algumas das perguntas que podes fazer para embasar as queries SQL:

4.1 - Quantos pedidos foram feitos por cada cliente?

4.2 - Algum vendedor também é fornecedor?

4.3 - Relação de produtos fornecedores e estoques;

4.4 - Relação de nomes dos fornecedores e nomes dos produtos;


## Modelo EER - Refinado

Modelo de EER refinado criado de acordo com as solicitações.

![E-commerce - Modelo Refinado](https://github.com/user-attachments/assets/c614627e-c843-4883-b3b7-c87fde8b13c4)

## Código em SQL do Banco de Dados - Refinado

Abaixo está o código de criação do projeto em SQL


- [03 - Refinamento Código Criação Banco de Dados](documentos/banco_de_dados/03_Refinamento_Codigo_Criacao_BancoDeDados_Rev_02.txt)

## Dados de Exemplo - Refinado

Inserção de Dados no modelo refinado conforme código abaixo.

- [04 - Refinamento Inserção de Dados](documentos/banco_de_dados/04_Refinamento_Insercao_Dados.txt)



