USE HealthClinic_JVBA;

SELECT
	Consulta.IdConsulta,
	Consulta.DataAgendamento,
	Clinica.NomeFantasia AS Clinica,
	PacienteUsuario.Nome AS Paciente,
	MedicoUsuario.Nome AS Medico,
	Especialidade.TituloEspecialidade AS Especialidade,
	Medico.CRM AS CRM,
	Prontuario.Descricao AS Descricao,
	Comentario.FeedbackPacientes AS Feedback

FROM
	 Clinica, Consulta

	JOIN Paciente 
		ON Consulta.IdPaciente = Paciente.IdPaciente

	JOIN Usuario as PacienteUsuario 
		ON PacienteUsuario.IdUsuario = Paciente.IdUsuario

	JOIN Medico 
		ON Consulta.IdMedico = Medico.IdMedico

	JOIN Usuario as MedicoUsuario 
		ON MedicoUsuario.IdUsuario = Medico.IdUsuario

	JOIN Especialidade
		ON Medico.IdEspecialidade = Especialidade.IdEspecialidade

	JOIN Prontuario
		ON Prontuario.IdProntuario = Consulta.IdProntuario

	jOIN Comentario
		ON Comentario.IdComentario = Consulta.IdComentario