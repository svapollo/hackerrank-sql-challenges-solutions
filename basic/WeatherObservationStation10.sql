-- nome de cidades que não terminam com vogais
SELECT DISTINCT(city) AS city_distinct_n_end_vowels
FROM station
WHERE city NOT REGEXP '[aeiou]$';