USE [GestaoPedagogica]
GO

--Iniciar transa��o
BEGIN TRANSACTION
SET XACT_ABORT ON

	EXEC MS_InsereServico
		@ser_id = 55,
		@ser_nome = 'Fechamento - Preenchimento frequ�ncia',
		@ser_nomeProcedimento = 'MS_JOB_ProcessamentoPreenchimentoFrequencia',
		@ser_ativo = 1,
		@ser_descricao = 'Processa o preenchimento de frequ�ncia, conta as aulas sem a flag efetivado. Utiliza a fila do fechamento e faz o pr�-processamento para gera��o de alerta.'

	EXEC MS_InsereServico
		@ser_id = 56,
		@ser_nome = 'Fechamento - Alunos com baixa frequ�ncia e faltas consecutivas',
		@ser_nomeProcedimento = 'MS_JOB_ProcessamentoAlunosFrequencia',
		@ser_ativo = 1,
		@ser_descricao = 'Processa os alunos com baixa frequ�ncia e com faltas consecutivas. Utiliza a fila do fechamento e faz o pr�-processamento para gera��o de alerta.'
		
-- Fechar transa��o	
SET XACT_ABORT OFF
COMMIT TRANSACTION