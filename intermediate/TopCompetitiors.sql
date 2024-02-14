-- seleciona os hackers que fizeram mais de uma submissão com
-- a pontuação máxima
SELECT h.hacker_id, h.name
FROM submissions AS s
JOIN hackers AS h
ON s.hacker_id = h.hacker_id
JOIN challenges AS c
ON s.challenge_id = c.challenge_id
JOIN difficulty AS d
ON c.difficulty_level = d.difficulty_level
WHERE s.score = d.score
GROUP BY h.hacker_id, h.name
HAVING COUNT(s.score) > 1
ORDER BY
    COUNT(c.challenge_id) DESC,
    h.hacker_id ASC;