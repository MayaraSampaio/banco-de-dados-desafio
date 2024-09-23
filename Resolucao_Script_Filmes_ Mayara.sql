--1
SELECT
Nome,
Ano
FROM FILMES;

--2
SELECT * FROM Filmes 
ORDER BY Ano;

--3
SELECT *FROM Filmes
WHERE Nome ='De volta para o Futuro';

--4
SELECT *FROM Filmes
WHERE Ano = 1997;

--5
SELECT *FROM Filmes
WHERE Ano > 2000;

--6
SELECT *FROM Filmes
WHERE Duracao BETWEEN 100 AND 150 
ORDER BY Duracao ASC;

--7
SELECT Ano, COUNT(Ano) Quantidade 
FROM Filmes 
GROUP BY Ano 
ORDER BY Quantidade DESC;

--8
SELECT * FROM Atores
WHERE Genero ='M';

--9
SELECT * FROM Atores
WHERE Genero ='F' ORDER BY PrimeiroNome;

--10
SELECT F.Nome,G.Genero
FROM Filmes F
INNER JOIN FilmesGenero as FG
ON F.Id = FG.IdFilme
INNER JOIN Generos as G 
ON G.Id = FG.IdGenero; 

--11
SELECT F.Nome, G.Genero
FROM Filmes as F
INNER JOIN FilmesGenero as FG
ON F.Id = FG.IdFilme
INNER JOIN Generos as G 
ON G.Id = FG.IdGenero 
WHERE G.Genero = 'Mistério';

--12 
SELECT F.Nome, A.PrimeiroNome,A.UltimoNome,EF.Papel
FROM Filmes as F
INNER JOIN ElencoFilme as EF 
ON F.Id = EF.IdFilme
INNER JOIN Atores as A
ON A.Id = EF.IdAtor
;
