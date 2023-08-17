-- DDL DataBase Definition Language

--Criar Banco de Dados
CREATE DATABASE [Event+_JVAB]

USE [Event+_JVAB]

--Criar tabelas
CREATE TABLE TipoDeUsuario
(
	IdTipoDeUsuario INT PRIMARY KEY IDENTITY,
	TituloTipoUsuario VARCHAR(20) NOT NULL UNIQUE
)

CREATE TABLE TiposDeEvento
(
	IdTipoDeEvento INT PRIMARY KEY IDENTITY,
	TituloTipoEvento  VARCHAR(50) NOT NULL UNIQUE
)

CREATE TABLE Instituicao
(
	Idinstituicao INT PRIMARY KEY IDENTITY,
	CNPJ CHAR(14) NOT NULL UNIQUE,
	Endere�o VARCHAR(100) NOT NULL,
	NomeFantasia VARCHAR(50) NOT NULL
)

CREATE TABLE Usuario
(
	IdUsuario INT PRIMARY KEY IDENTITY,
	IdTipoDeUsuario INT FOREIGN KEY REFERENCES TipoDeUsuario(IdTipoDeUsuario) NOT NULL,
	Nome VARCHAR(50) NOT NULL,
	Email VARCHAR(256) NOT NULL UNIQUE,
	Senha VARCHAR(100) NOT NULL
)


CREATE TABLE Evento
(
	IdEvento INT PRIMARY KEY IDENTITY,
	IdTipoDeEvento INT FOREIGN KEY REFERENCES TiposDeEvento(IdTipoDeEvento) NOT NULL,
	Idinstituicao INT FOREIGN KEY REFERENCES Instituicao(Idinstituicao) NOT NULL,
	Nome VARCHAR(50) NOT NULL,
	Descricao VARCHAR(100) NOT NULL,
	DataEvento DATE NOT NULL,
	HorarioEvento TIME NOT NULL
)

CREATE TABLE PresencasEvento
(
	IdPresencasEvento INT PRIMARY KEY IDENTITY,
	IdUsuario INT FOREIGN KEY REFERENCES Usuario(IdUsuario) NOT NULL,
	IdEvento INT FOREIGN KEY REFERENCES Evento(IdEvento) NOT NULL,
	Situacao BIT DEFAULT(0)
)

CREATE TABLE ComentarioEvento
(
	IdComentarioEvento INT PRIMARY KEY IDENTITY,
	IdUsuario INT FOREIGN KEY REFERENCES Usuario(IdUsuario) NOT NULL,
	IdEvento INT FOREIGN KEY REFERENCES Evento(IdEvento) NOT NULL,
	Descricao VARCHAR(256) NOT NULL,
	Exibe BIT DEFAULT(0)
)