USE Exercicio_1_4;

INSERT INTO Artistas(Nome)
VALUES ('Ryu The Runner')

INSERT INTO Albuns(IdArtista,Titulo,DataLancamento,Localizacao,QtdMinutos,Ativo)
VALUES ('1','Essa é a Vida de um Corredor','03/03/2023','Brasil','23','Sim')

INSERT INTO Estilos(Nome)
VALUES ('Trap')

INSERT INTO AlubunsEstilos(IdAlbuns,IdEstilos)
VALUES ('1','1')

INSERT INTO Usuarios(Nome,Email,Senha,Permissao)
VALUES ('Joao','joao@email.com','310704','Sim')


SELECT * FROM Artistas
SELECT * FROM Albuns
SELECT * FROM Estilos
SELECT * FROM Usuarios
