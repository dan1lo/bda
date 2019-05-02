--SCRIPT DE CRIAÇÃO

CREATE TABLE pessoas(
	id serial,
	nome text,
	idade integer,
	primary key(id)
	
	);
INSERT INTO pessoas(nome,idade) 	VALUES ('danilo',20), ('andre',12);	