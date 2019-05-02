--aqui eu crio, se já existir, eu sobrescrevo a funcao
CREATE OR REPLACE FUNCTION mostra_valor() returns integer as 
-- funcao mostra_valor receber um inteiro como parametro e retorna um inteiro
$$ declare
--neste espaco eu crio as variáveis 
-- aqui eu declaro num como apelido para o primeiro parametro
--na pratica é como se fosse um num = var de java...
num ALIAS for $1;

begin 
raise notice 'o valor da variável é %', num;

return num+1;
end; $$
langauge plpgsql;

--para executar select mostra_valor(40)
