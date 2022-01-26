--10. Soma do preço dos jogos de cada editor
SELECT editor.nome AS "Editor", SUM(preco) AS "Preço médio dos produtos da ea dlc"
FROM Jogo
INNER JOIN editor
ON editor.idEditor = jogo.editor
GROUP BY editor.nome
ORDER BY preco ASC