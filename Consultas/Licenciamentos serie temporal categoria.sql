select * 
from categoria_veiculo;

select distinct categoria_veiculo
from serie_temporal;

-- Total Licenciamentos por ano de veiculos leves
select st.ano, sum(st.licenciamentos) as total_licenciamentos
from serie_temporal st
where st.categoria_veiculo = (
    select ca.ID_categoria_veiculo
    from categoria_veiculo ca
    where ca.categoria_veiculo = 'veiculos_leves'
)
and st.ano between 1957 and 2023
group by st.ano
order by st.ano DESC;

-- Total Licenciamentos por ano de comericias leves
select st.ano, sum(st.licenciamentos) as total_licenciamentos
from serie_temporal st
where st.categoria_veiculo = (
    select ca.ID_categoria_veiculo
    from categoria_veiculo ca
    where ca.categoria_veiculo = 'comerciais_leves'
)
and st.ano between 1957 and 2023
group by st.ano
order by st.ano DESC;

-- Total Licenciamentos por ano de caminhoes
select st.ano, sum(st.licenciamentos) as total_licenciamentos
from serie_temporal st
where st.categoria_veiculo = (
    select ca.ID_categoria_veiculo
    from categoria_veiculo ca
    where ca.categoria_veiculo = 'caminhoes'
)
and st.ano between 1957 and 2023
group by st.ano
order by st.ano DESC;

-- Total Licenciamentos por ano de onibus
select st.ano, sum(st.licenciamentos) as total_licenciamentos
from serie_temporal st
where st.categoria_veiculo = (
    select ca.ID_categoria_veiculo
    from categoria_veiculo ca
    where ca.categoria_veiculo = 'onibus'
)
and st.ano between 1957 and 2023
group by st.ano
order by st.ano DESC;
