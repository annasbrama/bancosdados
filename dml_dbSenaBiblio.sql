INSERT INTO autores(nomeAutor) VALUES ('Suzanne Collins'), ('Mauricio de Sousa'), ('Stephenie Meyer')
INSERT INTO autores(nomeAutor) VALUES ('Barry Burd'), ('Stendhal'), ('Jojo Moyes'), ('Flávio Lisboa'), ('Jennifer Saint'), ('Thrity Umrigar'), ('Bill Gates'), ('Linus Torvalds');

SELECT * FROM autores;

/* Editoras */

INSERT INTO editoras (nomeEditora) VALUES ('Érica'),('Person'), ('Atlas'),('FTD'); 

SELECT * FROM editoras

/* GENEROS */

INSERT INTO generos(nome) VALUES('Romance'), ('Drama'), ('Tecnologia'), ('Fantasia'), ('Biografia'); 

SELECT * FROM generos

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

SELECT * FROM livros;

INSERT INTO autoresLivros (idAutor, idLivro) 
VALUES (4,41),(5,42),(6,43),(7,44),(3,45),(8,46),(9,47),(10,48),(11,49),(1,50);

SELECT * FROM autoresLivros;


INSERT INTO associados (nomeAssociado, cpf) values ('Anna Sbrahma', '11045652840'),('Arthur Tiengo','20504598758'), 
 ('Allan Matias', '25687942642'),('José Robson','24647531548'),('Leticia Avolio','42658576631'), 
 ('Kailany Moraes','41325286675'),('Renato Gitson','21358478820'),('Samantha Carioca','20365228447'), 
 ('Marcelo Isidoro','32568545520'),('Edison Saudades','52658442020'); 
 

SELECT * from associados;


INSERT INTO funcionarios (nomeFuncionario, loginFuncionario, senhaFuncionario)  
VALUES ('Caio Belky', 'Belky23', 'belkyc123'); 
INSERT INTO funcionarios (nomeFuncionario, loginFuncionario, senhaFuncionario)  
VALUES ('Maria Silva', 'MaryS', 'maria2024'); 
INSERT INTO funcionarios (nomeFuncionario, loginFuncionario, senhaFuncionario)  
VALUES ('Lais Silva', 'Lais', 'laiss123'); 

SELECT * FROM funcionarios;


INSERT INTO emprestimos (dataEmprestimo, dataDevolucao, idFuncionario, idAssociado) VALUES ('20-05-06', '20-05-10', '1', '2'), 
('22-08-01', '22-08-07', '2', '4'), ('23-04-05', '23-04-12', '3', '6');
INSERT INTO emprestimos (dataEmprestimo, dataDevolucao, idFuncionario, idAssociado) VALUES ('24-01-05', '24-01-11', 1, 8), ('24-02-05', '24-02-09', 1, 10);

SELECT * FROM emprestimos;

INSERT INTO emprestimoslivros (idEmprestimo, idLivro, dataDevolucaoEfetiva)
VALUES ('1', '45', '24-01-11'),
		 ('2', '50', '20-05-10'),
		 ('3', '48', '22-08-07'),
		 ('4', '41', '23-04-12'),
		 ('5', '44', '24-02-09');

INSERT INTO tiposcontatostelefonicos (nomeContato)
VALUES('Celular'),
		('Residencial'),
		('Comercial'),
		('Recado');

INSERT INTO contatosTelefonicos (ddd, numero, idAssociado,idTipoContatoTelefonico) VALUES
(13, 987654321, 2, 1), (13, 987321654, 1, 1), (13, 987654321, 6, 1),
(13, 36974125, 4, 2), (13, 963258741, 3, 1), (13, 35712584, 5, 3),
(13, 917530148, 8, 1), (13, 38697225, 7, 4), (13, 963257589, 9, 1),(13, 35747139, 10, 2);


SELECT * FROM contatosTelefonicos

INSERT INTO emails(email,idAssociado)
VALUES ('anabrahma@gmail.com', 1),('reiarthur2006@gmail.com',2),('allanMatias@gmail.com', 3),('JoséRobson2@gmail.com',4),
('LeticiaItalia@gmail.com', 5),('kaka2006@gmail.com',6),('github@gmail.com', 7),('samanthavulgoRJ@gmail.com',8),
('marcelolideranca@gmail.com', 9),('edinhosumido02@gmail.com',10); 

SELECT * FROM emails

INSERT INTO enderecos (idAssociado,logradouro, numero, complemento, bairro, cidade, UF, cep ) 
VALUES 
(1 ,'R.Alice Machado',1353, 'casa', 'Naútica', 'São Vicente', 'SP',11330300),
(2,'Av.Salagdo filho', 205, 'casa','Naútica','São Vicente', 'SP',11340500), 
(3,'R.Ten.Durval do Amaral', 158, 'Ap.31','Catipoã','São Vicente', 'SP',11330300),
(4,'Av.Ademar de Barros', 200, 'casa','Santa Rosa','Guarujá', 'SP',11250300),
(5,'Av.Ana Costa' , 478, 'Ap.89','Gonzaga','Santos', 'SP','11315355'), 
(6,'R.Av. Pres. Wilson', 15, 'Ap.51','Gonzaga','Santos', 'SP',11319200),
(7,'Av.Cons.Nébias', 200,'Ap.31','Vila Nova','Santos', 'SP',11221600),
(8,'Av.Bernardino de Campos', 657, 'Ap.85','Gonzaga','Santos','SP',11216625), 
(9,'R.Ten.Durval do Amaral',156,'casa','Catipoã','São Vicente','SP',11330300),
(10,'Av.Cons.Nébias',202,'Ap.31','Vila Nova','Santos', 'SP',11221600);

SELECT * FROM enderecos

INSERT INTO multas (valor, statusMulta, idEmprestimo, idLivro) VALUES (1.00, 1, 3, 45), (3.00, 0, 4, 50), (4.25, 1, 5, 48), (3.15, 1, 2, 41), (2.25, 0, 1, 44);

SELECT * FROM 

INSERT INTO livrosgeneros(idLivro, idGeneros) VALUES
(41, 3), (42, 2), (43, 3), (44, 4), (45, 2), (46, 5), (47, 1), (48, 5), (49, 3), (50, 4);