--aqui eu crio, se já existir, eu sobrescrevo a funcao
CREATE OR REPLACE FUNCTION 
calcularAno(integer, integer) returns integer as $$
declare
ano alias for $1;
id_pessoa alias for $2;
resultado integer;
rec integer;
begin
	EXECUTE 'select idade from pessoas where id='|| id_pessoa into rec;
	resultado:= ano - rec;
	return resultado;
end;
$$
language plpgsql



