-- nomes dos empregados com salário superior a 2000 e 
-- meses de trabalho inferior a 10, ordenados por id de empregado
SELECT name
FROM employee
WHERE salary > 2000 AND months < 10
ORDER BY employee_id;