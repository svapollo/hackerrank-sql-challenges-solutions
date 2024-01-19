-- Cidades que terminam com vogal
select distinct(city)
from station
WHERE city REGEXP '[aeiou]$';