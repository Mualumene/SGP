USE [GestaoPedagogica]
GO

BEGIN TRANSACTION 
SET XACT_ABORT ON 
	
	UPDATE ACA_TipoPeriodoCalendario
	SET tpc_nomeAbreviado = SUBSTRING(tpc_nome, 1, 2)

-- Fechar transa��o     
SET XACT_ABORT OFF 
COMMIT TRANSACTION
