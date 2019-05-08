-- query das aulas de funcoes e gatilhos

-- funcao para verificar um valor
CREATE OR REPLACE FUNCTION condicao(integer) RETURNS void as 
$$

declare 
num integer :=$1;

	begin

		if num<2 THEN
			RAISE NOtiCE 'NUMERO MENOR QUE 2';
		ELSEIF 	num>=2 and num<5 THEN
			raise notice 'maior ou igual 2 e menor que 5';
		else
			raise notice 'maior ou igual a 5';
			end if;
	end

$$ LANGUAGE plpgsql;


-- funcao para verificar a idade e inserir se foi maior de 18

CREATE OR REPLACE FUNCTION inserirValor (text, integer) RETURNS text as 
$$
	declare
		valor_idade integer:=2;
		begin	
			if valor_idade>=18 THEN
				INSERT INTO PESSOAS(NOME,IDADE)VALUES($1,$2);
				RAISE NOTICE 'ADICIONADO COM SUCESSO';
				RETURN 'ADICIONADO';
				ELSE 
					RAISE NOTICE 'MENOR DE 18';
					RETURN 'ERRO AO ADICIONAR, MENOR DE 18';
					
				end if;
		end
$$ language plpgsql;


-- exemplo didatico, geralmente nao se usa varchar para cpf

create or replace function formatar_cpf(cpf varchar(11))
returns varchar(14) as 
$$
	begin
		if char_length(cpf)!=11 then
			raise notice 'Formato invalido? %',$1;
			return 'erro';
		end if;
		return substring(cpf FROM 1 FOR 3) || '.' || SUBSTRING(cpf from 4 for 3)|| '.' || SUBSTRING(cpf from 7 for 3)|| '.' || SUBSTRING(cpf from 10 for 2);
	end;
$$ language plpgsql;
-- para executar select formatar_cpf('11111111111');		
		

-- exemplo while

CREATE OR REPLACE FUNCTION while(integer) RETURNS VOID AS 
$$
	DECLARE
	num alias for $1;
	
	begin	
		WHILE num>1 LOOP
			RAISE NOTICE 'numero eh %', num;
			num:=num-1;
		end loop;
	end
$$ language plpgsql;


-- exemplo for 

CREATE OR REPLACE FUNCTION func_for returns void as
$$
	declare 
		i integer;
		begin 
			for i in 1..5 LOOP
				raise notice ' o numero é %', i;
			end loop;
		end
$$ language plpgsql;


--Quando desejar excluir uma função do sistema utilize o comando:
DROP FUNCTION nome_da_funcao();

--Para excluir uma função é necessário passar toda a sua assinatura:
DROP FUNCTION nome_da_funcao(INTEGER);


-------------------------------GATILHO -----------------
--primeiro criamos a funcao
CREATE OR REPLACE FUNCTION pessoas_delecao_audt()
RETURNS trigger AS $$
	BEGIN
		UPDATE pessoa_log SET data_delecao = now() where id_pessoa_log = old.id;
		RETURN OLD;
	END;
$$ LANGUAGE plpgsql;
-- depois criamos o gatilho
-- note que para cada modificao 
CREATE TRIGGER log_delecao_trigger
AFTER INSERT ON pessoas
FOR EACH ROW -- significa para cada linha modificada
-- para fazer uma vez independente das modificacoes de linhas 
-- usar for each statement 
EXECUTE PROCEDURE pessoas_delecao_audt();


	