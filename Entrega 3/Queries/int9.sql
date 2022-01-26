--9. A rating média dos 5 melhores editores
SELECT editor.nome, ROUND(AVG(rating),1) AS "Rating médio"
FROM Jogo
INNER JOIN editor
ON Jogo.editor = Editor.idEditor
GROUP BY editor.nome
ORDER BY Jogo.rating DESC
LIMIT 5