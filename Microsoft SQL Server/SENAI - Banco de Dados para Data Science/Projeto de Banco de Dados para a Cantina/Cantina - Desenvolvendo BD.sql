----------------------------------------------------------------------------
-- Criando banco de dados
CREATE DATABASE cantina; -- Cria o bando de dados da Cantina
USE cantina;			 -- Faz com que ele entre em uso

----------------------------------------------------------------------------
-- A��es de controle e gest�o para o Banco de Dados
DROP TABLE dbo.cliente; -- Comando para excluir uma tabela
DROP DATABASE cantina; -- Comando para excluir o banco de dados por completo
ALTER TABLE categoria DROP COLUMN categoria; -- exclui uma coluna da tabela
ALTER TABLE refeicoes ADD categoria VARCHAR(10) NOT NULL; -- adciona depois de criada uma coluna na tabela
ALTER TABLE consumo ADD data_consumo DATETIME NOT NULL;


----------------------------------------------------------------------------
-- Criando as tabelas do Banco de Dados
CREATE TABLE cliente (
    idCliente INT PRIMARY KEY IDENTITY,
    nomeCliente VARCHAR(150) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    genero VARCHAR(20) NOT NULL,
    dataNascimento DATE NOT NULL,
    naturalidade VARCHAR(50),
    nacionalidade VARCHAR(50)
); -- Crian��o da tabela Cliente


----------------------------------------------------------------------------
CREATE TABLE contato (
    idContato INT PRIMARY KEY IDENTITY,
    idCliente INT FOREIGN KEY REFERENCES cliente,
    telefone VARCHAR (20),
    email VARCHAR (70),
    sala VARCHAR (2),
); -- Criando tabela de Contato


----------------------------------------------------------------------------
CREATE TABLE atendente (
    idAtendente INT PRIMARY KEY IDENTITY,
    nomeAtendente VARCHAR (150) NOT NULL,
    numRegistro VARCHAR (3) NOT NULL,
); -- Criando tabela de Atendente


----------------------------------------------------------------------------
CREATE TABLE refeicao (
    idRefeicao INT PRIMARY KEY IDENTITY,
	idCliente INT FOREIGN KEY REFERENCES cliente,
	idAtendente INT FOREIGN KEY REFERENCES atendente,
	categoria VARCHAR (10) NOT NULL, -- Caf�, Almo�o, Jantar
    descricao VARCHAR(150) NOT NULL -- Descri��o da refei��o
); -- Criando tabela de Categoria


----------------------------------------------------------------------------
CREATE TABLE pagamento (
    idPagamento INT IDENTITY PRIMARY KEY,
	idRefeicao INT FOREIGN KEY REFERENCES refeicao,
    idCliente INT FOREIGN KEY REFERENCES cliente,
	preco DECIMAL(5, 2) NOT NULL, -- Pre�o da refei��o
    peso FLOAT, -- Peso da refei��o (opcional)
	dataConsumo DATETIME NOT NULL,
); -- Criando tabela de Pagamento


----------------------------------------------------------------------------
-- Comando para sele��o de Tabelas do Banco de Dados
SELECT * FROM refeicao; -- Comando para selecionar uma tabela inteira


----------------------------------------------------------------------------
-- Comando para sele��o de dados especificos desejados
SELECT cliente.idCliente, cliente.cpf, contato.telefone, refeicao.categoria, refeicao.descricao, pagamento.preco, pagamento.dataConsumo
FROM cliente 
INNER JOIN contato 
ON contato.idCliente = cliente.idCliente
INNER JOIN refeicao
ON refeicao.idCliente = cliente.idCliente
INNER JOIN pagamento
ON pagamento.idCliente = cliente.idCliente;


