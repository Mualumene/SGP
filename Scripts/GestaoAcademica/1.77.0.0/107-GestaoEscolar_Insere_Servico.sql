USE [GestaoPedagogica]
GO

--Iniciar transa��o
BEGIN TRANSACTION
SET XACT_ABORT ON

	EXEC MS_InsereServico
		@ser_id = 57,
		@ser_nome = 'Sondagem - An�lise de sondagem consolidada',
		@ser_nomeProcedimento = 'MS_JOB_ProcessamentoAnaliseSondagemConsolidada',
		@ser_ativo = 1,
		@ser_descricao = 'Processa os dados para o relat�rio de an�lise de sondagem consolidada.'
		
-- Fechar transa��o	
SET XACT_ABORT OFF
COMMIT TRANSACTION