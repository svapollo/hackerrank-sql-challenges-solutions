-- ordena os estudante por grade, marca e nome
SELECT
    CASE
        WHEN g.grade < 8
        THEN NULL
        ELSE s.name
        END AS name,
        g.grade,
        s.marks
FROM students AS s
JOIN grades AS g
ON (s.marks >= g.min_mark AND s.marks <= g.max_mark)
ORDER BY
    g.grade DESC,
    CASE
        WHEN g.grade < 8
        THEN s.marks END ASC,
    s.name ASC;