select * 
from motorizacao_veiculo;

select *
from licenciamentos_motorizacao;

-- Percentual do total de cada motorizacao
WITH total_geral AS (
    SELECT SUM(licenciamentos) AS total_geral_licenciamentos
    FROM licenciamentos_motorizacao
)
SELECT mv.motorizacao,
       SUM(lm.licenciamentos) AS total_licenciamentos,
       CAST(100.0 * SUM(lm.licenciamentos) / tg.total_geral_licenciamentos AS DECIMAL(10, 2)) AS Porcentagem
FROM licenciamentos_motorizacao lm
LEFT JOIN motorizacao_veiculo mv ON lm.FK_motorizacao = mv.ID_motorizacao
CROSS JOIN total_geral tg
GROUP BY mv.motorizacao, tg.total_geral_licenciamentos;
