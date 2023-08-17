--DML Data Manipulation Language

USE [Event+_JVAB]


--Inserir dados nas tabelas

INSERT INTO TipoDeUsuario (TituloTipoUsuario)
VALUES('Administrador'),('Comum')

INSERT INTO TiposDeEvento (TituloTipoEvento)
VALUES('SQL Server')

INSERT INTO Instituicao (CNPJ,Endereço,NomeFantasia)
VALUES('12345678910112','Rua Niteroi 180','DevSchool')

INSERT INTO Usuario(IdTipoDeUsuario,Nome,Email,Senha)
VALUES(1,'Joao','admin@admin.com','admin1234')

INSERT INTO Evento(IdTipoDeEvento,Idinstituicao,Nome,Descricao,DataEvento,HorarioEvento)
VALUES(1,2,'Introducao ao Banco de Dados SQL Server','Aprenda conceitos basicos do SQL Server','2023-08-10','10:00:00')

INSERT INTO PresencasEvento(IdUsuario,IdEvento)
VALUES(1,5)

INSERT INTO ComentarioEvento(IdUsuario,IdEvento,Descricao,Exibe)
VALUES(1,5,'Excelente evento, Professores top!',1)


SELECT * FROM TipoDeUsuario
SELECT * FROM TiposDeEvento
SELECT * FROM Instituicao
SELECT * FROM Usuario
SELECT * FROM Evento
SELECT * FROM PresencasEvento
SELECT * FROM ComentarioEvento