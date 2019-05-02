CREATE or REPLACE FUNCTION funcionarioDP(text) returns text AS 

$$

DECLARE
nome alias for $1;
idDP int;
nomeDP text;
BEGIN


EXECUTE 'select dp from funcionarios where nome ='|| quote_literal(nome) INTO idDP;

EXECUTE 'SELECT nome_dp from departamentos WHERE id ='|| idDP INTO nomeDP;

return nomeDP;

END
$$


LANGUAGE PLPGSQL; 

-- para ver o resultado select funcionarioDP(nome);