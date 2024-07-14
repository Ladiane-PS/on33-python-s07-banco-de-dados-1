/*Exercício 9: Sistema de Votação Online para Melhores Livros do Ano
Imagine que você está desenvolvendo um sistema de votação online para uma competição de melhores livros do ano. Você precisa criar uma tabela para armazenar os votos dos usuários e depois escrever consultas SQL para realizar operações básicas de contagem de votos e análise dos resultados.

Problema:

Você precisa criar uma tabela chamada votos para armazenar as seguintes informações sobre os votos dos usuários:

id: Identificador único para cada voto (inteiro, chave primária).
id_usuario: Identificador único do usuário que votou (inteiro).
id_livro: Identificador único do livro votado (inteiro).
data_voto: Data e hora em que o voto foi registrado (datetime).*/

CREATE TABLE votos (
    id INTEGER PRIMARY KEY,
    id_usuario INTEGER,
    id_livro INTEGER,
    data_voto DATETIME
);

--Além disso, você deve inserir alguns registros na tabela votos para teste.

-- Inserir alguns registros de exemplo na tabela 'votos'
INSERT INTO votos (id_usuario, id_livro, data_voto) VALUES (1, 1, '2024-05-10 08:30:00');  -- Voto do usuário 1 para o livro 1
INSERT INTO votos (id_usuario, id_livro, data_voto) VALUES (2, 2, '2024-05-10 09:45:00');  -- Voto do usuário 2 para o livro 2
INSERT INTO votos (id_usuario, id_livro, data_voto) VALUES (1, 3, '2024-05-10 10:15:00');  -- Voto do usuário 1 para o livro 3

--screva consultas SQL para realizar as seguintes operações:
--############################################################################
--total de votos recebidos por cada livro.
SELECT id_livro, COUNT(*) as  total_votos
from votos
GROUP BY id_livro --agrupar linhas que têm valores iguais em colunas especificadas.

/*id_livro: Agrupa os resultados pela coluna id_livro. Isso significa que para cada valor distinto de id_livro,
uma única linha será retornada, e a função de agregação (neste caso, COUNT(*)) será aplicada a cada grupo.*/

/*SELECT: Esta palavra-chave é usada para selecionar dados de um banco de dados.
id_livro: Seleciona a coluna id_livro da tabela votos. Esta coluna identifica os livros que receberam votos.
COUNT(*): Esta função conta o número de linhas para cada grupo especificado na cláusula GROUP BY. O asterisco (*) significa que estamos contando todas as linhas.
AS total_votos: Esta parte renomeia o resultado da contagem para total_votos. Assim, a coluna resultante no conjunto de resultados terá o nome total_votos.*/

--##########################################################################

--Identificar os livros mais votados.
SELECT id_livro, COUNT(*) AS total_votos
FROM votos
GROUP BY id_livro
ORDER BY total_votos DESC
LIMIT 1

/*SELECT: Escolhe quais colunas mostrar no resultado.
id_livro: Seleciona a coluna id_livro da tabela votos.
COUNT(*): Conta o número total de linhas para cada grupo de id_livro.
AS total_votos: Renomeia o resultado da contagem para total_votos.
sql*/

/*
FROM: Especifica a tabela de onde os dados serão selecionados.
votos: Nome da tabela de onde os dados serão retirados
*/

/*
GROUP BY: Agrupa as linhas que têm o mesmo valor na coluna id_livro.
id_livro: A coluna pela qual os dados serão agrupados.
*/

--##########################################################################

--Verificar se um determinado usuário já votou em um determinado livro.
SELECT COUNT(*) AS voto_existe
FROM votos
WHERE id_usuario = 1 AND id_livro = 1;

/*
SELECT: Escolhe quais colunas ou expressões mostrar no resultado.
COUNT(*): Conta o número total de linhas que correspondem aos critérios da consulta.
AS voto_existe: Renomeia o resultado da contagem para voto_existe.
*/

/*
FROM: Especifica a tabela de onde os dados serão selecionados.
votos: Nome da tabela de onde os dados serão retirados.
*/

/*
WHERE: Filtra as linhas para incluir apenas aquelas que correspondem aos critérios especificados.
id_usuario = 1: Condição para selecionar apenas as linhas onde id_usuario é igual a 1.
AND id_livro = 1: Condição adicional para selecionar apenas as linhas onde id_livro é igual a 1.
*/
--Obter a lista de livros votados por um usuário específico.
SELECT id_livro, data_voto
FROM votos
WHERE id_usuario = 1;

/*
SELECT: Escolhe quais colunas ou expressões mostrar no resultado.
COUNT(*): Conta o número total de linhas que correspondem aos critérios da consulta.
AS voto_existe: Renomeia o resultado da contagem para voto_existe.
*/

/*
FROM: Especifica a tabela de onde os dados serão selecionados.
votos: Nome da tabela de onde os dados serão retirados.
*/

/*
WHERE: Filtra as linhas para incluir apenas aquelas que correspondem aos critérios especificados.
id_usuario = 1: Condição para selecionar apenas as linhas onde id_usuario é igual a 1.
AND id_livro = 1: Condição adicional para selecionar apenas as linhas onde id_livro é igual a 1.
*/


