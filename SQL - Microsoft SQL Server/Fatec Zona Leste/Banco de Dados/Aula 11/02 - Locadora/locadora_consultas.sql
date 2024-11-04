USE locadora

/*	1) Consultar num_cadastro do cliente, nome do cliente, data_locacao (Formato
	dd/mm/aaaa), Qtd_dias_alugado (total de dias que o filme ficou alugado), titulo do
	filme, ano do filme, da loca��o do cliente cujo nome inicia com Matilde */
SELECT cliente.numCadastro, cliente.nome, locacao.dataLocacao, filme.titulo, filme.ano,
DATEDIFF(DAY, dataLocacao, dataDevolucao) AS 'Dias Alugados'--Entre aspas simples para usar espa�o
FROM cliente
INNER JOIN locacao ON cliente.numCadastro = locacao.numCadastroCliente
INNER JOIN dvd ON locacao.numDVD = dvd.num
INNER JOIN filme ON dvd.filmeId = filme.id
INNER JOIN filmeEstrela ON filme.id = filmeEstrela.filmeId
INNER JOIN estrela ON estrela.id = filmeEstrela.estrelaId
WHERE cliente.nome LIKE 'Matilde%'


/*	2) Consultar nome da estrela, nome_real da estrela, t�tulo do filme dos filmes
cadastrados do ano de 2015*/
SELECT estrela.nome, estrela.nomeReal, filme.titulo
FROM estrela
INNER JOIN filmeEstrela ON filmeEstrela.estrelaId = estrela.id
INNER JOIN filme ON filmeEstrela.filmeId = filme.id
WHERE filme.ano = 2015

/*	3) Consultar t�tulo do filme, data_fabrica��o do dvd (formato dd/mm/aaaa), caso a
diferen�a do ano do filme com o ano atual seja maior que 6, deve aparecer a diferen�a
do ano com o ano atual concatenado com a palavra anos (Exemplo: 7 anos), caso
contr�rio s� a diferen�a (Exemplo: 4).*/
SELECT filme.titulo, dvd.dataFabricacao, 
    CASE WHEN DATEDIFF(YEAR, dvd.dataFabricacao, GETDATE()) > 7 THEN 
            CAST(DATEDIFF(YEAR, dvd.dataFabricacao, GETDATE()) AS VARCHAR) + ' anos'
        ELSE 
            CAST(DATEDIFF(YEAR, dvd.dataFabricacao, GETDATE()) AS VARCHAR)
    END AS 'Diferen�a de anos'
FROM filme INNER JOIN dvd 
ON filme.id = dvd.filmeId

