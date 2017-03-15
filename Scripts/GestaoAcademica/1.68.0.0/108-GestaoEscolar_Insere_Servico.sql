USE [GestaoPedagogica]
GO

--Iniciar transa��o
BEGIN TRANSACTION
SET XACT_ABORT ON

	EXEC MS_InsereServico
		@ser_id = 52,
		@ser_nome = 'Processa os dados para a sugest�o das aulas previstas.',
		@ser_nomeProcedimento = 'MS_JOB_ProcessamentoSugestaoAulasPrevistas',
		@ser_ativo = 1
		
-- Fechar transa��o	
SET XACT_ABORT OFF
COMMIT TRANSACTION