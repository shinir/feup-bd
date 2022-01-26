--8. Jogos realizados pela ea dlc
SELECT Jogo.titulo as "Jogos realizados pela ea dlc"
FROM Jogo
INNER JOIN editor
ON editor.idEditor = Jogo.editor
WHERE editor.nome = 'ea dlc'
GROUP BY Jogo.titulo