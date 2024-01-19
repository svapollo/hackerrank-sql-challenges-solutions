-- cidades que iniciam e terminam com vogais
select distinct(city) as city_distinct_vowels
from station
where (city REGEXP '^[aeiou]') and (city REGEXP '[aeiou]$')