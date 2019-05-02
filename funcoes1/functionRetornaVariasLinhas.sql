--aqui eu crio, se já existir, eu sobrescrevo a funcao
CREATE OR REPLACE FUNCTION 
ret_row() returns setof record as $$
begin
return query select * from pessoas
-- este comando acrescenta um conjunto de linhas ao retorno da funcao
return;
end; 
$$ language plpgslq;

-- como usar:
-- select *from ret_row() as (id integer, nome text, idade integer);