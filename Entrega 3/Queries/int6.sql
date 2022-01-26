--6. Quantidade de compras em cada loja
SELECT Loja.nome AS "Nome da Loja", COUNT(Compra.idLoja) AS "Número de Compras"
FROM Loja
INNER JOIN Compra
ON Loja.idLoja = Compra.idLoja
GROUP BY Loja.nome
ORDER BY Loja.nome ASC