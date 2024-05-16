/* apagar as tabelas
DROP TABLE livrosgeneros;
DROP TABLE emprestimoslivros;
DROP TABLE autoreslivros;
DROP TABLE livros;
DROP TABLE editoras;
DROP TABLE multas;
DROP TABLE emprestimos;
DROP TABLE funcionarios;
DROP TABLE associados;
DROP TABLE anderecoassociados;
DROP TABLE emailsassociados;
DROP TABLE contatos;
DROP TABLE tiposcantatostel;
DROP TABLE autores;
DROP TABLE generos;
*/


CREATE TABLE Autores(
idAutor INT AUTO_INCREMENT NOT NULL,
nomeAutor VARCHAR(50) NOT NULL,
CONSTRAINT PRIMARY KEY(idAutor)
);



CREATE TABLE Editoras(
idEditora INT AUTO_INCREMENT NOT NULL,
nomeEditora VARCHAR(30) NOT NULL,
CONSTRAINT PRIMARY KEY(idEditora)
);

SELECT * FROM editoras


CREATE TABLE Livros(
idLivros INT AUTO_INCREMENT NOT NULL,
nome VARCHAR(50) NOT NULL,
sinopse VARCHAR(150),
isbn CHAR(13) NOT NULL,
qtdPaginas INT NOT NULL,
edicao INT NOT NULL,
idEditora INT NOT NULL,
CONSTRAINT PRIMARY KEY(idLivros),
CONSTRAINT fk_livros_editora FOREIGN KEY(idEditora)
REFERENCES editoras(idEditora)
);

SELECT * FROM livros

/*para comentários*/

CREATE TABLE autoresLivros(
idAutor INT NOT NULL,
idLivros INT NOT NULL,
CONSTRAINT PRIMARY KEY (idAutor, idlivros),
CONSTRAINT fk_autoresLivros_Autores FOREIGN KEY (idAutor)
REFERENCES Livros(idlivros)
);

SELECT * FROM autoresLivros

CREATE TABLE Generos(
idGenero INT AUTO_INCREMENT NOT NULL, 
nomeGeneros VARCHAR (20) NOT NULL,
CONSTRAINT PRIMARY KEY (idGenero)
);

CREATE TABLE livrosGeneros(
idlivros INT NOT NULL,
idGenero INT NOT NULL,
CONSTRAINT PRIMARY KEY (idlivros,idGenero),
CONSTRAINT fk_livrosGeneros_Generos FOREIGN KEY (idGenero)
REFERENCES Generos(idGenero),
CONSTRAINT fk_livrosgenros_Livros FOREIGN KEY (idlivros)
REFERENCES livros(idlivros)
);

CREATE TABLE associados (
idAssociado INT AUTO_INCREMENT NOT NULL,
nomeAssociado VARCHAR(50) NOT NULL,
cpf VARCHAR(11) NOT NULL,
CONSTRAINT PRIMARY KEY (idAssociado)
);

CREATE TABLE enderecos(
idEndereco INT AUTO_INCREMENT NOT NULL,
logradouro VARCHAR(50) NOT NULL,
cidade VARCHAR(50) NOT NULL,
UF CHAR(2) NOT NULL,
numero VARCHAR(4) NOT NULL,
complemento VARCHAR(10) NULL,
bairro VARCHAR(30),
cep CHAR(8) NOT NULL,
idAssociado INT NOT NULL,
CONSTRAINT PRIMARY KEY (idEndereco),
CONSTRAINT FK_enderecos_associados FOREIGN KEY (idAssociado)
REFERENCES Associados(idAssociado)
);

CREATE TABLE emails(
idEmail INT AUTO_INCREMENT NOT NULL,
email VARCHAR(50) NOT NULL,
idAssociado INT NOT NULL,
CONSTRAINT PRIMARY KEY (idEmail),
CONSTRAINT FK_emails_associados FOREIGN KEY (idAssociado)
REFERENCES Associados(idAssociado)
);

CREATE TABLE tiposContatos(
idTipoContato INT AUTO_INCREMENT NOT NULL,
nomeContato VARCHAR(20),
idAssociados INT NOT NULL, 
idTiposContatos INT NOT NULL,
CONSTRAINT PRIMARY KEY (idTipoContato)
);


CREATE TABLE contatostelefonicos(
idContatoTelefonico INT AUTO_INCREMENT NOT NULL,
numero VARCHAR(9) NOT NULL,
ddd CHAR(2),
idAssociado INT NOT NULL,
idTipoContato INT NOT NULL,
CONSTRAINT PRIMARY KEY (idContatoTelefonico),
CONSTRAINT fk_contatosTelefonicos_tiposContatos FOREIGN KEY (idTipoContato)
REFERENCES tiposContatos (idTipoContato),
CONSTRAINT fk_contatosTelefonicos_associados FOREIGN KEY (idAssociado)
REFERENCES Associados (idAssociado)
);

CREATE TABLE funcionarios (
idFuncionario INT AUTO_INCREMENT NOT NULL,
nomeFuncionario VARCHAR(50) NOT NULL,
loginFuncionario VARCHAR(50) NOT NULL,
senhaFuncionario VARCHAR(50) NOT NULL,
CONSTRAINT PRIMARY KEY (idFuncionario)
);

CREATE TABLE EmprestimosLivros(
idEmprestimo INT NOT NULL,
idLivros INT NOT NULL,
dataDevolucaoEfetiva DATETIME NOT NULL,
CONSTRAINT pk_EmprestimosLivros PRIMARY KEY (idEmprestimo, idLivros),
CONSTRAINT fk_EmprestimosLivros_Emprestimo FOREIGN KEY (idEmprestimo) 
REFERENCES emprestimos(idEmprestimo),
CONSTRAINT fk_EmprestimosLivros_Livros FOREIGN KEY (idLivros) 
REFERENCES livros(idLivros)
);

CREATE TABLE emprestimos(
idEmprestimo INT AUTO_INCREMENT NOT NULL,
dataRetirada DATE NOT NULL,
dataPrazo DATE NOT NULL,
idFuncionario INT NOT NULL, /* COLUNA QUE ARMANEZA A CHAVE*/
idAssociado INT NOT NULL, 
CONSTRAINT PRIMARY KEY (IdEmprestimo),
CONSTRAINT pk_emprestimos_funcionarios FOREIGN KEY (idFuncionario) REFERENCES funcionarios (idFuncionario),
CONSTRAINT pk_emprestimo_associado FOREIGN KEY (idAssociado) REFERENCES associados(idAssociado)
);

CREATE TABLE multas(
idMulta INT NOT NULL AUTO_INCREMENT,
statusMulta BOOLEAN NOT NULL, 
valor FLOAT(6,2) NOT NULL,
dataPagamento DATETIME,
idEmprestimo INT NOT NULL,
idLivros INT NOT NULL,
CONSTRAINT PRIMARY KEY (idMulta),
CONSTRAINT fk_Multas_emprestimo_EmprestimosLivros FOREIGN KEY (idEmprestimo)
REFERENCES EmprestimosLivros(idEmprestimo),
CONSTRAINT fk_Multas_livros_EmprestimosLivros FOREIGN KEY (idLivros)
REFERENCES EmprestimosLivros(idLivros)
);

CREATE TABLE Genero(
idGenero INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(20),
CONSTRAINT PRIMARY KEY (idGenero)
);
SELECT * FROM Genero


CREATE TABLE livrosGeneros (

idGenero INT NOT NULL,

idLivro INT NOT NULL,

CONSTRAINT pk_LivrosGeneros PRIMARY KEY (idGenero, idLivro),

CONSTRAINT fk_LivrosGeneros_Generos FOREIGN KEY (idGenero) 

REFERENCES Genero(idGenero),

CONSTRAINT fk_LivrosGeneros_Livros FOREIGN KEY (idLivro) 

REFERENCES livros(idLivros)

);

SHOW TABLES 






