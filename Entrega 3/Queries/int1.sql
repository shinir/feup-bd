-- 1.  Jogos com valor inferior a 15.99 e com um rating superior a 4
SELECT titulo AS "Nome do Jogo", preco AS "Preço", rating AS "Avaliação" FROM Jogo
WHERE preco <= 15.99
AND rating >= 4.0
ORDER BY rating ASC