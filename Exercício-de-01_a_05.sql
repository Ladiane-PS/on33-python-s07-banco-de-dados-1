/*Exercício 1: Criar uma Tabela
Crie uma tabela chamada alunos com as seguintes colunas:

id (inteiro, chave primária)
nome (texto)
idade (inteiro)*/

CREATE TABLE alunos(  -- criar tabela 
  id INTEGER PRIMARY KEY, --chave primaria inteira
  nome TEXT,  -- texto
  idade INTEGER -- inteiro 
  );
  
/*######################################################################

Exercício 2: Inserir Dados
Insira três registros na tabela alunos com os seguintes dados:

Nome: "João", Idade: 20
Nome: "Maria", Idade: 22
Nome: "Pedro", Idade: 19*/

INSERT INTO alunos (nome, idade) VALUES ('João', 20); -- insert into (insira dentro de)
insert into alunos (nome, idade) values ('Maria', 22); --Values (valores)
insert into alunos (nome, idade) values ('Pedro', 19);
insert into alunos (nome, idade) Values ('Lady', 38);


/* ###################################################################
Exercício 3: Selecionar Dados
Selecione todos os registros da tabela alunos e exiba o resultado.
*/

select * from alunos;

/*##########################################################################

Exercício 4: Atualizar Dados
Atualize a idade do aluno com id igual a 2 para 23 anos.*/

update alunos SET idade = 23 where id=2;

/*Exercício 5: Excluir Dados
Exclua o aluno com id igual a 3 da tabela alunos.*/

DELETE from alunos where id = 3;

/*outra forma para deletar 
DELETE FROM alunos WHERE nome = 'João' AND idade = 20;*/

--############################################################################
--- deletar toda a tabela 
DROP TABLE alunos;







                                         