-- 1
Select Nome,Ano FROM Filmes;


-- 2
Select Nome,Ano FROM Filmes order by ano;

-- 3
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro';

-- 4
Select * FROM Filmes WHERE Ano = 1997;


-- 5
Select * FROM Filmes WHERE Ano >2000;


-- 6
Select * FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ;


-- 7
SELECT Ano,Count(Ano) FROM Filmes GROUP BY Ano ORDER BY Duracao DESC;


-- 8
SELECT Nome, Genero FROM Filmes INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id;

-- 9
SELECT Nome, Genero FROM Filmes INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id WHERE Generos.Genero = 'Mistério';


-- 10
Select Filmes.Nome,Atores.PrimeiroNome,Atores.UltimoNome,ElencoFilme.Papel FROM Filmes INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id;
