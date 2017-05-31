USE [GestaoPedagogica]
GO

--Iniciar transa��o
BEGIN TRANSACTION
SET XACT_ABORT ON

	DECLARE @entId as uniqueidentifier;
	SELECT TOP 1 @entId = sse.ent_id 
	FROM 
		Synonym_SYS_SistemaEntidade AS sse WITH(NOLOCK)
		INNER JOIN  Synonym_SYS_Sistema AS ss WITH(NOLOCK)
			ON sse.sis_id = ss.sis_id
	WHERE 
		ss.sis_nome = ' SGP'

	/***************
		Copiar do exemplo abaixo.
	****************
	
	-- Insere o par�metro academico no sistema.
	EXEC MS_InsereParametroAcademico
		@pac_chave = 'EXIBIR_NOTAFINAL_LANCAMENTO_AVALIACOES' -- Chave do par�metro. (Obrigat�rio)
		,@pac_valor = 'False' -- Valor do par�metro. (Obrigat�rio)
		,@pac_descricao = 'Permitir c�lculo/lan�amento da M�dia das Atividades Avaliativas.' -- Descri��o do par�metro. (Obrigat�rio)
		,@pac_obrigatorio = 0 -- indica se o par�metro � obrigat�rio no sistema. (Obrigat�rio)
		,@ent_id = @entId

	*/

	
	EXEC MS_InsereParametroAcademico
		@pac_chave = 'TIPO_MODALIDADE_EJA' -- Chave do par�metro. (Obrigat�rio)
		,@pac_valor = '6' -- Valor do par�metro. (Obrigat�rio)
		,@pac_descricao = 'Modalidade de ensino que se refere a modalidade EJA.' -- Descri��o do par�metro. (Obrigat�rio)
		,@pac_obrigatorio = 0 -- indica se o par�metro � obrigat�rio no sistema. (Obrigat�rio)
		,@ent_id = @entId

	EXEC MS_InsereParametroAcademico
		@pac_chave = 'TIPO_MODALIDADE_CIEJA' -- Chave do par�metro. (Obrigat�rio)
		,@pac_valor = '8' -- Valor do par�metro. (Obrigat�rio)
		,@pac_descricao = 'Modalidade de ensino que se refere a modalidade CIEJA.' -- Descri��o do par�metro. (Obrigat�rio)
		,@pac_obrigatorio = 0 -- indica se o par�metro � obrigat�rio no sistema. (Obrigat�rio)
		,@ent_id = @entId
	

-- Fechar transa��o	
SET XACT_ABORT OFF
COMMIT TRANSACTION

GO