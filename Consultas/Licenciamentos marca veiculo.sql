select *
from licenciamentos_marcas;

select *
from marca_veiculo;

select *
from subcategoria_veiculo;

-- Market Share por marca na categoria automoveis
WITH subcategoria_automoveis AS (
    SELECT ID_subcategoria_veiculo
    FROM subcategoria_veiculo
    WHERE subcategoria_veiculo = 'automoveis'
),
licenciamentos_marca AS (
    SELECT lm.marca, sum(lm.licenciamentos) AS total_licenciamentos
    FROM licenciamentos_marcas lm
    WHERE lm.subcategoria_veiculo IN (SELECT ID_subcategoria_veiculo FROM subcategoria_automoveis)
    GROUP BY lm.marca
)
SELECT mv.marca, lmf.total_licenciamentos,
       CAST(100.0 * lmf.total_licenciamentos / SUM(lmf.total_licenciamentos) OVER () AS DECIMAL(10, 2)) AS Porcentagem
FROM licenciamentos_marca lmf
JOIN marca_veiculo mv ON lmf.marca = mv.ID_marca
ORDER BY lmf.total_licenciamentos DESC;

-- Market Share por marca na categoria comercias leves
WITH subcategoria_automoveis AS (
    SELECT ID_subcategoria_veiculo
    FROM subcategoria_veiculo
    WHERE subcategoria_veiculo = 'comerciais_leves'
),
licenciamentos_marca AS (
    SELECT lm.marca, sum(lm.licenciamentos) AS total_licenciamentos
    FROM licenciamentos_marcas lm
    WHERE lm.subcategoria_veiculo IN (SELECT ID_subcategoria_veiculo FROM subcategoria_automoveis)
    GROUP BY lm.marca
)
SELECT mv.marca, lmf.total_licenciamentos,
       CAST(100.0 * lmf.total_licenciamentos / SUM(lmf.total_licenciamentos) OVER () AS DECIMAL(10, 2)) AS Porcentagem
FROM licenciamentos_marca lmf
JOIN marca_veiculo mv ON lmf.marca = mv.ID_marca
ORDER BY lmf.total_licenciamentos DESC;

-- Market Share por marca na categoria semileves
WITH subcategoria_automoveis AS (
    SELECT ID_subcategoria_veiculo
    FROM subcategoria_veiculo
    WHERE subcategoria_veiculo = 'semileves'
),
licenciamentos_marca AS (
    SELECT lm.marca, sum(lm.licenciamentos) AS total_licenciamentos
    FROM licenciamentos_marcas lm
    WHERE lm.subcategoria_veiculo IN (SELECT ID_subcategoria_veiculo FROM subcategoria_automoveis)
    GROUP BY lm.marca
)
SELECT mv.marca, lmf.total_licenciamentos,
       CAST(100.0 * lmf.total_licenciamentos / SUM(lmf.total_licenciamentos) OVER () AS DECIMAL(10, 2)) AS Porcentagem
FROM licenciamentos_marca lmf
JOIN marca_veiculo mv ON lmf.marca = mv.ID_marca
ORDER BY lmf.total_licenciamentos DESC;

-- Market Share por marca na categoria leves
WITH subcategoria_automoveis AS (
    SELECT ID_subcategoria_veiculo
    FROM subcategoria_veiculo
    WHERE subcategoria_veiculo = 'leves'
),
licenciamentos_marca AS (
    SELECT lm.marca, sum(lm.licenciamentos) AS total_licenciamentos
    FROM licenciamentos_marcas lm
    WHERE lm.subcategoria_veiculo IN (SELECT ID_subcategoria_veiculo FROM subcategoria_automoveis)
    GROUP BY lm.marca
)
SELECT mv.marca, lmf.total_licenciamentos,
       CAST(100.0 * lmf.total_licenciamentos / SUM(lmf.total_licenciamentos) OVER () AS DECIMAL(10, 2)) AS Porcentagem
FROM licenciamentos_marca lmf
JOIN marca_veiculo mv ON lmf.marca = mv.ID_marca
ORDER BY lmf.total_licenciamentos DESC;

-- Market Share por marca na categoria medios
WITH subcategoria_automoveis AS (
    SELECT ID_subcategoria_veiculo
    FROM subcategoria_veiculo
    WHERE subcategoria_veiculo = 'medios'
),
licenciamentos_marca AS (
    SELECT lm.marca, sum(lm.licenciamentos) AS total_licenciamentos
    FROM licenciamentos_marcas lm
    WHERE lm.subcategoria_veiculo IN (SELECT ID_subcategoria_veiculo FROM subcategoria_automoveis)
    GROUP BY lm.marca
)
SELECT mv.marca, lmf.total_licenciamentos,
       CAST(100.0 * lmf.total_licenciamentos / SUM(lmf.total_licenciamentos) OVER () AS DECIMAL(10, 2)) AS Porcentagem
FROM licenciamentos_marca lmf
JOIN marca_veiculo mv ON lmf.marca = mv.ID_marca
ORDER BY lmf.total_licenciamentos DESC;

-- Market Share por marca na categoria semipesados
WITH subcategoria_automoveis AS (
    SELECT ID_subcategoria_veiculo
    FROM subcategoria_veiculo
    WHERE subcategoria_veiculo = 'semipesados'
),
licenciamentos_marca AS (
    SELECT lm.marca, sum(lm.licenciamentos) AS total_licenciamentos
    FROM licenciamentos_marcas lm
    WHERE lm.subcategoria_veiculo IN (SELECT ID_subcategoria_veiculo FROM subcategoria_automoveis)
    GROUP BY lm.marca
)
SELECT mv.marca, lmf.total_licenciamentos,
       CAST(100.0 * lmf.total_licenciamentos / SUM(lmf.total_licenciamentos) OVER () AS DECIMAL(10, 2)) AS Porcentagem
FROM licenciamentos_marca lmf
JOIN marca_veiculo mv ON lmf.marca = mv.ID_marca
ORDER BY lmf.total_licenciamentos DESC;

-- Market Share por marca na categoria pesados
WITH subcategoria_automoveis AS (
    SELECT ID_subcategoria_veiculo
    FROM subcategoria_veiculo
    WHERE subcategoria_veiculo = 'pesados'
),
licenciamentos_marca AS (
    SELECT lm.marca, sum(lm.licenciamentos) AS total_licenciamentos
    FROM licenciamentos_marcas lm
    WHERE lm.subcategoria_veiculo IN (SELECT ID_subcategoria_veiculo FROM subcategoria_automoveis)
    GROUP BY lm.marca
)
SELECT mv.marca, lmf.total_licenciamentos,
       CAST(100.0 * lmf.total_licenciamentos / SUM(lmf.total_licenciamentos) OVER () AS DECIMAL(10, 2)) AS Porcentagem
FROM licenciamentos_marca lmf
JOIN marca_veiculo mv ON lmf.marca = mv.ID_marca
ORDER BY lmf.total_licenciamentos DESC;

-- Market Share por marca na categoria onibus
WITH subcategoria_automoveis AS (
    SELECT ID_subcategoria_veiculo
    FROM subcategoria_veiculo
    WHERE subcategoria_veiculo = 'onibus'
),
licenciamentos_marca AS (
    SELECT lm.marca, sum(lm.licenciamentos) AS total_licenciamentos
    FROM licenciamentos_marcas lm
    WHERE lm.subcategoria_veiculo IN (SELECT ID_subcategoria_veiculo FROM subcategoria_automoveis)
    GROUP BY lm.marca
)
SELECT mv.marca, lmf.total_licenciamentos,
       CAST(100.0 * lmf.total_licenciamentos / SUM(lmf.total_licenciamentos) OVER () AS DECIMAL(10, 2)) AS Porcentagem
FROM licenciamentos_marca lmf
JOIN marca_veiculo mv ON lmf.marca = mv.ID_marca
ORDER BY lmf.total_licenciamentos DESC;

with 
TotalPorCategoria as 
(select sv.subcategoria_veiculo, 
	sum(lm.licenciamentos) as total_licenciamentos
    from licenciamentos_marcas lm
    left join subcategoria_veiculo sv on lm.subcategoria_veiculo = sv.ID_subcategoria_veiculo
    group by sv.subcategoria_veiculo)
select sv.subcategoria_veiculo, 
	total_licenciamentos,
		CAST(100.0 * total_licenciamentos / SUM(total_licenciamentos) OVER () AS DECIMAL(10, 2)) AS Porcentagem
from TotalPorCategoria sv
order by total_licenciamentos DESC;
