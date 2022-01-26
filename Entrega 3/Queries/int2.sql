-- 2. Número de horas semanais por cada trabalhador
SELECT Pessoa.nome, (SUM(horaFinal - horaInicial)) AS "Número de Horas"
FROM Funcionario
INNER JOIN HorarioFuncionario
ON idPessoa = idFuncionario
NATURAL JOIN Horario
NATURAL JOIN Pessoa
GROUP BY Pessoa.nome