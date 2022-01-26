--4. Listagem de clientes e o seu número de Compras
SELECT Pessoa.nome, count(*) as "Número de Compras", sum(valor) 
from ((Pessoa join Compra ON idCliente = idPessoa) NATURAL JOIN Compra)
GROUP BY idPessoa