--script funcao com parametro

create function add2(text) returns void as 
' insert into pessoas(nome,idade)
values ($1,14);
'
language SQL;

--para executar user select add2('danilo');
