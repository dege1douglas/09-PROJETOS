create database futebolbrasil;

create table campeonatotratado(
id int(10) not null,
rodada int(10) not null,
dataa date,
hora time,
mandante char(30) not null,
visitante char(30) not null,
formacao_m varchar(30),
formacao_v varchar(30),
tecnico_m varchar(30) null,
tecnico_v varchar(30) null,
vencedor varchar(30) not null,
arena varchar(100),
m_placar int(4) not null,
v_placar int(4) not null,
m_estado varchar(10) not null,
v_estado varchar(10) not null
);

SELECT * 
FROM campeonatotratado;

drop table campeonatotratado;

-- mandante ganhou
SELECT COUNT(vencedor) 
FROM campeonatotratado 
WHERE vencedor=mandante;
-- time mais ganhou
SELECT vencedor, count(vencedor) as vitoria 
FROM campeonatotratado 
GROUP BY vencedor 
order by vitoria desc;
-- estado mais ganhou
SELECT count(m_estado), m_estado 
FROM campeonatotratado 
group by m_estado;
-- mg ganhou 
select m_estado, v_estado 
from campeonatotratado 
group by vencedor;
-- empate
select count(vencedor) as 'empate' 
FROM campeonatotratado 
WHERE vencedor = '-';
-- goleada mandante
SELECT mandante, m_placar 
from campeonatotratado 
order by m_placar DESC;
-- goleada visitante
SELECT visitante, v_placar 
from campeonatotratado 
order by v_placar DESC;
-- quantas rodadas/ano
SELECT rodada 
from campeonatotratado 
group by rodada 
order by rodada desc;
-- vitorias/time
SELECT vencedor, count(vencedor)
FROM campeonatotratado
GROUP BY vencedor;
-- estado mais time
SELECT mandante, m_estado
FROM campeonatotratado
group by mandante
order by m_estado;
-- jogos / arena
SELECT arena, count(arena)
FROM campeonatotratado
group by arena
order by arena;
-- mg gols feitos
SELECT SUM(m_placar) as MANDANTE, sum(v_placar) as VISITANTE, m_estado, v_estado
from campeonatotratado
WHERE m_estado='MG';
-- gols cruzeiro 2013
SELECT (sum(m_placar)+sum(v_placar)) as TOTAL
FROM campeonatotratado
WHERE mandante = 'Cruzeiro' or visitante = 'Cruzeiro' and dataa < 2014-01-01 and dataa > 2012-12-31;
-- gols atletico 2013
SELECT (sum(m_placar)+sum(v_placar)) as TOTAL
FROM campeonatotratado
WHERE mandante = 'Atletico-MG' or visitante = 'Atletico-MG' and dataa < 2014-01-01 and dataa > 2012-12-31;
-- gols flamengo 2013
SELECT (sum(m_placar)+sum(v_placar)) as TOTAL
FROM campeonatotratado
WHERE mandante = 'Flamengo' or visitante = 'Flamengo' and dataa < 2014-01-01 and dataa > 2012-12-31;
-- gols palmeiras
SELECT (sum(m_placar)+sum(v_placar)) as TOTAL
FROM campeonatotratado
WHERE mandante = 'Palmeiras' or visitante = 'Palmeiras' and dataa < 2014-01-01 and dataa > 2012-12-31;
-- time mais perdeu
SELECT vencedor, count(vencedor) as VITORIAS
FROM campeonatotratado
Group by vencedor
Order by VITORIAS ASC;
-- mg ganhou brasileiro
SELECT dataa, vencedor
from campeonatotratado
WHERE m_estado='MG' or v_estado='MG'
group by vencedor;



-- PERGUNTAS:::
-- Quantas vezes o mandante ganhou? X
-- Qual time mais ganhou X
-- Qual estado mais ganhou? X
-- Qual estado tem mais time? X
-- Quantas vezes Minas Gerais ganhou o brasileiro? 
-- Quantas vezes houve empate? X
-- Quantas rodadas houve por ano? X
-- Qual foi a maior goleada? X
-- Goleada do mandante? X
-- Goleada do visitante? X
-- Qual time mais perdeu? X
-- Qual time mais ganhou? X
-- Em qual arena houve mais jogos? X
-- Qual time mais marcou gol? X
-- Quantos gols Minas Gerais já fez? X
-- Quantos gols o Cruzeiro já fez desde de 2013? X
-- Quantos gols o Atlético já fez desde de 2013? X
-- Quantos gols o Flamengo já fez desde de 2013? X 
-- Quantos gols o Palmeiras já fez desde de 2013? X
-- Quantas vitórias cada time conseguiu? X
