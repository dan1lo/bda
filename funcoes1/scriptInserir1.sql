--script para inserir dados

CREATE FUNCTION inserir()
returns void AS '
insert into pessoas(nome,idade) values(''hugo'',12);'

LANGUAGE SQL;

-- criei um script em sql para retornar vazio e executar um comando de insert
-- para verificar se ele funciona vc deve executar select nome(), neste caso select inserir()