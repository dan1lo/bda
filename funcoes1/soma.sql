CREATE FUNCTION soma(int, int) returns int AS
'
select $1 +$2
'
LANGUAGE SQL
-- aqui eu estou criando uma funcao que soma dois valores que o usuário 
-- apresenta

 