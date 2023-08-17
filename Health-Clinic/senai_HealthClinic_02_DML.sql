USE HealthClinic_JVBA;

INSERT INTO TipoDeUsuario (TituloTipoUsuario)
VALUES('Administrador'),('Paciente'),('Medico')

INSERT INTO Especialidade (TituloEspecialidade)
VALUES('Otorrinolaringologista')

INSERT INTO Comentario (FeedbackPacientes)
VALUES('Otima consulta, recomendo muito!!')

INSERT INTO Prontuario (Descricao)
VALUES('Paciente com nariz fraturado, fazer imobilizacao do nariz e fazer raioX')

INSERT INTO Clinica(NomeFantasia,Endereco,Abertura,Fechamento,CNPJ,RazaoSocial)
VALUES('HC', 'Rua Niteroi 180', '7:45', '22:00', '18156069000174', 'HealthClinic')

INSERT INTO Usuario (IdTipodeUsuario,Nome,Email,Senha)
VALUES (1,'Joao Victor','joao@admin.com','310704'), (2,'Guillermo Varela','Guillermo@gamil.com','254873'), (3,'Drauzio Varella','Drauzio@gamil.com','856320')

INSERT INTO Paciente (IdUsuario,DatadeNascimento,Telefone,RG,CPF,Endereco)
VALUES(1, '24-03-1993', '11985352268', '295215823', '24970209065','Niterói, Travessa Gildinho 247')

INSERT INTO Medico (IdUsuario,IdEspecialidade,IdClinica,CRM)
VALUES(2, 1, 1, 'CRMRJ528205')

INSERT INTO Consulta (IdPaciente,IdMedico,IdComentario,IdProntuario,DataAgendamento,Descricao)
VALUES(2, 1, 1, 1, '19-08-2023','Verificar o estado do nariz do paciente')


Select * From TipoDeUsuario
Select * From Especialidade
Select * From Comentario
Select * From Prontuario
Select * From Clinica
Select * From Usuario
Select * From Paciente
Select * From Medico
Select * From Consulta
