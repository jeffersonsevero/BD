
SELECT DISTINCT t.fcpf
FROM trabalha_em t
WHERE (t.pnr, t.horas) IN (
	
	SELECT t.pnr, t.horas
	FROM funcionario f, trabalha_em t
	WHERE f.cpf = t.fcpf AND f.cpf = '12345678966'


);



SELECT t.pnr, t.horas
FROM funcionario f, trabalha_em t
WHERE f.cpf = t.fcpf AND f.cpf = '12345678966'





--> Exibir os nomes dos funcionarios cujo salário é maior que o salário de todos os funcionarios
--> do departamento 5




SELECT f.pnome
FROM funcionario f
WHERE (f.salario) >
	(

	SELECT max(f.salario)
	FROM funcionario f
	WHERE f.dnr = 5
	
	);



--> Obter o nome de cada funcionário que tem um dependente com o mesmo sexo.

SELECT f.pnome
FROM funcionario f, dependente d
WHERE f.cpf = d.fcpf AND f.sexo = d.sexo

--> Listar os nomes dos gerentes que possuem pelo menos um dependente

SELECT DISTINCT f.pnome
FROM departamento d, dependente de, funcionario f
WHERE d.cpf_gerente = de.fcpf AND de.nome_dependente IS NOT NULL AND f.cpf = d.cpf_gerente




--> Soma de todos os salarios, salário maximo, salário mínimo, e média

SELECT sum(f.salario), max(f.salario), min(f.salario), avg(f.salario)
FROM funcionario f 


--> Soma dos salários de todos os funcionários de cada departamento, bem como salario maximo e minimo
--> e a média salarial de cada departamento

SELECT f.dnr, sum(f.salario) as soma, max(f.salario) as max, min(f.salario) as min, avg(f.salario) as media
FROM funcionario f
GROUP BY f.dnr


-- Numero total de funcionarios da empresa

SELECT count(*)
FROM funcionario f

-- Numero de funcionarios de cada departamento

SELECT f.dnr as departamento, count(f.pnome) as numero_funcionarios
FROM funcionario f
GROUP BY f.dnr

-- Numero de valores distintos de salário

SELECT count(DISTINCT f.salario) as numero_salarios_distintos
FROM funcionario f

-- Nome de todos os funcionarios que possuem  2 ou mais dependentes

SELECT f.pnome
FROM funcionario f, dependente d
WHERE f.cpf = d.fcpf 
GROUP BY f.pnome
HAVING count(f.cpf) >= 2





-- Numero do departamento, numero de funcionarios no departamento, salario medio do departamento

SELECT f.dnr, count(f.pnome) as n_funcionarios, avg(f.salario) as media_salarial
FROM funcionario f
GROUP BY f.dnr



-- Listar o numero do projeto, o nome do projeto e o numero de funcionarios que trabalham nesse projeto
-- para cada projeto

SELECT  p.projnumero, p.projnome, count(p.dnum) as n_funcionarios
FROM projeto p, funcionario f
WHERE p.dnum = f.dnr
GROUP BY p.dnum, p.projnumero, p.projnome
ORDER BY p.projnumero

















