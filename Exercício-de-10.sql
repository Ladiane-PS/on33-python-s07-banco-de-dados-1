Este exercício e uma previa do exercício de casa:

-- Criar a tabela 'votos'
CREATE TABLE voto (
    id INTEGER PRIMARY KEY,
    id_usuario INTEGER,
    estoque INTEGER
);

-- Inserir alguns registros de exemplo na tabela 'votos'
INSERT INTO voto (id_usuario, estoque) VALUES (1, 40);
INSERT INTO voto (id_usuario, estoque) VALUES (2, 20);  
INSERT INTO voto (id_usuario, estoque) VALUES (1, 1); 

agora consulta

-- Consulta por ordem
SELECT *
FROM voto
ORDER BY estoque;

-- Incremento usando SET na coluna estoque
UPDATE voto
SET estoque = estoque + 1
WHERE id = 1; -- Supondo que você deseja incrementar o estoque do voto com ID 1

-- Consulta após o incremento
SELECT *
FROM voto;