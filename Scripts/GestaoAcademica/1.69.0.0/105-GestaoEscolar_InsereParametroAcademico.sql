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

	DECLARE @tne_id VARCHAR(5) = (SELECT TOP 1 CAST(tne_id AS VARCHAR(5)) FROM ACA_TipoNivelEnsino WITH(NOLOCK) WHERE tne_nome = 'Ensino M�dio' AND tne_situacao <> 3)

	EXEC MS_InsereParametroAcademico
		@pac_chave = 'TIPO_NIVEL_ENSINO_MEDIO' -- Chave do par�metro. (Obrigat�rio)
		,@pac_valor = @tne_id -- Valor do par�metro. (Obrigat�rio)
		,@pac_descricao = 'N�vel de ensino que se refere ao curso do ensino m�dio' -- Descri��o do par�metro. (Obrigat�rio)
		,@pac_obrigatorio = 1 -- indica se o par�metro � obrigat�rio no sistema. (Obrigat�rio)
		,@ent_id = @entId

-- Fechar transa��o	
SET XACT_ABORT OFF
COMMIT TRANSACTION

GO