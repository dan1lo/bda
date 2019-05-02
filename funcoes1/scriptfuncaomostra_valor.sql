--script retorna uma tabela como valor

create or replace function mostra_valor(valor int)
$$
begin
RAISE NOTICE 'O valor da variável aqui é %' valor;

return valor+1;
end; $$
language plpgsql;


language sql;

--para executar user select mostra_valor(3)
