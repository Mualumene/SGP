USE [GestaoPedagogica]
GO

--Iniciar transa��o
BEGIN TRANSACTION
SET XACT_ABORT ON

	EXEC MS_InsereRelatorio
		  @rlt_id = 316
		, @rlt_nome = 'AulasSemPlanoAula'

-- Fechar transa��o
SET XACT_ABORT OFF
COMMIT TRANSACTION
GO