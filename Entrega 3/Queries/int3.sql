--3.  Rating média de cada linguagem
SELECT idioma AS "Idioma", ROUND(AVG(rating),1) AS "Rating médio" FROM Jogo
GROUP BY idioma
ORDER BY rating ASC