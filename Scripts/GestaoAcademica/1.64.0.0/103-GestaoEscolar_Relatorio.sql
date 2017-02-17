USE [GestaoPedagogica]
GO

--Iniciar transa��o
BEGIN TRANSACTION
SET XACT_ABORT ON

	EXEC MS_InsereRelatorio
		@rlt_id = 317 -- ID do relat�rio. (Obrigat�rio, igual ao enumerador do sistema)
		,@rlt_nome = 'DivergenciasRematriculas' -- Nome do relatorio. (Obrigat�rio, igual a descric��o do enumerador do sistema)

-- Fechar transa��o
SET XACT_ABORT OFF
COMMIT TRANSACTION
GO