-- nome de cidades que não começam e não terminam com vogais
SELECT DISTINCT(city) AS city
FROM station
WHERE (city NOT REGEXP '^[aeiou]') AND (city NOT REGEXP '[aeiou]$');