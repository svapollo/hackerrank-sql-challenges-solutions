-- Encontrar o inicio e fim de um projeto considerando
-- a data de inicio e fim de cada tarefa
-- Utilizando técnica de gaps and islands

WITH cte AS(
    SELECT start_date,
        end_date,
        DATE_SUB(start_date, INTERVAL ROW_NUMBER() OVER  (ORDER BY start_date) DAY) AS groupby_col
    FROM projects
)

SELECT MIN(start_date) AS start, MAX(end_date) AS end
FROM cte
GROUP BY cte.groupby_col
ORDER BY
    DATEDIFF(end, start),
    start;