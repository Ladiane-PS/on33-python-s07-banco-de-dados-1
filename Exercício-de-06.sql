/*Exercício 6: Problema da Loja de Livros
Suponha que você esteja gerenciando uma loja de livros online e precise criar um banco de dados para armazenar informações sobre os livros disponíveis.
Você foi encarregado de projetar o esquema do banco de dados e realizar algumas consultas básicas.

Problema:

Você precisa criar uma tabela chamada livros para armazenar os seguintes dados sobre os livros:

id: Identificador único para cada livro (inteiro, chave primária).
titulo: Título do livro (texto).
autor: Nome do autor do livro (texto).
ano_publicacao: Ano de publicação do livro (inteiro).
preco: Preço do livro (real).*/

CREate table livros (
  id INTEGER PRIMARY KEY,
  titulo TEXT,
  autor TEXT,
  ano_publicado INTEGER,
  preco REAL
  );

/*Além disso, você deve inserir três registros de livros na tabela para fins de teste. Aqui estão os dados para inserção:

Título: "Dom Quixote", Autor: "Miguel de Cervantes", Ano de Publicação: 1605, Preço: R$ 29.90
Título: "Orgulho e Preconceito", Autor: "Jane Austen", Ano de Publicação: 1813, Preço: R$ 25.50
Título: "1984", Autor: "George Orwell", Ano de Publicação: 1949, Preço: R$ 35.75 */

INSERT INTO livros (titulo, autor, ano_publicado, preco) VALUES ('Dom Quixote', 'Miguel de Cervantes', 1605, 29.90);
INSERT into livros (titulo, autor, ano_publicado, preco) VALUES ('Orgulho e Preconceito', 'Jane Austen', 1813, 25.50);
insert into livros (titulo, autor, ano_publicado, preco) VALUES ('1984','George Orwell', 1949, 35.75);

/*Depois de criar a tabela e inserir os dados, escreva consultas SQL para as seguintes perguntas:

Selecione todos os livros da tabela.*/

SELECT * from livros  -- from (de )where (onde)

--Selecione o título e o autor de todos os livros publicados após o ano de 2010.

SELECT titulo, autor 
from livros
where ano_publicado > 2010;


--Selecione o título, autor e preço dos livros com preço superior a R$ 30,00.

SELECT titulo, autor, preco -- select selecioa dados de um banco de dados das colunas que queremos retornar na consulta
FROM livros -- from indica a tabela de onde queremos selecionar os dados.
where preco > 30.00;
/*WHERE: Esta palavra-chave é usada para filtrar os registros que são retornados. Somente os registros que satisfazem a condição especificada serão retornados.
preco > 30.00: Esta é a condição que estamos usando para filtrar os registros. Estamos dizendo ao SQL que queremos apenas os registros onde o valor da coluna preco é maior que 30.00*/





  
  