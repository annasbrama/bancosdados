/* Filtros - Ordenação - Agrupamento */

SELECT a.nomeAssociado, a.cpf, e.cidade
FROM associados AS a
inner JOIN
enderecos AS e
ON a.idAssociado = e.idAssociado
WHERE e.cidade ='São Vicente'
ORDER BY a.nomeAssociado DESC /* ordem alfabetica invertida */


/* where nao é para ser usado com comandos de agregação */

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

SELECT cidade, COUNT(idAssociado) AS 'Total de Associados' FROM enderecos GROUP BY cidade HAVING COUNT(idAssociado)>=4 ORDER BY 'Total de Associados' DESC;

/* distinct separa os dados de forma diferentes, por ex, de forma direta e sem repetir os mesmo dados, te mostra quantos cidades unicamente existe dentro da tabela */

SELECT DISTINCT cidade FROM enderecos ORDER BY cidade ASC /* ordem alfabetica crescente */

/* somandos todos os valores de multas dentro da tabela multas*/
SELECT SUM(valor) AS 'Total em Multas (R$)' FROM multas

/* trazendo o maior valor dentro da tabela multas */
SELECT MAX(valor) AS 'Maior Multa Paga' FROM multas 

/* O valor, o nome do associado e os contatos (email e telefone) 
do associado que pagou a maior multa */

SELECT nomeassociado, ddd, numero, email, valor FROM multas 
INNER JOIN emprestimos
ON multas.idemprestimo = emprestimos.idemprestimo
INNER JOIN associados
ON associados.idAssociado = emprestimos.idassociado
INNER JOIN emails
ON associados.idAssociado = emails.idAssociado
INNER JOIN contatostelefonicos
ON associados.idAssociado = contatostelefonicos.idAssociado
WHERE valor=(SELECT MAX(valor) FROM multas)

SELECT valor FROM multas
LIMIT 3

/*  todos os livros que possuam dois autores ou mais. dados dos livros: nome livro, qtd paginas, editora*/

SELECT nome, qtdpaginas, editoras.nomeEditora FROM livros 
INNER JOIN autoreslivros
ON livros.idLivro = autoreslivros.idLivro
INNER JOIN autores
ON autores.idAutor = autoreslivros.idAutor
INNER JOIN editoras
ON editoras.ideditora = livros.idEditora
GROUP BY livros.idlivro
HAVING COUNT(autoreslivros.idAutor)>=2

SELECT * FROM autoreslivros
SELECT * FROM autores

/*Relatório de quantos livros cada autor escreveu
levando em conta apenas os autores que escreveram mais de 2
livros. Tudo isto em ordem alfabética por nome do autor*/ 

SELECT autores.nomeAutor FROM autoreslivros 
INNER JOIN livros
ON autoreslivros.idLivro = livros.idLivro
INNER JOIN autores
ON autores.idAutor = autoreslivros.idAutor
GROUP BY nomeAutor
HAVING COUNT(autoreslivros.idAutor)>=2 
ORDER BY 'Começando do A' asc

/*Trazer quantos emprestimos foram realizados por data*/
SELECT dataEmprestimo, COUNT(idEmprestimo) AS 'Quantidade de emp. no dia' FROM emprestimos
GROUP BY dataEmprestimo
HAVING COUNT(emprestimos.dataEmprestimo) 
/* select dataemprestimo, count(idemprestimo) as 'total de emprestimos' from emprestimos
group by dataemprestimo
order by dataemprestimo */




/*Sumiu um livro na biblioteca e precisamos saber o histórico
dos emprestimos deste livro. 
A query deve trazer o nome de quem o emprestou, a data, o nome 
do funcionario. Escolha um livro para servir como filtro da busca.
O resultado deve ser mostrado da data mais atual para a mais antiga*/

/*SELECT * FROM livros 41
SELECT * FROM emprestimoslivros 41
SELECT * FROM emprestimos dataEmprestimo
SELECT * FROM associados nomeAssociado 8
SELECT * FROM funcionarios nomeFuncionario 1*/

SELECT associados.nomeAssociado, emprestimos.dataEmprestimo, funcionarios.nomeFuncionario FROM emprestimoslivros
INNER JOIN emprestimos ON emprestimos.idemprestimo= emprestimoslivros.idemprestimo
INNER JOIN associados ON associados.idassociado = emprestimos.idassociado
INNER JOIN funcionarios ON funcionarios.idFuncionario = emprestimos.idFuncionario
INNER JOIN livros ON livros.idlivro = emprestimoslivros.idlivro 
WHERE livros.idlivro=41
order BY dataemprestimo DESC

/* select nomeFuncionario, dataEmprestimo, dataDevolucaoEfetiva, nomeAssociado from funcionarios
inner join emprestimos
on funcionarios.idFuncionario = emprestimos.idFuncionario
inner join associados
on associaods.idAssociado = emprestimos.idAssociado
inner join emprestimosLivros
on emprestimoslivros.idEmprestimo = emprestimos.idEmprestimo
inner join livros
on emprestimoslivros.idlivro = livros.idlivro
where nome = 'A cantiga dos pássaros e das serpentes'
order by dataEmprestimo desc */

