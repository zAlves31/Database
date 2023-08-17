CREATE DATABASE Exemplo_Pratico;

USE Exemplo_Pratico;

CREATE EVENT SESSION QueryMonitoring --Cria uma nova sessao de evento no servidor 
ON SERVER
ADD EVENT sqlserver.sql_statement_completed -- indica que a instrucao sql foi adicionada com sucesso
(
    ACTION -- define as informacoes adicionais que serao registradas e capturadas na sessao evento
    (
        sqlserver.database_id, -- id do banco de dados
        sqlserver.sql_text, -- texto de instrucao
        sqlserver.duration -- duracao da execucao em microsegundos
    )
    WHERE sqlserver.database_id = DB_ID('seu_banco_de_dados') -- vai definir condicao para capturar apenas eventos relacionados 
    AND sqlserver.duration > 1000000 -- condicao para capturar apenas eventos que tenham duracao maior que 1 segundo = 1.000.000 microsegundos, 
									-- esse valor pode ser ajustado conforme a necessidade 
)


ALTER EVENT SESSION QueryMonitoring ON SERVER STATE = START; -- isso inicia a sessao evento que voce criou

