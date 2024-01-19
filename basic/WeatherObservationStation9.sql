-- nome de cidades que não iniciam com vogais
SELECT distinct(city) as city_distinct_n_start_vowels
FROM station
WHERE city NOT REGEXP '^[aeiou]';