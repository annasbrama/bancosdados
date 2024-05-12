CREATE TABLE autores(
idAutor INT AUTO_INCREMENT NOT NULL,
nomeAutor VARCHAR(50) NOT NULL,
CONSTRAINT PRIMARY KEY (idAutor)
);

CREATE TABLE generos(
idGenero INT AUTO_INCREMENT NOT NULL, 
nomeGenero VARCHAR(20) NOT NULL,
CONSTRAINT PRIMARY KEY (idGenero)
);

CREATE TABLE editoras(
idEditora INT AUTO_INCREMENT NOT NULL,
nomeEditora VARCHAR(30) NOT NULL,
CONSTRAINT PRIMARY KEY (idEditora)
);

CREATE TABLE livros( 
idLivro INT AUTO_INCREMENT NOT NULL,
titulo VARCHAR(60) NOT NULL, 
ISBN CHAR(13) NOT NULL,
sinopse VARCHAR(160) NULL,
qtdPaginas INT NOT NULL, 
edicao INT,
idEditora INT NOT NULL,
CONSTRAINT PRIMARY KEY (idLivro),
CONSTRAINT fk_livros_editora FOREIGN KEY (idEditora) REFERENCES editoras(idEditora)
);

CREATE TABLE autoresLivros(
idAutor INT NOT NULL,
idLivro INT NOT NULL,
CONSTRAINT PRIMARY KEY (idAutor, idLivro),
CONSTRAINT fk_autoresLivros_autores FOREIGN KEY (idAutor) REFERENCES autores(idAutor),
CONSTRAINT fk_autoresLivros_livros FOREIGN KEY (idLivro) REFERENCES livros(idLivro)
);

CREATE TABLE livrosGeneros(
idGenero INT NOT NULL,
idLivro INT NOT NULL, 
CONSTRAINT fk_livrosGeneros_Generos FOREIGN KEY (idGenero) REFERENCES generos(idGenero),
CONSTRAINT fk_livroGeneros_Livro FOREIGN KEY (idLivro) REFERENCES livros(idLivro)
);

CREATE TABLE funcionarios(
idFuncionario INT AUTO_INCREMENT NOT NULL,
nomeFuncionario VARCHAR(50) NOT NULL,
loginFuncionario VARCHAR(50) NOT NULL,
senhaFuncionario VARCHAR(50) NOT NULL,
CONSTRAINT PRIMARY KEY (idFuncionario)
);

CREATE TABLE associados (
idAssociado INT AUTO_INCREMENT NOT NULL,
nomeAssociado VARCHAR(50) NOT NULL,
CPF VARCHAR(11) NOT NULL,
idEndereco INT NOT NULL,
idContato INT NOT NULL,
idEmail INT NOT NULL,
CONSTRAINT PRIMARY KEY (idAssociado),
CONSTRAINT fk_enderecoAssociado_associado FOREIGN KEY (idEndereco) REFERENCES enderecoAssociado(idEndereco),
CONSTRAINT fk_contato_associado FOREIGN KEY (idContato) REFERENCES contatos(idContato),
CONSTRAINT fk_associado_email FOREIGN KEY (idEmail) REFERENCES emailAssociado(idEmail)
);

CREATE TABLE enderecoAssociado(
idEndereco INT AUTO_INCREMENT NOT NULL,
logradouro VARCHAR(50) NOT NULL,
cidade VARCHAR(50) NOT NULL,
UF CHAR(2) NOT NULL,
numero VARCHAR(4) NOT NULL,
complemento VARCHAR(10) NULL,
bairro VARCHAR(30),
cep CHAR(8),
CONSTRAINT PRIMARY KEY (idEndereco)
);

CREATE TABLE contatos(
idContato INT AUTO_INCREMENT NOT NULL,
numero INT NOT NULL,
ddd CHAR(2).
CONSTRAINT PRIMARY KEY (idContato),
CONSTRAINT pk_tiposContatoTel_contatos FOREIGN KEY (idContato) REFERENCES tiposContatosTel(idTiposContatostel)
);

CREATE TABLE tiposContatosTel(
idTiposContatosTel INT AUTO_INCREMENT NOT NULL,
nomeContato VARCHAR(20),
CONSTRAINT PRIMARY KEY (idTiposContatosTel)
);

CREATE TABLE emailAssociado(
idEmail INT AUTO_INCREMENT NOT NULL,
email VARCHAR(50) NOT NULL,
CONSTRAINT PRIMARY KEY (idEmail)
);

CREATE TABLE emprestimos(
idEmprestimo INT AUTO_INCREMENT NOT NULL,
dataRetirada DATE NOT NULL,
dataPrazo DATE NOT NULL,
idFuncionario INT NOT NULL,
idAssociado INT NOT NULL,
CONSTRAINT PRIMARY KEY (idEmprestimo),
CONSTRAINT pk_funcionario_emprestimo FOREIGN KEY (idFuncionario) REFERENCES funcionarios(idFuncionario),
CONSTRAINT pf_associado_emprestimo FOREIGN KEY (idAssociado) REFERENCES associados(idAssociado)
);

CREATE TABLE emprestimosLivros(
idEmprestimo INT NOT NULL,
idLivro INT NOT NULL,
CONSTRAINT pk_emprestimos_livros PRIMARY KEY (idEmprestimo, idLivro)
);

CREATE TABLE multas(
    idMultas INT AUTO_INCREMENT NOT NULL,
    valor FLOAT(6,2),
    multa_existente TINYINT,
    multa_atrasada TINYINT,
    data_pagamento DATETIME,
    idEmprestimo INT NOT NULL,
    idLivro INT NOT NULL,
    CONSTRAINT PRIMARY KEY (idMultas),
    CONSTRAINT pk_emprestimo_multa FOREIGN KEY (idEmprestimo) REFERENCES emprestimos(idEmprestimo),
    CONSTRAINT pk_emprestimo_livro FOREIGN KEY (idLivros) REFERENCES livros(idLivro)
);