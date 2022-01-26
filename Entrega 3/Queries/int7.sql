--7. Quantidade de Jogos Comprados e ordenados por rating
SELECT Jogo.titulo AS "Nome do Jogo", Jogo.rating, COUNT(CompraJogo.idJogo) as "Número de Jogos Comprados"
FROM Jogo
INNER JOIN CompraJogo
ON CompraJogo.idJogo = Jogo.idJogo
GROUP BY Jogo.titulo
ORDER BY rating ASC
