USE [GestaoPedagogica]
GO

--Iniciar transa��o
BEGIN TRANSACTION
SET XACT_ABORT ON

	/***************
		Copiar do exemplo abaixo.
	****************

	-- Insere o relat�rio no Gest�oEscolar
	EXEC MS_InsereRelatorio
		@rlt_id = 0 -- ID do relat�rio. (Obrigat�rio, igual ao enumerador do sistema)
		,@rlt_nome = '[Preencher]' -- Nome do relatorio. (Obrigat�rio, igual a descric��o do enumerador do sistema)

	*/
	
	EXEC MS_InsereRelatorio
		@rlt_id = 327 -- ID do relat�rio. (Obrigat�rio, igual ao enumerador do sistema)
		,@rlt_nome = 'RelatorioAcoesRealizadas' -- Nome do relatorio. (Obrigat�rio, igual a descric��o do enumerador do sistema)

	-- Insere o relat�rio no Gest�oEscolar
	EXEC MS_InsereRelatorio
		@rlt_id = 326 -- ID do relat�rio. (Obrigat�rio, igual ao enumerador do sistema)
		,@rlt_nome = 'GraficoJustificativaFalta' -- Nome do relatorio. (Obrigat�rio, igual a descric��o do enumerador do sistema)

	EXEC MS_InsereRelatorio
		@rlt_id = 325 -- ID do relat�rio. (Obrigat�rio, igual ao enumerador do sistema)
		,@rlt_nome = 'RelatorioGeralAtendimento' -- Nome do relatorio. (Obrigat�rio, igual a descric��o do enumerador do sistema)


	-- Altera��o na op��o do menudo do relat�rio de docente
	update cfg_relatoriodocumentodocente 
		set rdd_nomeDocumento = 'Resumo das atividades desenvolvidas' 
		where rlt_id = 248	

-- Fechar transa��o
SET XACT_ABORT OFF
COMMIT TRANSACTION
GO