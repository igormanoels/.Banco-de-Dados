use cantina;
----------------------------------------------------------------------------
-- Dados para a tabela de Cliente
INSERT INTO cliente (nomeCliente, cpf, genero, dataNascimento, naturalidade, nacionalidade) 
VALUES
    ('Jo�o da Silva', '12345678901', 'Masculino', '1990-05-15', 'S�o Paulo', 'Brasileiro'),
    ('Maria Oliveira', '98765432109', 'Feminino', '1985-08-20', 'Rio de Janeiro', 'Brasileiro'),
    ('Ana Santos', '45678901234', 'Feminino', '1993-03-10', 'Salvador', 'Brasileiro'),
    ('Pedro Souza', '56789012345', 'Masculino', '1988-11-25', 'Belo Horizonte', 'Brasileiro'),
    ('Luiza Pereira', '23456789012', 'Feminino', '1996-07-05', 'Recife', 'Brasileiro'),
    ('Carlos Costa', '67890123456', 'Masculino', '1999-01-30', 'Porto Alegre', 'Brasileiro'),
    ('Diego Fernandez', '34567890123', 'Masculino', '1983-09-12', 'Buenos Aires', 'Argentino'),
    ('Sofia Ramirez', '45678901234', 'Feminino', '1987-04-28', 'C�rdoba', 'Argentino'),
    ('Klaus M�ller', '56789012345', 'Masculino', '1980-12-03', 'Berlim', 'Alem�o'),
    ('�lise Dubois', '67890123456', 'Feminino', '1984-06-17', 'Paris', 'Franc�s');


----------------------------------------------------------------------------
-- Dados para a tabela de Contato
INSERT INTO contato (idCliente, telefone, email, sala)
VALUES 
    (1, '(11) 98765-4321', 'joao.silva@example.com', '41'),
    (2, '(21) 12345-6789', 'maria.oliveira@example.com', '42'),
    (3, '(71) 55555-5555', 'ana.santos@example.com', '43'),
    (4, '(31) 99999-9999', 'pedro.souza@example.com', '44'),
    (5, '(81) 77777-7777', 'luiza.pereira@example.com', '45'),
    (6, '(51) 33333-3333', 'carlos.costa@example.com', '46'),
    (7, '(54) 77777-7777', 'diego.fernandez@example.com', '47'),
    (8, '(54) 88888-8888', 'sofia.ramirez@example.com', '48'),
    (9, '(49) 5555-5555', 'klaus.muller@example.com', '49'),
    (10, '(33) 9999-9999', 'elise.dubois@example.com', '50');


----------------------------------------------------------------------------
-- Dados para a tabela de Atendente
INSERT INTO atendente (nomeAtendente, numRegistro)
VALUES 
    ('Marcos Silva', '001'),
    ('Carla Oliveira', '002'),
    ('Renato Santos', '003');


----------------------------------------------------------------------------
-- Dados para a tabela de Refei��o
INSERT INTO refeicao (idCliente, idAtendente, categoria, descricao)
VALUES 
    (1, 1, 'Caf�', 'Caf� da manh� simples'),
    (2, 2, 'Caf�', 'Caf� americano com croissant'),
    (3, 3, 'Caf�', 'P�o de queijo com caf� com leite'),
    (4, 1, 'Caf�', 'Tapioca com caf� preto'),
    (5, 2, 'Caf�', 'Misto quente com suco de laranja'),
    (6, 1, 'Almo�o', 'Prato do dia'),
    (7, 2, 'Almo�o', 'Prato executivo'),
    (8, 3, 'Almo�o', 'Self-service'),
    (9, 1, 'Almo�o', 'Self-service'),
    (10, 2, 'Almo�o', 'Prato do dia'),
    (1, 3, 'Jantar', 'Prato do dia'),
    (2, 1, 'Jantar', 'Prato executivo'),
    (3, 2, 'Jantar', 'Self-service'),
    (4, 3, 'Jantar', 'Self-service'),
    (5, 1, 'Jantar', 'Prato do dia'),
	(1, 1, 'Caf�', 'Caf� da manh� simples'),
    (2, 2, 'Caf�', 'Caf� americano com croissant'),
    (3, 3, 'Caf�', 'P�o de queijo com caf� com leite'),
    (4, 1, 'Caf�', 'Tapioca com caf� preto'),
    (5, 2, 'Caf�', 'Misto quente com suco de laranja'),
    (6, 1, 'Almo�o', 'Prato do dia'),
    (7, 2, 'Almo�o', 'Prato executivo'),
    (8, 3, 'Almo�o', 'Self-service'),
    (9, 1, 'Almo�o', 'Self-service'),
    (10, 2, 'Almo�o', 'Prato do dia'),
    (1, 3, 'Jantar', 'Prato do dia'),
    (2, 1, 'Jantar', 'Prato executivo'),
    (3, 2, 'Jantar', 'Self-service'),
    (4, 3, 'Jantar', 'Self-service'),
    (5, 1, 'Jantar', 'Prato do dia'),
    (6, 1, 'Caf�', 'Caf� da manh� simples com suco de frutas'),
    (7, 2, 'Caf�', 'Caf� com p�o de queijo e bolo de milho'),
    (8, 3, 'Caf�', 'Caf� com croissant e gel�ia de morango'),
    (1, 1, 'Almo�o', 'Self-service com variedade de saladas'),
    (2, 2, 'Almo�o', 'Prato executivo de fil� de frango grelhado'),
    (3, 3, 'Almo�o', 'Self-service com op��o vegetariana'),
    (6, 1, 'Jantar', 'Prato do dia com risoto de cogumelos'),
    (7, 2, 'Jantar', 'Prato executivo de salm�o ao molho de maracuj�'),
    (8, 3, 'Jantar', 'Self-service com churrasco de picanha'),
	(9, 1, 'Caf�', 'Caf� da manh� com p�o integral e frutas frescas'),
    (10, 2, 'Caf�', 'Caf� com waffle e suco natural'),
    (1, 3, 'Caf�', 'Caf� com panquecas e ovos mexidos'),
    (2, 1, 'Caf�', 'Caf� com sandu�che de presunto e queijo'),
    (3, 2, 'Caf�', 'Caf� com croissant e geleia de framboesa'),
    (4, 3, 'Almo�o', 'Self-service com variedade de pratos quentes'),
    (5, 1, 'Almo�o', 'Prato executivo de peixe grelhado com legumes'),
    (6, 2, 'Almo�o', 'Self-service com op��o vegana'),
    (7, 3, 'Almo�o', 'Prato do dia com estrogonofe de carne'),
    (8, 1, 'Almo�o', 'Self-service com saladas frescas'),
    (9, 2, 'Jantar', 'Prato executivo de frango ao curry'),
    (10, 3, 'Jantar', 'Self-service com churrasco de carne e frango'),
    (1, 1, 'Jantar', 'Prato do dia com risoto de camar�o'),
    (2, 2, 'Jantar', 'Prato executivo de fil� mignon com molho de vinho tinto'),
    (3, 3, 'Jantar', 'Self-service com op��o vegetariana'),
    (4, 1, 'Almo�o', 'Self-service com variedade de pratos quentes'),
    (5, 2, 'Almo�o', 'Prato executivo de peixe grelhado com legumes'),
    (6, 3, 'Almo�o', 'Self-service com op��o vegana'),
    (7, 1, 'Almo�o', 'Prato do dia com estrogonofe de carne'),
    (8, 2, 'Almo�o', 'Self-service com saladas frescas'),
    (9, 3, 'Jantar', 'Prato executivo de frango ao curry'),
    (10, 1, 'Jantar', 'Self-service com churrasco de carne e frango'),
    (1, 2, 'Jantar', 'Prato do dia com risoto de camar�o'),
    (2, 3, 'Jantar', 'Prato executivo de fil� mignon com molho de vinho tinto'),
    (3, 1, 'Jantar', 'Self-service com op��o vegetariana'),
    (4, 2, 'Caf�', 'Caf� com p�o de queijo e suco de laranja'),
    (5, 3, 'Caf�', 'Caf� com bolo de chocolate e caf� expresso'),
    (6, 1, 'Caf�', 'Caf� com cuscuz e queijo coalho'),
    (7, 2, 'Caf�', 'Caf� com tapioca e suco de abacaxi'),
    (8, 3, 'Caf�', 'Caf� com bolo de milho e ch� de camomila'),
    (9, 1, 'Almo�o', 'Self-service com variedade de pratos regionais'),
    (10, 2, 'Almo�o', 'Prato executivo de fil� de til�pia com arroz integral'),
    (1, 3, 'Almo�o', 'Self-service com op��o vegana'),
    (2, 1, 'Almo�o', 'Prato do dia com estrogonofe de frango'),
    (3, 2, 'Almo�o', 'Self-service com saladas frescas'),
    (4, 3, 'Jantar', 'Prato executivo de salm�o ao molho de maracuj�'),
    (5, 1, 'Jantar', 'Self-service com churrasco de picanha e frango'),
    (6, 2, 'Jantar', 'Prato do dia com risoto de camar�o'),
    (7, 3, 'Jantar', 'Prato executivo de fil� mignon ao molho de vinho tinto'),
    (8, 1, 'Jantar', 'Self-service com op��o vegetariana'),
    (9, 2, 'Almo�o', 'Self-service com variedade de pratos regionais'),
    (10, 3, 'Almo�o', 'Prato executivo de fil� de til�pia com arroz integral'),
    (1, 1, 'Almo�o', 'Self-service com op��o vegana'),
    (2, 2, 'Almo�o', 'Prato do dia com estrogonofe de frango'),
    (3, 3, 'Almo�o', 'Self-service com saladas frescas'),
    (4, 1, 'Jantar', 'Prato executivo de salm�o ao molho de maracuj�'),
    (5, 2, 'Jantar', 'Self-service com churrasco de picanha e frango'),
    (6, 3, 'Jantar', 'Prato do dia com risoto de camar�o'),
    (7, 1, 'Jantar', 'Prato executivo de fil� mignon ao molho de vinho tinto'),
    (8, 2, 'Jantar', 'Self-service com op��o vegetariana');


----------------------------------------------------------------------------
-- Dados para a tabela de Pagamento
INSERT INTO pagamento (idRefeicao, idCliente, preco, dataConsumo)
VALUES 
    (1, 1, 17.00, '2024-05-14T19:00:00'),
    (2, 2, 22.01, '2024-05-14T19:30:00'),
    (3, 3, 26.00, '2024-05-14T20:00:00'),
    (4, 4, 24.57, '2024-05-14T20:30:00'),
    (5, 5, 19.12, '2024-05-14T21:00:00'),
    (6, 6, 20.00, '2024-05-14T12:00:00'),
    (7, 7, 25.90, '2024-05-14T12:30:00'),
    (8, 8, 30.00, '2024-05-14T13:00:00'),
    (9, 9, 28.90, '2024-05-14T13:30:00'),
    (10, 10, 22.50, '2024-05-14T14:00:00'),
    (1, 1, 17.00, '2024-05-14T19:00:00'),
    (2, 2, 22.01, '2024-05-14T19:30:00'),
    (3, 3, 26.00, '2024-05-14T20:00:00'),
    (4, 4, 24.57, '2024-05-14T20:30:00'),
    (5, 5, 19.12, '2024-05-14T21:00:00'),
    (6, 6, 20.00, '2024-05-15T12:00:00'),
    (7, 7, 25.90, '2024-05-15T12:30:00'),
    (8, 8, 30.00, '2024-05-15T13:00:00'),
    (9, 9, 28.90, '2024-05-15T13:30:00'),
    (10, 10, 22.50, '2024-05-15T14:00:00'),
    (1, 1, 17.50, '2024-05-15T19:30:00'),
    (2, 2, 22.60, '2024-05-15T20:00:00'),
    (3, 3, 26.50, '2024-05-15T20:30:00'),
    (4, 4, 24.67, '2024-05-15T21:00:00'),
    (5, 5, 19.21, '2024-05-15T21:30:00'),
    (6, 6, 18.00, '2024-05-16T12:00:00'),
    (7, 7, 23.50, '2024-05-16T12:30:00'),
    (8, 8, 27.80, '2024-05-16T13:00:00'),
    (9, 1, 29.90, '2024-05-16T19:30:00'),
    (10, 2, 35.00, '2024-05-16T20:00:00'),
    (11, 3, 33.25, '2024-05-16T20:30:00'),
    (6, 6, 21.50, '2024-05-16T19:00:00'),
    (7, 7, 27.75, '2024-05-16T19:30:00'),
    (8, 8, 31.80, '2024-05-16T20:00:00'),
    (12, 9, 19.00, '2024-05-17T07:30:00'),
    (13, 10, 24.50, '2024-05-17T08:00:00'),
    (14, 1, 28.80, '2024-05-17T08:30:00'),
    (15, 2, 27.67, '2024-05-17T09:00:00'),
    (16, 3, 21.21, '2024-05-17T09:30:00'),
    (17, 4, 26.00, '2024-05-17T12:00:00'),
    (18, 5, 32.50, '2024-05-17T12:30:00'),
    (19, 6, 30.80, '2024-05-17T13:00:00'),
    (20, 7, 29.67, '2024-05-17T13:30:00'),
    (21, 8, 23.21, '2024-05-17T14:00:00'),
    (22, 9, 25.00, '2024-05-17T18:30:00'),
    (23, 10, 31.50, '2024-05-17T19:00:00'),
    (24, 1, 29.80, '2024-05-17T19:30:00'),
    (25, 2, 28.67, '2024-05-17T20:00:00'),
    (26, 3, 22.21, '2024-05-17T20:30:00'),
    (27, 4, 24.00, '2024-05-17T19:00:00'),
    (28, 5, 30.50, '2024-05-17T19:30:00'),
    (29, 6, 28.80, '2024-05-17T20:00:00'),
    (30, 7, 27.67, '2024-05-17T20:30:00'),
    (31, 8, 21.21, '2024-05-17T21:00:00'),
    (32, 4, 22.00, '2024-05-18T12:00:00'),
    (33, 5, 28.50, '2024-05-18T12:30:00'),
    (34, 6, 26.80, '2024-05-18T13:00:00'),
    (35, 7, 25.67, '2024-05-18T13:30:00'),
    (36, 8, 19.21, '2024-05-18T14:00:00'),
    (37, 9, 27.00, '2024-05-18T18:30:00'),
    (38, 10, 33.50, '2024-05-18T19:00:00'),
    (39, 1, 31.80, '2024-05-18T19:30:00'),
    (40, 2, 30.67, '2024-05-18T20:00:00'),
    (41, 3, 24.21, '2024-05-18T20:30:00'),
    (42, 4, 26.00, '2024-05-18T19:00:00'),
    (43, 5, 32.50, '2024-05-18T19:30:00'),
    (44, 6, 30.80, '2024-05-18T20:00:00'),
    (45, 7, 29.67, '2024-05-18T20:30:00'),
    (46, 8, 23.21, '2024-05-18T21:00:00'),
    (47, 9, 25.00, '2024-05-18T18:00:00'),
    (48, 10, 31.50, '2024-05-18T18:30:00'),
    (49, 1, 29.80, '2024-05-18T19:00:00'),
    (50, 2, 28.67, '2024-05-18T19:30:00'),
    (51, 3, 22.21, '2024-05-18T20:00:00');
