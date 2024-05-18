/*filtos-Ordenação-Agrupamentos*/
/*trazer o nome e o cpf de todos os associados qie morem no estado de SP*/

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
ORDER BY 'Total de associados' desc


SELECT cidade, COUNT(idAssociado) AS 'Total de Assosiados' FROM enderecos
WHERE cidade<>'Guarujá'/*para excluir Guarujá*/
GROUP BY cidade/*para agrupar*/
HAVING COUNT(idAssociado) >=4/*filtro depois de agrupar*/

WHERE cidade not'Guarujá'/*outro modo de excluir*/


SELECT * FROM enderecos
