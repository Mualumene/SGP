	IF (NOT EXISTS (SELECT TOP 1 1 FROM SYS_ServicosLogExecucao WITH(NOLOCK) WHERE ser_id = 52))
	BEGIN

		DECLARE @dataInicio DATETIME = GETDATE();

		-- Executa o servi�o para as agendas geradas a partir de 2017
		EXEC MS_JOB_ProcessamentoSugestaoAulasPrevistas 0

		-- Insere registros na tabela SYS_ServicosLogExecucao
		-- para refer�ncia de data na pr�xima execu��o do servi�o.
		DECLARE @sle_id1 UNIQUEIDENTIFIER, @sle_id2 UNIQUEIDENTIFIER

		INSERT INTO SYS_ServicosLogExecucao (ser_id, sle_dataInicioExecucao, sle_dataFimExecucao)
		VALUES (52, @dataInicio, GETDATE())

		INSERT INTO SYS_ServicosLogExecucao (ser_id, sle_dataInicioExecucao, sle_dataFimExecucao)
		VALUES (53, @dataInicio, GETDATE())

	END
