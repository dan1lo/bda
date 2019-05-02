CREATE or REPLACE FUNCTION insere(int, text) returns void AS 

$$

DECLARE
idade alias for $1;
nome alias for $2;
BEGIN

idade := idade -1;

EXECUTE 'INSERT INTO funcionarios(idade, nome) VALUES('||idade||', '|| quote_literal(nome) ||' )'; 

END
$$W


LANGUAGE PLPGSQL; 

-- para ver o resultado select insere(10,'danilo');