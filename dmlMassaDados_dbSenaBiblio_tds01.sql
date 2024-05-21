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
HAVING COUNT(autores.idAutor)>2


GROUP BY (idlivros)

SELECT * FROM autores
SELECT * FROM autoreslivros
SELECT * FROM livros
SELECT * FROM autoreslivros
SELECT * FROM 


/* Exercício 3 ) Relatório de quantos livros cada autor escreveu
levando em conta apenas os autores que escreveram mais de 2
livros. Tudo isto em ordem alfabética por nome do autor*/