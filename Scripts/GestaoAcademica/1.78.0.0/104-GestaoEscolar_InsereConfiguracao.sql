USE [PUB_DEV_SPO_GestaoPedagogica]
GO

--Iniciar transa��o
BEGIN TRANSACTION
SET XACT_ABORT ON

	/***************
		Copiar do exemplo abaixo.
	****************
	
	-- Insere o configura��o no sistema.
	EXEC MS_InsereConfiguracao
		@cfg_chave = N'AppAlunoFrequenciaLimite' -- Chave da configura��o. (Obrigat�rio)
		,@cfg_valor = N'#FA3440' -- Valor da configura��o. (Obrigat�rio)
		,@cfg_descricao = N'Cor para o aluno com frequ�ncia final abaixo do limite.' -- Descri��o da configura��o. (Obrigat�rio)
		,@configuracaoInterna = 1 -- Flag que indica se � configura��o interna do sistema. N�o permite excluir. (Obrigat�rio)
	*/

-- Fechar transa��o	
SET XACT_ABORT OFF
COMMIT TRANSACTION