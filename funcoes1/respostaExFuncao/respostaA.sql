CREATE FUNCTION idmax() returns int AS 
'

select max(id) from funcionarios

'

LANGUAGE SQL; 

-- para ver o resultado select idmax();