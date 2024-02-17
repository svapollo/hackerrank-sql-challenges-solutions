-- Some o maior valor de score em cada desafio para cada hacker
WITH cte_max_score AS (
    SELECT hacker_id, challenge_id, MAX(score) AS max_score
    FROM submissions
    GROUP BY hacker_id, challenge_id
)

SELECT h.hacker_id, h.name, SUM(cte.max_score) AS sum_score
FROM hackers AS h
JOIN cte_max_score AS cte
ON h.hacker_id = cte.hacker_id
GROUP BY h.hacker_id, h.name
HAVING SUM(cte.max_score) > 0
ORDER BY sum_score DESC, h.hacker_id ASC;