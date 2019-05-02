
CREATE FUNCTION nome(parametros...) returns retornodafuncao AS 
'

CODIGO

'

LANGUAGE SQL; 

-- ou ainda

CREATE or REPLACE FUNCTION nome(parametros...) returns retornodafuncao AS 
'

CODIGO

'

LANGUAGE SQL;

CREATE or REPLACE FUNCTION nome(parametros...) returns retornodafuncao AS 
$$ DECLARE
var ALIAS FOR $1;
-- PARA RECEBER O PRIMEIRO PARAMETRO
var2 tipo;
-- idade int;

begin
--bloco de código
var2 := 1; -- recebe...
raise notice 'escreve algo %', var;
EXECUTE 'SELECT MAX IDADE FROM PESSOAS' INTO VAR2;
-- COLOCO O RESULTADO DO SELECT DENTRO DE VAR2
EXECUTE 'SELECT NOME FROM PESSOAS WHERE ID ='||VAR ;
-- POSSO EXECUTAR UM SQL DINAMICO


-- fim do primeiro bloco de codigo
RETURN algo; -- caso tenha returns...
end
$$
LANGUAGE PLPGSQL;

