CREATE FUNCTION getIdade(int) RETURNS SETOF foo AS $$
    SELECT * FROM pessoas WHERE idade >= $1;
$$ LANGUAGE SQL;

SELECT * FROM getfoo(1) AS t1;