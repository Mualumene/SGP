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
		@rlt_id = 323 -- ID do relat�rio. (Obrigat�rio, igual ao enumerador do sistema)
		,@rlt_nome = 'RelatorioSugestoesCurriculo' -- Nome do relatorio. (Obrigat�rio, igual a descric��o do enumerador do sistema)

-- Fechar transa��o
SET XACT_ABORT OFF
COMMIT TRANSACTION
GO