USE [GestaoPedagogica]
GO

--Iniciar transa��o
BEGIN TRANSACTION
SET XACT_ABORT ON

	EXEC MS_InsereServico
		@ser_id = 51,
		@ser_nome = 'Processa os dados para o relat�rio de diverg�ncias de rematr�culas.',
		@ser_nomeProcedimento = 'MS_JOB_ProcessamentoDivergenciasRematriculas',
		@ser_ativo = 1
		
-- Fechar transa��o	
SET XACT_ABORT OFF
COMMIT TRANSACTION