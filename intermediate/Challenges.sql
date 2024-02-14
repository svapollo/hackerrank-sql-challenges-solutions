-- Selecionar o hacker_id, name e total_challenge dos hackers
-- ordenando pelo maior numero de desafios e pelo hacker_id
-- caso mais de um aluno tenha o mesmo numero de desafios e
-- e seja menor do que o maior número de desafios
-- remova do resultado

WITH cte_total_challenge AS (
    SELECT hacker_id, COUNT(challenge_id) AS total_challenge
    FROM challenges
    GROUP BY hacker_id
)

SELECT h.hacker_id, h.name, c.total_challenge
FROM hackers AS h
JOIN cte_total_challenge AS c
ON h.hacker_id = c.hacker_id
WHERE c.total_challenge NOT IN (
    SELECT total_challenge
    FROM cte_total_challenge
    GROUP BY total_challenge
    HAVING COUNT(*) > 1 AND total_challenge < (
        SELECT MAX(total_challenge)
        FROM cte_total_challenge
    )
)
ORDER BY c.total_challenge DESC, h.hacker_id ASC;