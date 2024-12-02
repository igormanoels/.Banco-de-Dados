USE dioClientes

-- Selecionando dados
--F5  --> EXECUTA O SCRIPT
--CTRL + K + C --> COMENTA O C�DIGO

SELECT * FROM Clientes

SELECT Nome, Sobrenome FROM Clientes
ORDER BY Nome ASC -- Ordena em Crescente

SELECT Nome, Sobrenome FROM Clientes
ORDER BY Nome DESC -- Ordena em Decrecente

SELECT Nome, Sobrenome, Email FROM Clientes
ORDER BY Nome, Sobrenome -- Ordena ambos em ASC, podendo Omitir porque ele j� defaut

SELECT Nome, Sobrenome, Email FROM Clientes
ORDER BY Nome, Sobrenome DESC -- Ordena em ASC e em DESC

SELECT Nome, Sobrenome FROM Clientes
WHERE Nome = 'Adam' -- Cl�usula de verifica��o
ORDER BY Sobrenome

SELECT * FROM Clientes
WHERE AceitaComunicados = 1 -- Cl�usula de verifica��o
ORDER BY Nome DESC

SELECT Nome, Sobrenome FROM Clientes
WHERE Nome = 'Michael' AND Sobrenome = 'Patten' -- Busca duas cl�usulas

SELECT Nome, Sobrenome FROM Clientes
WHERE Nome = 'Tom' OR Sobrenome = 'Smith' -- Busca por uma das duas cl�usulas

SELECT Nome, Sobrenome, Email FROM Clientes
WHERE Nome = 'Andre'
ORDER BY Nome, Sobrenome DESC -- Ordena em ASC e em DESC

SELECT * FROM Clientes
WHERE Nome LIKE 'G%' -- Busca os clientes que come�am com a letra indicada
ORDER BY Sobrenome ASC

SELECT * FROM Clientes
WHERE Sobrenome LIKE '%V%' -- Busca qualquer sobrenome que contenha a letra indicada


-- Inserindo dados
INSERT INTO Clientes(Nome, Sobrenome, Email, AceitaComunicados, DataCadastro) 
VALUES ('Liandro', 'Ferreira', 'liandro@gmail.com', 0, GETDATE())

INSERT INTO Clientes VALUES ('Pedro', 'Lauro', 'pedro@gmail.com', 0, GETDATE()) 
-- tamb�m � possivel incluir dados seguindo a ordem das colunas

SELECT * FROM Clientes
ORDER BY Nome DESC


-- Atualizando dados
UPDATE Clientes 
SET Email = 'novo@email.com'
WHERE Nome = 'Ryan'

UPDATE Clientes 
SET Email = 'novo@email.com', AceitaComunicados = 1
WHERE id = 36

BEGIN TRAN -- Garante a possibilidade de desfazer uma a��o no banco de dados
UPDATE Clientes 
SET AceitaComunicados = 1

ROLLBACK -- Desfaz a a��o no banco de dados


-- Deletando dados
DELETE Clientes 
WHERE Id = 1





