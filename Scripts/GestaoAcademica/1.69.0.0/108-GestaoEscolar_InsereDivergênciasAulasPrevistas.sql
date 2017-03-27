USE [GestaoPedagogica]
GO

--Iniciar transa��o
BEGIN TRANSACTION
SET XACT_ABORT ON

	IF (NOT EXISTS (SELECT TOP 1 1 FROM SYS_ServicosLogExecucao WITH(NOLOCK) WHERE ser_id = 54))
	BEGIN

		DECLARE @dataInicio DATETIME = GETDATE();

		-- Executa o servi�o para todos os registros
		EXEC MS_JOB_ProcessamentoDivergenciasAulasPrevistas

		-- Insere registros na tabela SYS_ServicosLogExecucao
		-- para refer�ncia de data na pr�xima execu��o do servi�o.
		INSERT INTO SYS_ServicosLogExecucao (ser_id, sle_dataInicioExecucao, sle_dataFimExecucao)
		VALUES (54, @dataInicio, GETDATE())

	END
	
-- Fechar transa��o	
SET XACT_ABORT OFF
COMMIT TRANSACTION