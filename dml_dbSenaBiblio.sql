INSERT INTO autores(nomeAutor) VALUES ('Suzanne Collins'), ('Mauricio de Sousa'), ('Stephenie Meyer');

/* Editoras */

INSERT INTO editoras (nomeEditora) VALUES ('Érica'),('Person'), ('Atlas'),('FTD'); 

/* GENEROS */

INSERT INTO generos(nomeGenero) VALUES('Romance'), ('Drama'), ('Tecnologia'), ('Fantasia'), ('Biografia'); 

/* LIVROS */

/**INSERT INTO livros (nome, sinopse, isbn, qtdPaginas, edicao, idEditora) 
VALUES ('Java para Leigos', 'do basico ao avançado da linguagem', '9028017029981', 150, '2a', 3), 
('A cartuxa de Parma', '', '4921029442771', 325, '1a', 1), ('A casa das marés', '', '3321059442771', 256, '1a', 1), 
('PHP avançado', 'avançado da linguagem PHP', '4923029562771', 475, '3a', 2), ('A hospedeira', '', '8923029062779', 280, '7a', 4), 
('Ariadne', 'Igual a Irene Idler de S. Holmes', '9923029422779', 512, '1a', 2), 
('A distância entre nós', '', '9927008422779', 200, '5a', 3), ('Bill Gates', 'Historia do Bill Gates', '3783022422779', 156, '1a', 4), 
('Criador do Linux', 'Historia do Linus Torvalds', '37830213224799', 159, '1a', 3),
('A cantiga dos pássaros e das serpentes', 'aves e cobras?', '76829113224799', 156, '3a', 2); *//

INSERT INTO livros (nome, sinopse, isbn, qtdPaginas, edicao, idEditora) 

VALUES ('Java para Leigos', 'do basico ao avançado da linguagem', '9028017029981', 150, '2a', 3); 

 

INSERT INTO livros (nome, sinopse, isbn, qtdPaginas, edicao, idEditora) 

VALUES ('A cartuxa de Parma', '', '4921029442771', 325, '1a', 1); 

  

INSERT INTO livros (nome, sinopse, isbn, qtdPaginas, edicao, idEditora) 

VALUES ('A casa das marés', '', '3321059442771', 256, '1a', 1); 

  

INSERT INTO livros (nome, sinopse, isbn, qtdPaginas, edicao, idEditora) 

VALUES ('PHP avançado', 'avançado da linguagem PHP', '4923029562771', 475, '3a', 2); 

  

INSERT INTO livros (nome, sinopse, isbn, qtdPaginas, edicao, idEditora) 

VALUES ('A hospedeira', '', '8923029062779', 280, '7a', 4); 

  

INSERT INTO livros (nome, sinopse, isbn, qtdPaginas, edicao, idEditora) 

VALUES ('Ariadne', 'Igual a Irene Idler de S. Holmes', '9923029422779', 512, '1a', 2); 

  

INSERT INTO livros (nome, sinopse, isbn, qtdPaginas, edicao, idEditora) 

VALUES ('A distância entre nós', '', '9927008422779', 200, '5a', 3); 

  

INSERT INTO livros (nome, sinopse, isbn, qtdPaginas, edicao, idEditora) 

VALUES ('Bill Gates', 'Historia do Bill Gates', '3783022422779', 156, '1a', 4); 

  

INSERT INTO livros (nome, sinopse, isbn, qtdPaginas, edicao, idEditora) 

VALUES ('Criador do Linux', 'Historia do Linus Torvalds', '37830213224799', 159, '1a', 3); 

  

INSERT INTO livros (nome, sinopse, isbn, qtdPaginas, edicao, idEditora) 

VALUES ('A cantiga dos pássaros e das serpentes', 'aves e cobras?', '76829113224799', 156, '3a', 2); 

INSERT INTO multas (valor, statusMultas, idEmprestimo, idLivros) VALUES (5.00, 0, 1, 2), (2.00, 0, 2, 1), (1.00, 1, 3, 2), (3.00, 0, 4, 8), (4.25, 1, 5, 9),
(3.15, 1, 6, 4)