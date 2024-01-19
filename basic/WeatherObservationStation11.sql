-- nome de cidades que não iniciam ou não terminam com vogais
SELECT DISTINCT(city) AS city_distinct_n_start_end_vowels
FROM station
WHERE (city NOT REGEXP '^[aeiou]') OR (city NOT REGEXP '[aeiou]$');