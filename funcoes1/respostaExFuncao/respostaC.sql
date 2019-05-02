CREATE or REPLACE FUNCTION funcionarioRuim(int) returns void AS 

$$

DECLARE
id alias for $1;
nome text;
BEGIN


EXECUTE 'select nome from funcionarios where id='|| id INTO nome; 

raise notice 'IH RAPAZ, O %, É UM FUNCIONARIO PESSÍMO', nome ;
END
$$


LANGUAGE PLPGSQL; 

-- para ver o resultado select funcionarioRuim(id do funcioario);