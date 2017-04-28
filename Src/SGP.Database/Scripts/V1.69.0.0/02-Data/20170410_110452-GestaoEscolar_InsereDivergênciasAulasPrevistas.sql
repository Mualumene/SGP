
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
