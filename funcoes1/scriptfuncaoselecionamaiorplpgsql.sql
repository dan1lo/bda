CREATE OR REPLACE FUNCTION selecionaMaior() return integer AS
$$
DECLARE
maior_idade INTEGER;
BEGIN
	execute ' select max(idade) from pessoas' INTO maior_idade;
	raise notice ' a maior idade é %', maior_idade;
	return maior_idade;
	end
	$$ laguage plpgsql;
-- neste script eu declaro uma var chamada maior_idade e coloco o resultado da consulta dentro da variavel. 
