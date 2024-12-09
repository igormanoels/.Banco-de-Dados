-- M�DULO 2

USE dioProdutos

SELECT * FROM Produtos


-- Contando
SELECT COUNT(*) AS 'Total de Produtos'
FROM Produtos -- Conta todos os produtos

SELECT COUNT(*) AS 'Total de M'
FROM Produtos
WHERE Tamanho = 'M'

SELECT Tamanho, COUNT(*) AS 'Total por tamanho'
FROM PRODUTOS
WHERE TAMANHO != '' -- diferente de vazio -> O sinal de diferente poder ser feito <> ou !=
GROUP BY Tamanho
ORDER BY Tamanho DESC


-- Somando
SELECT SUM(Preco) AS 'Total dos pre�os'
FROM Produtos

SELECT SUM(Preco) AS 'Total tamanho G'
FROM Produtos
WHERE Tamanho = 'G'


-- Maior Valor
SELECT Tamanho, MAX(Preco) AS 'Maior Pre�o'
FROM Produtos
GROUP BY Tamanho


-- Menor Valor
SELECT Tamanho, MIN(Preco) AS 'Menor Pre�o'
FROM Produtos
GROUP BY Tamanho


-- M�dia dos pre�os
SELECT AVG(Preco) AS 'M�dia dos pre�os'
FROM Produtos


-- Selecionando mais de uma coluna
SELECT
	Nome, Cor
FROM Produtos

SELECT
	Nome + ' - ' + Cor AS 'Nome e Cor'
FROM Produtos


-- Tornando texto todo em mai�sculo e min�sculo
SELECT UPPER(Nome) AS 'Nome em mai�sculo'
FROM Produtos -- 

SELECT LOWER(Nome) AS 'Nome em mai�sculo'
FROM Produtos

SELECT UPPER(NOME), LOWER(Cor) 	
FROM Produtos -- os dois juntos 


-- Adcionando uma coluna
ALTER TABLE Produtos
ADD dataCadastro Date

UPDATE Produtos SET dataCadastro = GETDATE()


-- Apagando uma coluna
ALTER TABLE Produtos
DROP COLUMN dataCadastro


-- Formatando a data
SELECT
	FORMAT(dataCadastro, 'dd/MM/yyyy') AS 'Data de Cadastro'
FROM Produtos

SELECT
	FORMAT(dataCadastro, 'dd/MM/yyyy HH:mm') AS 'Data e Hora de Cadastro'
FROM Produtos














