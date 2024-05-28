/*filtos-Ordenação-Agrupamentos*/
/*trazer o nome e o cpf de todos os associados que morem no estado de SP*/

SELECT a.nomeAssociado, a.cpf, e.cidade FROM associados AS a
INNER JOIN 
enderecos AS e
ON a.idAssociado=e.idAssociado
WHERE e.cidade='São vicente'

ORDER BY a.nomeAssociado, e.cidade, DESC

SELECT * FROM associados;
SELECT * FROM enderecos

/*Funções de agregação*/
/*
Count - contar
Sum - somar
Avg - extrair a média
Min - menor valor
Max - maior valor


GROUP BY - faz o agrupamento específico*/

SELECT COUNT(idAssociado) AS 'Total de Assosiados' FROM associados /*agrupando*/

SELECT cidade, COUNT(idAssociado) AS 'Total de Assosiados' FROM enderecos /*agrupando e agregando*/
GROUP BY cidade


SELECT cidade, COUNT(idAssociado) AS 'Total de Assosiados' FROM enderecos /*agrupando,agregando e filtrado*/
GROUP BY cidade
HAVING COUNT(idAssociado)>=4

SELECT cidade, COUNT(idAssociado) AS 'Total de Assosiados' FROM enderecos /*agrupando,agregando , filtrado e ordernado*/
GROUP BY cidade
HAVING COUNT(idAssociado)>=4
ORDER BY 'Total de associados'     



SELECT cidade, COUNT(idAssociado) AS 'Total de Assosiados' FROM enderecos
JOIN /*junta /liga informações*/
WHERE cidade<>'Guarujá'/*para excluir Guarujá*/
GROUP BY cidade /*para agrupar*/
HAVING COUNT(idAssociado) >=4/*filtro depois de agrupar*/
SELECT distint /*Selecte distint seleciona de forma distinta*/
WHERE cidade not'Guarujá'/*outro modo de excluir*/
AS /* pra dar apelido o qur vai facilitar na escrita na hora de consultar*/
/*Selecte distint seleciona de forma distinta*/
SELECT distint cidade FROM enderecos

SELECT SUM(valor) AS 'total em multas (R$)' FROM multas /* Podemoes consultar os valores das multas  */
SELECT MAX(valor) AS 'maior valor das multas' FROM multas



/* Exercício 1) O valor, o nome do associado e os contatos(e-mail, telefone) do associado que pagou a maior multa. */

SELECT nomeassociado, ddd, numero, email, valor FROM multas 
INNER JOIN emprestimos 
ON multas.idEmprestimo = emprestimos.idEmprestimo 
INNER JOIN associados
ON associados.idassociado = emprestimos.idassociado 
INNER JOIN emails
ON associados.idassociado = emails.idassociado 
INNER JOIN contatostelefonicos
ON associados. idassociado =  contatostelefonicos.idassociado 
WHERE  valor = (SELECT max(valor) FROM multas)


SELECT valor FROM multas LIMIT 3

 
/*Exercício 2) Todos livros que possuam dois autores ou mais Dados do Lilvro : nome do livro, qtd paginas, editora*/

SELECT nome,qtdPaginas, editoras.nomeEditora FROM livros
INNER JOIN autoreslivros
ON livros.idLivros = autoreslivros.idlivros
INNER JOIN autores
ON autores.idAutor = autoreslivros.idAutor
INNER JOIN editoras
ON editoras.idEditora = livros.idEditora
GROUP BY livros.idlivros
HAVING COUNT(autoreslivros.idAutor)>2


GROUP BY (idlivros)

/* Exercício 3 ) Relatório de quantos livros cada autor escreveu
levando em conta apenas os autores que escreveram mais de 2
livros. Tudo isto em ordem alfabética por nome do autor*/


/*Relatório de quantos livros cada autor escreveu
levando em conta apenas os autores que escreveram mais de 2
livros. Tudo isto em ordem alfabética por nome do autor*/
SELECT * FROM livros
SELECT * FROM autores

COUNT(autoreslivros.idautor)
 
/* Exercicio: Trazer quantos emprestimos foram realizados por data*/
 
SELECT DATE(Retirada), COUNT(idEmprestimo)
AS 'Total Emprestimos'
FROM emprestimos 
GROUP BY DATE(Retirada)
ORDER BY Retirada DESC 


/*Sumiu um livro na biblioteca e precisamos saber o histórico
dos emprestimos deste livro. 
A query deve trazer o nome de quem o emprestou, a data, o nome 
do funcionario. Escolha um livro para servir como filtro da busca.
O resultado deve ser mostrado da data mais atual para a mais antiga*/


CREATE VIEW vw_EmprestimosPorFuncionarioEAssociado AS 
SELECT nomefuncionario, Retirada,Devolucao, nomeAssociado
FROM funcionarios
INNER JOIN emprestimos
ON funcionarios.IdFuncionario = emprestimos.idFuncionario
INNER JOIN associados
ON associados.idAssociado = emprestimos.idFuncionario
INNER JOIN emprestimoslivros
ON emprestimoslivros.idEmprestimo = emprestimos.idEmprestimo
INNER JOIN livros
ON emprestimoslivros.idLivro = livros.idLivro
WHERE nome = 'A cantiga dos passáros e das serpentes'
ORDER BY Retirada DESC



CREATE VIEW vw_EmprestimosPorFuncionarioEAssociado AS 
SELECT nomefuncionario, Retirada,Devolucao, nomeAssociado
FROM funcionarios
INNER JOIN emprestimos
ON funcionarios.IdFuncionario = emprestimos.idFuncionario
INNER JOIN associados
ON associados.idAssociado = emprestimos.idFuncionario
INNER JOIN emprestimoslivros
ON emprestimoslivros.idEmprestimo = emprestimos.idEmprestimo
INNER JOIN livros
ON emprestimoslivros.idLivro = livros.idLivro


SELECT * FROM vw_emprestimosporfuncionarioeassociado
WHERE nomeFuncionario='Maria Silva'


/*Criar uma view que traga o nome , o cel eo email dos associados 
Nome da View-Associados*/

CREATE VIEW vw_AssociadoContatos as
SELECT nomeAssociado, DDD, numero, emailAsso
FROM associados 
INNER JOIN contatostelefonicos
ON associados.idAssociado = contatostelefonicos.idAssociado
INNER JOIN emails 
ON emails.idAssociado = associados.idAssociado
 
SELECT * FROM vw_AssociadoContatos






/*Stores Procedures - Procedimentos Armazenados*/
/*Criar uma procedure para inserir uma editora*/

CREATE PROCEDURE pi_Editoras/*pi_ é uma boa prática*/
(IN nome VARCHAR(30))
INSERT INTO editoras(nomeeditoras)
VALUES(nome);

DROP PROCEDURE pi_Editoras
db_senabiblio

CREATE PROCEDURE pi_Editoras/*pi_ é uma boa prática*/
(IN nome VARCHAR(30))
INSERT INTO editoras(nomeeditoras)
VALUES(nome);

CALL pi_Editoras ('Abril')

DELETE FROM editoras WHERE ideditora>8 /*para excluir qdo for inserido mais de uma vez*/

SELECT * FROM editoras

/*pesquisar sobre SQL Injection*/


/*Criar uma procedure que traga quantos empréstimos foram 
realizados por determinado associado*/

CREATE PROCEDURE pi_Emprestimos
INSERT INTO Emprestimos(idEmprestimo)
VALUES(nome);

SELECT * FROM emprestimos






/*Criar uma produce que traga quantos empréstimos
 foram realizados por determinado associado por nome*/
 
 
 
 
 
 
 

