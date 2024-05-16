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
VALUES ('Suzanne Collins'),  
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

INSERT INTO associados (nomeAssociado, cpf) values ('Anna Sbrahma', '11045652840'),('Arthur Tiengo','20504598758'), 
('Allan Matias', '25687942642'),('José Robson','24647531548'),('Leticia Avolio','42658576631'), 
('Kailany Moraes','41325286675'),('Renato Gitson','21358478820'),('Samantha Carioca','20365228447'), 
('Marcelo Isidoro','32568545520'),('Edison Saudades','52658442020');

SELECT * FROM associados

INSERT INTO emails(email,idAssociado)
VALUES ('anabrahma@gmail.com', 1),('reiarthur2006@gmail.com',2),('allanMatias@gmail.com', 3),('JoséRobson2@gmail.com',4),
('LeticiaItalia@gmail.com', 5),('kaka2006@gmail.com',6),('github@gmail.com', 7),('samanthavulgoRJ@gmail.com',8),
('marcelolideranca@gmail.com', 9),('edinhosumido02@gmail.com',10);

SELECT * FROM emails

FUNCIONARIOS 

INSERT INTO funcionarios (nomeFuncionario, loginFuncionario, senhaFuncionario)  

VALUES 	('Caio Belky', 'Belky23', 'belkyc123'), 
			('Maria Silva', 'MaryS', 'maria2024'), 
			 ('Lais Silva', 'Lais', 'laiss123'); 

SELECT * FROM FUNCIONARIOS
			 