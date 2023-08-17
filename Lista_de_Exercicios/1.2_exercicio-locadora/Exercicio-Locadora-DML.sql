USE Exercicio_1_2;

INSERT INTO Cliente(Nome,CPF)
VALUES ('Joao','68520178952')

INSERT INTO Empresa(Nome)
VALUES ('Playstation')

INSERT INTO Modelo(Nome)
VALUES ('Ford')

INSERT INTO Marca(Nome)
VALUES ('Focus')

INSERT INTO Veiculo(IdEmpresa,IdModelo,IdMarca,Placa)
VALUES ('1','1','1','FDX3078')

INSERT INTO Aluguel(IdVeiculo,IdCliente,Protocolo,Dataretirada,Datadevolucao)
VALUES ('1','1','4512365689','01/08/2023','05/08/2023')





--consultas simples das tabelas
SELECT * FROM Cliente
SELECT * FROM Empresa
SELECT * FROM Modelo
SELECT * FROM Marca
SELECT * FROM Veiculo
SELECT * FROM Aluguel


DELETE FROM Cliente Where IdCliente = 2
DELETE FROM Empresa Where IdEmpresa = 2
DELETE FROM Veiculo Where IdVeiculo = 2