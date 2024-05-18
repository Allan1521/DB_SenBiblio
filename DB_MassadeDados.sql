/*massa de dados*/
INSERT INTO editoras (nomeEditora) 

VALUES ('Érica'); 

INSERT INTO editoras (nomeEditora) 

VALUES ('Person'); 

INSERT INTO editoras (nomeEditora) 

VALUES ('Atlas'); 

INSERT INTO editoras (nomeEditora) 

VALUES ('FTD'); 

/* FORMA REDUZIDA DE INSERT

INSERT INTO editoras (nomeEditora)
VALUES 	('Érica'),
			('Person'),
			('Atlas'),
			('FTD'); */

SELECT * FROM editoras

GENERO 

INSERT INTO genero(nome) VALUES('Romance'); 

INSERT INTO genero(nome) VALUES('Drama'); 

INSERT INTO genero(nome) VALUES('Tecnologia'); 

INSERT INTO genero(nome) VALUES('Fantasia'); 

INSERT INTO genero(nome) VALUES('Biografia'); 

SELECT * FROM genero

INSERT INTO autores(nomeAutor)  
VALUES 	('Suzanne Collins'),  
			('Mauricio de Sousa'),  
			('Stephenie Meyer');

SELECT * FROM autores


LIVROS 
 
SELECT * FROM livros; 


INSERT INTO livros (nome, sinopse, isbn, qtdPaginas, edicao, idEditora) 

VALUES ('Java para Leigos', 'do basico ao avançado da linguagem', '9028017029981', 150, '2a', 3), 
('A cartuxa de Parma', '', '4921029442771', 325, '1a', 1),
('A casa das marés', '', '3321059442771', 256, '1a', 1), 
('PHP avançado', 'avançado da linguagem PHP', '4923029562771', 475, '3a', 2),
('A hospedeira', '', '8923029062779', 280, '7a', 4), 
('Ariadne', 'Igual a Irene Idler de S. Holmes', '9923029422779', 512, '1a', 2), 
('A distância entre nós', '', '9927008422779', 200, '5a', 3), 
('Bill Gates', 'Historia do Bill Gates', '3783022422779', 156, '1a', 4), 
('Criador do Linux', 'Historia do Linus Torvalds', '37830213224799', 159, '1a', 3), 
('A cantiga dos pássaros e das serpentes', 'aves e cobras?', '76829113224799', 156, '3a', 2); 

Associados

INSERT INTO associados (nomeAssociado, cpf) VALUES 
('Anna Sbrahma', '11045652840'),
('Arthur Tiengo','20504598758'), 
('Allan Matias', '25687942642'),
('José Robson','24647531548'),
('Leticia Avolio','42658576631'), 
('Kailany Moraes','41325286675'),
('Renato Gitson','21358478820'),
('Samantha Carioca','20365228447'), 
('Marcelo Isidoro','32568545520'),
('Edison Saudades','52658442020');

SELECT * FROM associados

INSERT INTO emails(email,idAssociado)
VALUES ('anabrahma@gmail.com', 1),
('reiarthur2006@gmail.com',2),
('allanMatias@gmail.com', 3),
('JoséRobson2@gmail.com',4),
('LeticiaItalia@gmail.com', 5),
('kaka2006@gmail.com',6),
('github@gmail.com', 7),
('samanthavulgoRJ@gmail.com',8),
('marcelolideranca@gmail.com', 9),
('edinhosumido02@gmail.com',10);

SELECT * FROM emails

FUNCIONARIOS 

INSERT INTO funcionarios (nomeFuncionario, loginFuncionario, senhaFuncionario)  

VALUES 	('Caio Belky', 'Belky23', 'belkyc123'), 
			('Maria Silva', 'MaryS', 'maria2024'), 
			('Lais Silva', 'Lais', 'laiss123'); 

SELECT * FROM FUNCIONARIOS
			 
Emprestimos

INSERT INTO emprestimos (dataRetirada, dataPrazo, idFuncionario, idAssociado) 
VALUES 	('20-05-06', '20-05-10', '1', '2'),
 			('22-08-01', '22-08-07', '2', '4'),
 			('21-07-01', '22-07-07', '2', '5'),
 			('22-08-01', '22-08-07', '1', '4'),
 			('23-04-05', '23-04-12', '3', '6'); 

 SELECT * FROM Emprestimos
 
 emprestimoslivros 
 
 INSERT INTO emprestimoslivros (idEmprestimo, idLivros, dataDevolucaoEfetiva)
 VALUES ('1', '5', '24-01-11'),
		 ('2', '10', '20-05-10'),
		 ('3', '8', '22-08-07'),
		 ('4', '1', '23-04-12'),
		 ('5', '4', '24-02-09');
 
SELECT * FROM emprestimoslivros

MULTAS 

INSERT INTO multas (valor, statusMulta, idEmprestimo, idLivros) 
VALUES 
(5.00, 1, 1, 5), 
(2.00, 0, 2, 1), 
(1.00, 1, 3, 4), 
(3.00, 0, 4, 8), 
(4.25, 1, 5, 10); 


SELECT * FROM multas


INSERT INTO livrosgeneros(idLivro, idGenero) 
VALUES
(1, 3),
(2, 2),
(3, 3),
(4, 4),
(5, 2),
(6, 5),
(7, 1),
(8, 5),
(9, 3),
(10,4);

SELECT * FROM livrosgeneros
 
 enderecos
 
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

 
 
 
 
 
 