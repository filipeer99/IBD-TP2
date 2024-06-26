-- Percentual origem do total Licenciamentos
WITH total_geral AS (
    SELECT SUM(licenciamentos) AS total_geral_licenciamentos
    FROM serie_temporal
)
SELECT ov.origem_veiculo,
       SUM(st.licenciamentos) AS total_licenciamentos,
       CAST(100.0 * SUM(st.licenciamentos) / tg.total_geral_licenciamentos AS DECIMAL(10, 2)) AS Porcentagem
FROM serie_temporal st
LEFT JOIN origem_veiculo ov ON st.origem_veiculo = ov.ID_origem_veiculo
CROSS JOIN total_geral tg
WHERE st.ano BETWEEN 1957 AND 2023
GROUP BY ov.origem_veiculo, tg.total_geral_licenciamentos;
