--DQL Data Query Language

USE [Event+_JVAB]

--Usando Join

SELECT
	Usuario.Nome AS [Nome do usuário],
	TipoDeUsuario.TituloTipoUsuario AS [Tipo do usuário],
	Evento.DataEvento AS [Data do evento],
	CONCAT(Instituicao.NomeFantasia,'',Instituicao.Endereço) AS [Local do evento],
	TiposDeEvento.TituloTipoEvento AS [Titulo do evento],
	Evento.Nome AS [Nome do evento],
	Evento.Descricao AS [Descrição do evento],
	CASE WHEN PresencasEvento.Situacao = 1 THEN 'Confirmada' ELSE 'Nao Confirmada' END AS [Situacao],
	ComentarioEvento.Descricao AS [Comentário]

FROM Evento
	INNER JOIN TiposDeEvento
		ON Evento.IdTipoDeEvento = TiposDeEvento.IdTipoDeEvento

	INNER JOIN Instituicao
		ON Evento.IdInstituicao = Instituicao.IdInstituicao

	INNER JOIN PresencasEvento 
		ON Evento.IdEvento = PresencasEvento.IdEvento

	INNER JOIN Usuario 
		ON PresencasEvento.IdUsuario = Usuario.IdUsuario

	INNER JOIN TipoDeUsuario
		ON TipoDeUsuario.IdTipoDeUsuario = Usuario.IdTipoDeUsuario

	LEFT JOIN ComentarioEvento
		ON ComentarioEvento.IdUsuario = Usuario.IdUsuario
