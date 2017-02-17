USE [GestaoPedagogica]
GO

--Iniciar transa��o
BEGIN TRANSACTION
SET XACT_ABORT ON

	EXEC MS_InsereServico
		@ser_id = 48,
		@ser_nome = 'Faz o pr� procesamento das pend�ncias de aulas sem plano',
		@ser_nomeProcedimento = 'MS_JOB_ProcessamentoPendenciaAulas',
		@ser_ativo = 1

	EXEC MS_InsereServico
		@ser_id = 49,
		@ser_nome = 'Processa a remo��o das faltas com justificativa de abono.',
		@ser_nomeProcedimento = 'MS_JOB_ProcessamentoAbonoFalta',
		@ser_ativo = 1

	EXEC MS_InsereServico
		@ser_id = 50,
		@ser_nome = 'Processa a abertura/fechamento das turmas dos anos anteriores.',
		@ser_nomeProcedimento = 'MS_JOB_ProcessamentoAberturaTurmaAnosAnteriores',
		@ser_ativo = 1
		
-- Fechar transa��o	
SET XACT_ABORT OFF
COMMIT TRANSACTION