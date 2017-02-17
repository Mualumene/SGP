USE [GestaoPedagogica]
GO

--Iniciar transa��o
BEGIN TRANSACTION
SET XACT_ABORT ON

	-- Insere o configura��o no sistema.
	EXEC MS_InsereConfiguracao
		@cfg_chave = N'AppURLAreaAlunoInfantil' -- Chave da configura��o. (Obrigat�rio)
		,@cfg_valor = N'infantilonline.sme.prefeitura.sp.gov.br' -- Valor da configura��o. (Obrigat�rio)
		,@cfg_descricao = N'URL da �rea do aluno para Ensino Infantil.' -- Descri��o da configura��o. (Obrigat�rio)
		,@configuracaoInterna = 1 -- Flag que indica se � configura��o interna do sistema. N�o permite excluir. (Obrigat�rio)
		
-- Fechar transa��o	
SET XACT_ABORT OFF
COMMIT TRANSACTION