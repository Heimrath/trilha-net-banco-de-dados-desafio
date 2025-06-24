-- Desafio 1 - Buscar o nome e ano dos filmes
SELECT 
	Nome,
	Ano
FROM Filmes

-- Desafio 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano 

-- Desafio 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- Desafio 4 - Buscar os filmes lan�ados em 1997
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = 1997

-- Desafio 5 - Buscar os filmes lan�ados AP�S o ano 2000
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > 2000

-- Desafio 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- Desafio 7 - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT	
	Ano,
	COUNT(Ano) Quantidade
FROM Filmes
GROUP BY Ano 
ORDER BY Quantidade DESC

-- Desafio 8 - Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
SELECT * FROM Atores
WHERE Genero = 'M'

-- Desafio 9 - Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- Desafio 10 - Buscar o nome do filme e o g�nero
SELECT 
	F.Nome,
	G.Genero
FROM FilmesGenero AS FG
INNER JOIN Filmes AS F ON FG.IdFilme = F.Id
INNER JOIN Generos AS G ON FG.IdGenero = G.Id

-- Desafio 11 - Buscar o nome do filme e o g�nero do tipo "Mist�rio"
SELECT 
	F.Nome,
	G.Genero
FROM FilmesGenero AS FG
INNER JOIN Filmes AS F ON FG.IdFilme = F.Id
INNER JOIN Generos AS G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mist�rio'

-- Desafio 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT 
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	EF.Papel
FROM ElencoFilme AS EF
INNER JOIN Filmes AS F ON EF.IdFilme = F.Id
INNER JOIN Atores AS A ON EF.IdAtor = A.Id