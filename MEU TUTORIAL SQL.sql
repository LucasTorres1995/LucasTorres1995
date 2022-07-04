SELECT -- TABELA
FROM -- PASTA (LOCAL)


-- COUNT SELECIONA UM VALOR (NO CASO, UMA COLUNA ESPECIFICA)

SELECT COUNT (*)  
FROM TABELA


------------ * SELECIONA TUDO

SELECT *
FROM person.Person;

------------ TITLE 
SELECT title 
FROM person.person;

------------ --//busca endereço de email//
SELECT *
FROM person.EmailAddress; 

-------------- //busca nome e sobrenome//

SELECT firstName,lastName
FROM person.person; 

-------------- DISTINCT //descarta exibição de nomes iguais//
SELECT DISTINCT FirstName
FROM person.person;

------------
SELECT DISTINCT LastName
FROM person.person; 


-------------- // where comparativo//
SELECT *
FROM production.Product
WHERE color = 'blue' or color = 'red';  -- // where comparativo//


SELECT Name
FROM Production.Product
WHERE Weight > 500 and Weight <700;


--------------encontrar pessoas casadas e assalariadas
SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 'm' and salariedFlag = 1


-------------- foi localizado nome e sobrenome
SELECT *
FROM Person.Person
WHERE FirstName = 'peter' and LastName = 'krebs' 

-------------- foi localizado o id para chegar ao email

SELECT *
FROM Person.EmailAddress
WHERE BusinessEntityID = 26 


---------COUNT

SELECT count(*)
FROM person.Person

-------TOP
SELECT TOP 10 *
FROM tabela

-------- order by  (ordena os resultados de forma crescente ou decrescente)
SELECT coluna1,coluna2
FROM tabela
ORDER BY coluna1 asc/desc --- asc crescente desc decrescente

---------- between usado para encontrar entre o valor minimo e maximo
valor BETWEEN minimo AND maximo

SELECT *
FROM production.Product
WHERE listprice BETWEEN 1000 and 2000;

--- NOT BETWEEN (BUSCA VALORES QUE NAO ESTÃO ENTRE VALORES SELECIONADOS)

SELECT *
FROM production.Product
WHERE listprice NOT BETWEEN 1000 AND 2000:
------------------- ORDER BY + BETWEEN + NOT

SELECT *
FROM production.Product
WHERE listprice NOT BETWEEN 1000 AND 2000:
ORDER BY hiredate

SELECT *
FROM production.Product
WHERE listprice BETWEEN 1000 AND 2000:
ORDER BY hiredate

------------------- IN (encontra valores de forma curta e rapida)
------------------- NESTE EXEMPLO BUSCAMOS PESSOAS COM ID 2,7,13
SELECT *
FROM Person.Person
WHERE BusinessEntityID IN (2,7,13)

------------------ % USADO PARA BUSCAR INFORMAÇÕES DA QUAIS NÃO IMPORTAM O VALOR FINAL
------------------ NESTE EXEMPLO PRECISAVA ENCONTRAR UMA PESSOA COM QUE O NOME COMEÇAVA COM OVI MAS QUE NAO ERA RECORDADO O FINAL
------------------ O COMANDO EFETUARÁ A BUSCA DE QUALQUER PESSOA QUE O NOME COMECE COM OVI NÃO IMPORTANDO O FINAL RESTANTE
------------------ PODENDO TAMBEM SER USADO NO INICIO (%OVI) E EM AMBOS (%OVI%)
------------------ TAMBEM PODE SER USADO O (_) ELE LIMITA A UM CARACTER. EX: BUSCA POR NOME ARRON (%RO_) O (_) SÓ PODERA SER SUBSTITUIDO POR UM CARACTER ENQUANTO O (%) NAO BUSCARA TUDO O QUE VIER ANTES
SELECT *
FROM person.person
WHERE FirstName like 'ovi%'

------------------- COMANDO UTILIZADO PARA SABER CIDADES UNICAS CADASTRADAS 

SELECT count (distinct(city))
FROM Person.Address

-------------------   FUNÇÕES PRINCIPAIS DE SQL (MIN, MAX, SUM, AVG)
------------------- AGREGAM OU COMBINAM DADOS DE UMA TABELA EM 1 SÓ RESULTADO

SUM -- SOMA
MIN -- MINIMO TOTAL
MAX -- MAXIMO TOTAL
AVG -- MEDIA TOTAL
AS -- NOMEIA A TABELA

------------------ GROUP BY
