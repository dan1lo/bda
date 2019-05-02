--script retornando um valor

CREATE FUNCTION addRetorna() returns integer as 
'INSERT INTO pessoas(nome, idade) VALUES(''RAFA'',14);
SELECT MAX(ID) FROM pessoas;'

language sql;

-- nesse script eu estou retornando um valor inteiro que é o valor do id max no banco de dados. Tudo isso depois de adicionar uma pessoa