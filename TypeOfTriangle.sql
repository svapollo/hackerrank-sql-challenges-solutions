-- classifica os triangulos de acordo com o tamanho dos lados
SELECT
    CASE
        WHEN A+B <= C OR A+C <= B OR B+C <= A THEN 'Not A Triangle'
        WHEN A = B AND B = C THEN 'Equilateral'
        WHEN (A = B AND B <> C) OR (A <> B AND B = C) OR (A = C AND C <> B) THEN 'Isosceles'
        ELSE 'Scalene'
    END triangule_type
FROM triangles;

