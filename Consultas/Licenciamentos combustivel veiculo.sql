select * from
licenciamentos_combustivel;

select * from
combustivel_veiculo;

select * from
grupo_veiculo;

-- Total Licenciamentos Combutivel automoveis e comerciais_leves
select cv.combustivel, sum(licenciamentos) as total_licenciamentos
from licenciamentos_combustivel lc
left join combustivel_veiculo cv on lc.FK_combustivel = cv.ID_combustivel
where lc.FK_grupo_veiculo = 
(select gv.ID_grupo_veiculo
from grupo_veiculo gv
where gv.grupo_veiculo = 'automoveis&comerciais_leves')
group by cv.combustivel
order by total_licenciamentos desc;

-- Total Licenciamentos Combutivel caminhoes e onibus
select cv.combustivel, sum(licenciamentos) as total_licenciamentos
from licenciamentos_combustivel lc
left join combustivel_veiculo cv on lc.FK_combustivel = cv.ID_combustivel
where lc.FK_grupo_veiculo = 
(select gv.ID_grupo_veiculo
from grupo_veiculo gv
where gv.grupo_veiculo = 'caminhoes&onibus')
group by cv.combustivel
order by total_licenciamentos desc;

-- Total Licenciamentos Combutivel Geral
select cv.combustivel, sum(licenciamentos) as total_licenciamentos
from licenciamentos_combustivel lc
left join combustivel_veiculo cv on lc.FK_combustivel = cv.ID_combustivel
group by cv.combustivel
order by total_licenciamentos desc;
