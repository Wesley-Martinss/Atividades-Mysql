-- 1. Consultar pelo nome, sexo, data de nascimento e endereço completo de todos funcionários da empresa.
SELECT NOME, SEXO,DATANASC,RUA, NUMERO, COMPL, BAIRRO, CIDADE, ESTADO, CEP
FROM FUNCIONARIO;

-- 2. Consultar pelo nome, data de nascimento e salário de todos os funcionários do sexo feminino,
-- ordenando os resultados do maior para o menor salário
SELECT NOME,DATANASC, SALARIO
FROM FUNCIONARIO
WHERE SEXO = 'F'
ORDER BY SALARIO DESC;


-- 3. Recuperar os locais de todos os projetos, eliminando valores duplicados
SELECT distinct PROJLOCAL,PROJNUMERO
FROM PROJETO;


-- 4. Recuperar nome, data de nascimento e salário dos funcionários que não trabalham no departamento 4
SELECT NOME,DATANASC,SALARIO
FROM FUNCIONARIO
WHERE DNUMERO <> 4;


-- 5. Consultar nome e data de nascimento dos funcionários
-- que ganham salário menor que 5000 e sejam do sexo feminino.
SELECT NOME,DATANASC
FROM FUNCIONARIO
WHERE SALARIO > 5000;


-- 6. Recuperar nome, data de nascimento e endereço
-- completo dos funcionários cujo nome comece com a letra A.
SELECT NOME,DATANASC,RUA, NUMERO, COMPL, BAIRRO, CIDADE, ESTADO, CEP
FROM FUNCIONARIO
WHERE NOME LIKE 'a%';


-- 7. Recuperar nome e endereço completo de funcionários que morem em avenidas
SELECT NOME,DATANASC,RUA, NUMERO, COMPL, BAIRRO, CIDADE, ESTADO, CEP
FROM FUNCIONARIO
WHERE RUA LIKE 'av%';


-- 8. Recuperar nome, sexo e data de nascimento de funcionários
-- que nasceram entre as datas de '1960-01-01' e '1960-01-01'.
SELECT NOME,SEXO,DATANASC
FROM FUNCIONARIO
WHERE DATANASC BETWEEN '1960-01-01' AND '1969-12-31';


-- 9. Consultar nome, salário e estimativa de salário reajustado
-- de todos os funcionários, sendo que o reajuste é um aumento de 5%.
SELECT NOME, SALARIO, SALARIO * 1.05 AS SALARIO_REAJUSTADO
FROM FUNCIONARIO;

-- 10. Recuperar cpf dos funcionários que trabalham mais de 10 horas no projeto de número 3.
SELECT CPF
FROM ATRIBUICAO
WHERE PROJNUMERO = 3 AND HORAS > 10;

--  11. Recuperar nome e salário dos funcionários que ganham salário entre 4000 e 6000.
SELECT NOME,SALARIO
FROM FUNCIONARIO
WHERE SALARIO BETWEEN '4000' AND '6000';

--  12. Consultar cpf dos funcionários que trabalham 
-- nos projetos de número 1, 2 ou 3, eliminando valores duplicados.
SELECT DISTINCT CPF
FROM ATRIBUICAO
WHERE PROJNUMERO IN (1, 2, 3);

-- 13. Recuperar a menor e a maior carga horária de trabalho em projetos.
SELECT MIN(HORAS) AS MENOR_CARGA, MAX(HORAS) AS MAIOR_CARGA
FROM ATRIBUICAO;
 
-- 14. Consultar a soma total dos salários dos funcionários do departamento 4.
SELECT SUM(SALARIO) AS TOTAL_SALARIOS
FROM FUNCIONARIO
WHERE DNUMERO = 4;	


-- 15. Consultar a média de salário dos funcionários para cada número de departamento.
SELECT DNUMERO, AVG(SALARIO) AS MEDIA_SALARIO
FROM FUNCIONARIO
GROUP BY DNUMERO;


-- 16. Recuperar a quantidade de projetos atribuídos ao funcionário com cpf = '1234'.
SELECT COUNT(*) AS QTD_PROJETOS
FROM ATRIBUICAO
WHERE CPF = '1234';


-- 17. Recuperar a quantidade de projetos atribuídos por cpf de funcionário.
SELECT CPF, COUNT(*) AS QTD_PROJETOS
FROM ATRIBUICAO
GROUP BY CPF;


-- 18. Recuperar a média de salário dos funcionários que moram na cidade de São Paulo. 
SELECT AVG(SALARIO) AS MEDIA_SALARIO
FROM FUNCIONARIO
WHERE CIDADE = 'São Paulo';


-- 19. Recuperar a média de salário dos funcionários por cidade. 
SELECT CIDADE, AVG(SALARIO) AS MEDIA_SALARIO
FROM FUNCIONARIO
GROUP BY CIDADE;

-- 20. Consultar nome e idade de todos funcionários
SELECT NOME,
       TIMESTAMPDIFF(YEAR, DATANASC, CURDATE()) AS IDADE
FROM FUNCIONARIO;


