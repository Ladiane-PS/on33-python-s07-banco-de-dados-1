/*Exercício 8: Gerenciamento de Vendas de Livros
Suponha que você esteja expandindo sua loja de livros online e agora precisa acompanhar as vendas dos livros. 
Você deve criar uma tabela para armazenar informações sobre as vendas dos livros e depois realizar uma consulta para obter informações sobre os livros vendidos.

Problema:

Você precisa criar uma nova tabela chamada vendas para armazenar as seguintes informações sobre as vendas dos livros:

id: Identificador único para cada venda (inteiro, chave primária).
livro_id: Identificador do livro vendido (chave estrangeira referenciando a tabela livros).
data_venda: Data da venda do livro (data).
quantidade: Quantidade de exemplares vendidos (inteiro).*/


-- SELECT * from vendas 

/*Além disso, você deve inserir alguns registros de vendas para teste e, em seguida, realizar um JOIN entre as tabelas livros 
e vendas para obter informações sobre os livros vendidos, incluindo título, autor, data da venda e quantidade vendida.

Escreva o código SQL necessário para: */

--Criar a tabela vendas.
create table vendas (
    id INTEGER primary KEY,
    livro_id INTEGER,
    data_venda DATE,
    quantidade INTEGER,
    foreign key (livro_id) REFERENCES livros(id)
);

--Inserir alguns registros de vendas para teste.
SELECT * from vendas
insert INTO vendas (livro_id, data_venda, quantidade) VALUES (1, '2024-05-10',3);
insert INTO vendas (livro_id, data_venda, quantidade) VALUES (1, '2024-05-09',5);
insert INTO vendas (livro_id, data_venda, quantidade) VALUES (1, '2024-05-08',2);



--Realizar um JOIN entre as tabelas livros e vendas para obter as informações solicitadas.

-- Realizar JOIN entre as tabelas 'livros' e 'vendas
--sobre os livros vendidos, incluindo título, autor, data da venda e quantidade vendida.

/*livros.titulo: Seleciona a coluna titulo da tabela livros.
livros.autor: Seleciona a coluna autor da tabela livros.
vendas.data_venda: Seleciona a coluna data_venda da tabela vendas.
vendas.quantidade: Seleciona a coluna quantidade da tabela vendas.*/
SELECT 
  livros.titulo,
  livros.autor,
  vendas.data_venda,
  vendas.quantidade
FROM vendas
join livros on vendas.livro_id = livros.id;

/*JOIN: Esta palavra-chave é usada para combinar registros de duas tabelas com base em uma condição relacionada.
livros: Especifica a tabela que queremos juntar à tabela vendas.
ON vendas.livro_id = livros.id: Define a condição de junção. Estamos combinando registros da tabela vendas e 
livros onde vendas.livro_id é igual a livros.id. 
Isso significa que estamos conectando cada registro de venda ao respectivo registro de livro com base no id do livro.*/
