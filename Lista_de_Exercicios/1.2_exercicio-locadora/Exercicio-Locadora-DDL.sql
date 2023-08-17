CREATE DATABASE Exercicio_1_2;

USE Exercicio_1_2;

CREATE TABLE Cliente
(
	IdCliente INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) NOT NULL,
	CPF CHAR (11) NOT NULL,
)

CREATE TABLE Empresa
(
	IdEmpresa INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) NOT NULL,
)

CREATE TABLE Modelo
(
	IdModelo INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) NOT NULL,
)

CREATE TABLE Marca
(
	IdMarca INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) NOT NULL,
)

CREATE TABLE Veiculo
(
	IdVeiculo INT PRIMARY KEY IDENTITY,
	IdEmpresa INT FOREIGN KEY REFERENCES Empresa(IdEmpresa),
	IdModelo INT FOREIGN KEY REFERENCES Modelo(IdModelo),
	IdMarca INT FOREIGN KEY REFERENCES Marca(IdMarca),
	Placa VARCHAR (7) NOT NULL,
)

CREATE TABLE Aluguel
(
	IdAluguel INT PRIMARY KEY IDENTITY,
	IdVeiculo INT FOREIGN KEY REFERENCES Veiculo(IdVeiculo),
	IdCliente INT FOREIGN KEY REFERENCES Cliente(IdCliente),
	Protocolo VARCHAR (12) NOT NULL,
	Dataretirada VARCHAR (12) NOT NULL,
	Datadevolucao VARCHAR (12) NOT NULL,
)



