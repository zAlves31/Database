USE Exercicio_1_3;

INSERT INTO Clinica(Endereco)
VALUES ('Rua Niteroi 180')

INSERT INTO Veterinario(IdClinica,Nome,CRMV)
VALUES ('1','Rafaela','4578952314')

INSERT INTO Dono(Nome)
VALUES ('Joao')

INSERT INTO TipoPet(Descricao)
VALUES ('Cachorro')

INSERT INTO Raca(Descricao)
VALUES ('dachshund')

INSERT INTO Pet(IdTipopet,IdRaca,IdDono,Nome,DataNascimento)
VALUES ('1','1','1','Crystal','25/02/2011')

INSERT INTO Atendimentos(IdVeterinario,IdPet,Descricao,Data)
VALUES('1','1','Exame de Sangue','27/05/2023')





--consultas simples das tabelas
SELECT * FROM Clinica
SELECT * FROM Veterinario
SELECT * FROM Dono
SELECT * FROM TipoPet
SELECT * FROM Raca
SELECT * FROM Pet
SELECT * FROM Atendimentos

SELECT Nome FROM Pet