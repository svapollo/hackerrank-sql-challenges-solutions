-- selecione os estudantes que os melhores amigos tem um salário maior
-- do que o deles, ordenando pelo salário do melhor amigo
SELECT s.name
FROM students AS s
JOIN friends f
ON s.id = f.id
JOIN packages AS pks
ON f.id = pks.id
JOIN packages AS pkf
ON f.friend_id = pkf.id
WHERE pkf.salary > pks.salary
ORDER BY pkf.salary;