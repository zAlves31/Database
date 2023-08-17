--DQL Data Query Language

USE [Event+_JVAB]

--Usando Join

SELECT
	Usuario.Nome AS [Nome do usu�rio],
	TipoDeUsuario.TituloTipoUsuario AS [Tipo do usu�rio],
	Evento.DataEvento AS [Data do evento],
	CONCAT(Instituicao.NomeFantasia,'',Instituicao.Endere�o) AS [Local do evento],
	TiposDeEvento.TituloTipoEvento AS [Titulo do evento],
	Evento.Nome AS [Nome do evento],
	Evento.Descricao AS [Descri��o do evento],
	CASE WHEN PresencasEvento.Situacao = 1 THEN 'Confirmada' ELSE 'Nao Confirmada' END AS [Situacao],
	ComentarioEvento.Descricao AS [Coment�rio]

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
