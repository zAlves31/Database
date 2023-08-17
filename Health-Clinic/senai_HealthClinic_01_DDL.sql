CREATE DATABASE HealthClinic_JVBA;

USE HealthClinic_JVBA;

CREATE TABLE TipodeUsuario
(
	IdTipodeUsuario INT PRIMARY KEY IDENTITY,
	TituloTipoUsuario VARCHAR(20) NOT NULL
)

CREATE TABLE Especialidade
(
	IdEspecialidade INT PRIMARY KEY IDENTITY,
	TituloEspecialidade VARCHAR(50) NOT NULL
)

CREATE TABLE Comentario
(
	IdComentario INT PRIMARY KEY IDENTITY,
	FeedbackPacientes VARCHAR(256) NOT NULL
)

CREATE TABLE Prontuario
(
	IdProntuario INT PRIMARY KEY IDENTITY,
	Descricao VARCHAR(256) NOT NULL
)

CREATE TABLE Clinica
(
	IdClinica INT PRIMARY KEY IDENTITY,
	NomeFantasia VARCHAR(30) NOT NULL,
	Endereco VARCHAR(50) NOT NULL,
	Abertura DATETIME NOT NULL,
	Fechamento DATETIME NOT NULL,
	CNPJ CHAR(14) NOT NULL,
	RazaoSocial VARCHAR(50) NOT NULL
)

CREATE TABLE Usuario
(
	IdUsuario INT PRIMARY KEY IDENTITY,
	IdTipodeUsuario INT FOREIGN KEY REFERENCES TipodeUsuario(IdTipoDeUsuario) NOT NULL,
	Nome VARCHAR(50) NOT NULL,
	Email VARCHAR(50) NOT NULL,
	Senha VARCHAR(30) NOT NULL
)

CREATE TABLE Paciente
(
	IdPaciente INT PRIMARY KEY IDENTITY,
	IdUsuario INT FOREIGN KEY REFERENCES Usuario(IdUsuario) NOT NULL,
	DatadeNascimento DATE NOT NULL,
	Telefone CHAR(14) NOT NULL,
	RG CHAR(10) NOT NULL,
	CPF CHAR(11) NOT NULL,
	Endereco VARCHAR(30) NOT NULL
)

CREATE TABLE Medico
(
	IdMedico INT PRIMARY KEY IDENTITY,
	IdUsuario INT FOREIGN KEY REFERENCES Usuario(IdUsuario) NOT NULL,
	IdEspecialidade INT FOREIGN KEY REFERENCES Especialidade(IdEspecialidade) NOT NULL,
	IdClinica INT FOREIGN KEY REFERENCES Clinica(IdClinica) NOT NULL,
	CRM CHAR (11) NOT NULL
)

ALTER TABLE Medico
ALTER COLUMN CRM CHAR (11) 

CREATE TABLE Consulta
(
	IdConsulta INT PRIMARY KEY IDENTITY,
	IdPaciente INT FOREIGN KEY REFERENCES Usuario(IdUsuario) NOT NULL,
	IdMedico INT FOREIGN KEY REFERENCES Medico(IdMedico) NOT NULL,
	IdComentario INT FOREIGN KEY REFERENCES Comentario(IdComentario) NOT NULL,
	IdProntuario INT FOREIGN KEY REFERENCES Prontuario(IdProntuario) NOT NULL,
	DataAgendamento DATE NOT NULL,
	Descricao VARCHAR(256) NOT NULL
)