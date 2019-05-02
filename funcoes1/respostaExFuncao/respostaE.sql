CREATE or REPLACE FUNCTION deletarFuncionario(int) returns void AS 

$$

DECLARE
idDP alias for $1;

BEGIN



EXECUTE 'DELETE FROM funcionarios WHERE dp = '|| idDP;


END
$$


LANGUAGE PLPGSQL; 

-- para ver o resultado select deletarFuncionario(id do dp);