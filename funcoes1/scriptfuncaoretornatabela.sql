--script retorna uma tabela como valor

create function tudo() 
returns table(id integer, nome text) as ' select id, nome from pessoas
'
language sql;

--para executar user select * from tudo()
