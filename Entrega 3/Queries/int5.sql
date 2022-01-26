--5. Compras realizadas nos últimos 6 meses
SELECT Pessoa.nome, Compra.dataCompra AS "Date"
FROM (Compra INNER JOIN Pessoa ON idPessoa = idCliente) 
WHERE Compra.dataCompra BETWEEN '2021-08-29' AND '2022-01-29'
ORDER BY Compra.dataCompra ASC