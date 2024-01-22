-- Encontre o nome de todos os alunos que possuem notas maiores que 75.
-- Ordene os resultados pelo final do nome e, em seguida, pelo id.
-- Se dois ou mais alunos tiverem o mesmo final de nome,
-- ordene-os por id crescente.
SELECT name
FROM students
WHERE marks > 75
ORDER BY RIGHT(name, 3), id;