/* Filtros - Ordenação - Agrupamento */

SELECT a.nomeAssociado, a.cpf, e.cidade
FROM associados AS a
inner JOIN
enderecos AS e
ON a.idAssociado = e.idAssociado
WHERE e.cidade ='São Vicente'
ORDER BY a.nomeAssociado DESC /* ordem alfabetica invertida */


/* função de agregação

count - contar
sum - somar
avg - extrair a média
min - menor valor
max - maior valor */

/* GROUP BY */

SELECT COUNT(idAssociado) AS 'Total de Associados' FROM associados;

SELECT cidade, COUNT(idAssociado) AS 'Total de Associados' FROM enderecos GROUP BY cidade;

/* where not ou <> para negar informação dentro dos dados no relatório */

SELECT cidade, COUNT(idAssociado) AS 'Total de Associados' FROM enderecos WHERE cidade<>'Guarujá' GROUP BY cidade;

/* having count para trabalhar com calculos e sempre usado após o agrupamento */

SELECT cidade, COUNT(idAssociado) AS 'Total de Associados' FROM enderecos GROUP BY cidade HAVING COUNT(idAssociado)>=5;

SELECT cidade, COUNT(idAssociado) AS 'Total de Associados' FROM enderecos GROUP BY cidade HAVING COUNT(idAssociado)>=4 ORDER BY 'Total de Associados' desc;
