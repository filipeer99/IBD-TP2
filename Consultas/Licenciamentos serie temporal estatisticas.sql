select count(*)
from serie_temporal;

-- Média Anual Licenciamentos 1957-2023
with
TotalPorAno as
(select ano, SUM(licenciamentos) AS total_licenciamentos
    FROM serie_temporal
    WHERE ano BETWEEN 1957 AND 2023
    GROUP BY ano)
select round(avg(total_licenciamentos)) as media_licenciamentos_ano
FROM TotalPorAno;

-- Meses com mais Licenciamentos
select mes, SUM(licenciamentos) AS total_licenciamentos
FROM serie_temporal
WHERE ano BETWEEN 1957 AND 2023
GROUP BY mes
order by total_licenciamentos DESC
limit 3;

-- Meses com menos Licenciamentos
select mes, SUM(licenciamentos) AS total_licenciamentos
FROM serie_temporal
WHERE ano BETWEEN 1957 AND 2023
GROUP BY mes
order by total_licenciamentos
limit 3;

-- Ano com mais licenciamentos
select ano, SUM(licenciamentos) as total_licenciamentos
from serie_temporal
where ano between 1957 and 2023
group by ano
order by total_licenciamentos desc
limit 1;

-- Total Licenciamentos Geral
select st.ano, sum(st.licenciamentos) as total_licenciamentos
from serie_temporal st
where st.ano between 1957 and 2023
group by st.ano
order by st.ano DESC;