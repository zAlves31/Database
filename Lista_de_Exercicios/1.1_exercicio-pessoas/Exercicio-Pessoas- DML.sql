--ATIIDADE DA AULA 6 - DML

--comando para usar o bd
USE Exercicio_1_1;

--comando para inserir dados nas tabelas
INSERT INTO Pessoa(Nome,CNH)
VALUES ('Joao','31070485961')

INSERT INTO Email(IdPessoa,Endereco)
VALUES (1,'joao@email.com')

INSERT INTO Telefone(IdPessoa,Numero)
VALUES (1, '954225617')

--consultas simples das tabelas
SELECT * FROM Pessoa
SELECT * FROM Email
SELECT * FROM Telefone
