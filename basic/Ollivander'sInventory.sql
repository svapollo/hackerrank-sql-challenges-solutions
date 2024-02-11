-- seleciona as varinhas mais baratas que nao sao malignas,
-- ordenadas por poder e idade
SELECT wands.id, wands_property.age, wands.coins_needed, wands.power
FROM  wands
JOIN wands_property
ON wands.code = wands_property.code
WHERE wands_property.is_evil = 0
AND wands.coins_needed = (SELECT MIN(coins_needed)
                         FROM wands AS w
                         JOIN wands_property AS p
                         ON (w.code = p.code)
                         WHERE w.power = p.power
                         AND w.age = p.age)
ORDER BY wands.power DESC, wands_property.age DESC;