-- diferença entre o total de cidades e o total de cidades distintas
select
    (select count(city) from station) -
    (select count(distinct(city)) from station) as diff;