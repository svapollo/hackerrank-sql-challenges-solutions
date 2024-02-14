-- encontra a mediana da latitude norte (lat_n) de todas as estações de meteorologia. 
-- Arredondando sua resposta para 4 casas decimais.
SELECT ROUND(MEDIAN(lat_n), 4) AS median_lat_n
FROM station;