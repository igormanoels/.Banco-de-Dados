CREATE DATABASE fatecExercicioConsulta
GO
USE fatecExercicioConsulta
GO
CREATE TABLE paciente (
	cpf VARCHAR(20) NOT NULL,
	nome VARCHAR(100) NOT NULL,
	rua VARCHAR(100) NOT NULL,
	numero INT NOT NULL,
	bairro VARCHAR(100) NOT NULL,
	telefone INT NULL,
	dataNascimento DATE
	PRIMARY KEY (cpf)
)
GO
CREATE TABLE medico (
	codigo INT NOT NULL,
	nome VARCHAR(100) NOT NULL,
	especialidade VARCHAR(30) NOT NULL
	PRIMARY KEY (codigo)
)
GO
CREATE TABLE prontuario (
	dataConsulta DATE NOT NULL,
	cpfPaciente VARCHAR(20) NOT NULL,
	codigoMedico INT NOT NULL,
	diagnostico VARCHAR(250) NOT NULL,
	medicamento VARCHAR(60)
	PRIMARY KEY(dataConsulta, cpfPaciente, codigoMedico),
	FOREIGN KEY(cpfPaciente) REFERENCES paciente(cpf),
	FOREIGN KEY(codigoMedico) REFERENCES medico(codigo)
)

INSERT INTO paciente (cpf, nome, rua, numero, bairro, telefone, dataNascimento) VALUES
	('35454562890', 'Jos� Rubens', 'Campos Salles', 2750,	'Centro', 21450998,	'1954-10-18'),
	('29865439810', 'Ana Claudia', 'Sete de Setembro', 178, 'Centro',	97382764, '1960-05-29'),
	('82176534800', 'Marcos Aur�lio',	'Tim�teo Penteado', 236, 'Vila Galv�o', 68172651, '1980-09-24'),
	('12386758770', 'Maria Rita',	'Castello Branco', 7765, 'Vila Ros�lia', NULL, '1975-03-30'),
	('92173458910', 'Joana de Souza',	'XV de Novembro', 298,	'Centro', 21276578, '1944-04-24')

INSERT INTO medico (codigo, nome, especialidade) VALUES
	(1,	'Wilson Cesar', 'Pediatra'),
	(2,	'Marcia Matos', 'Geriatra'),
	(3,	'Carolina Oliveira', 'Ortopedista'),
	(4,	'Vinicius Araujo', 'Cl�nico Geral')


INSERT INTO prontuario (dataConsulta, cpfPaciente, codigoMedico, diagnostico, medicamento) VALUES
	('2020-09-10', '35454562890', 2, 'Reumatismo', 'Celebra'),
	('2020-09-10', '92173458910', 2, 'Renite Al�rgica', 'Allegra'),
	('2020-09-12', '29865439810', 1, 'Inflama��o de garganta', 'Nimesulida'),
	('2020-09-13', '35454562890', 2, 'H1N1',	'Tamiflu'),
	('2020-09-15', '82176534800', 4, 'Gripe', 'Resprin'),
	('2020-09-15', '12386758770', 3, 'Bra�o Quebrado', 'Dorflex + Gesso')


---------------------------------------------------------------------------------------------------------------------------------------------------
-- Consultar:
-- Nome e Endere�o (concatenado) dos pacientes com mais de 50 anos
SELECT 
	nome, (rua + ', ' + CAST(numero AS VARCHAR) + ' - ' + bairro) AS endereco
FROM 
	paciente


-- Qual a especialidade de Carolina Oliveira
SELECT
	especialidade
FROM 
	medico
WHERE
	nome LIKE 'Caroli%'


-- Qual medicamento receitado para reumatismo
SELECT
	medicamento
FROM
	prontuario
WHERE
	diagnostico LIKE 'REUMA%'


-- Consultar em subqueries:
-- Diagn�stico e Medicamento do paciente Jos� Rubens em suas consultas
SELECT 
	diagnostico, medicamento
FROM 
	prontuario INNER JOIN paciente ON paciente.cpf = prontuario.cpfPaciente
WHERE
	nome LIKE '%Rubens'
	

-- Nome e especialidade do(s) M�dico(s) que atenderam Jos� Rubens. Caso a especialidade tenha mais de 3 letras, mostrar apenas as 3 primeiras letras concatenada com um ponto final (.)
SELECT
	medico.nome, 
		CASE
			WHEN LEN(medico.especialidade) > 3 THEN
				SUBSTRING(medico.especialidade, 1, 3) + '.'
			ELSE
				medico.especialidade
			END AS especialidade
FROM
	medico 
		INNER JOIN prontuario ON medico.codigo = prontuario.codigoMedico
		INNER JOIN paciente	ON paciente.cpf = prontuario.cpfPaciente
WHERE
	paciente.nome LIKE '%RUBENS'


-- CPF (Com a m�scara XXX.XXX.XXX-XX), Nome, Endere�o completo (Rua, n� - Bairro), Telefone (Caso nulo, mostrar um tra�o (-)) dos pacientes do m�dico Vinicius
SELECT 
	SUBSTRING(cpf, 1, 3) + '.' + SUBSTRING(cpf, 4, 3) + '.' + SUBSTRING(cpf, 7, 3) + '-' + SUBSTRING(cpf, 10, 2) AS cpf,
	paciente.nome, 
	(paciente.nome + ', ' +CAST(paciente.numero AS VARCHAR) + ' - ' + paciente.bairro) AS 'endereco completo',
	CASE 
		WHEN paciente.telefone IS NULL THEN
			'XXXX-XXXX'
		ELSE
			SUBSTRING(CAST(paciente.telefone AS VARCHAR), 1, 4) + '-' + SUBSTRING(CAST(paciente.telefone AS VARCHAR), 5, 4)
		END AS 'telefone'
FROM 
	paciente
		INNER JOIN prontuario ON paciente.cpf = prontuario.cpfPaciente
		INNER JOIN medico ON medico.codigo = prontuario.codigoMedico
WHERE
	medico.nome LIKE '%VINICIUS%'


-- Quantos dias fazem da consulta de Maria Rita at� hoje
SELECT 
	DATEDIFF(DAY, prontuario.dataConsulta, (CAST(GETDATE() AS DATE))) AS 'qtd dias'
FROM 
	prontuario
		INNER JOIN paciente ON paciente.cpf = prontuario.cpfPaciente
WHERE
	paciente.nome = 'Maria Rita'


--Alterar o telefone da paciente Maria Rita, para 98345621
UPDATE 
	paciente 
SET 
	telefone = 98345621 
WHERE 
	nome = 'MARIA RITA'


--Alterar o Endere�o de Joana de Souza para Volunt�rios da P�tria, 1980, Jd. Aeroporto
UPDATE
	paciente
SET 
	rua = 'Volunt�rios da P�tria',
	numero = 1980,
	bairro = 'Jd. Aeroporto'
WHERE
	nome = 'Joana de Souza'

