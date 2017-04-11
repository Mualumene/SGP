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
	
	DECLARE @tme_ids VARCHAR(100) = STUFF
									(
										(SELECT
											',' + CAST(tme.tme_id AS VARCHAR)
										FROM ACA_TipoModalidadeEnsino tme WITH(NOLOCK)
										WHERE
											tme.tme_nome IN ('EJA Especial', 'EJA Modular', 'CIEJA')
											AND tme.tme_idSuperior IS NOT NULL
											AND tme.tme_situacao <> 3
										FOR XML PATH(''))
									, 1, 1,'')

	DECLARE @pac_id INT;
	SELECT TOP 1 @pac_id = pac_id
	FROM ACA_ParametroAcademico WITH(NOLOCK)
	WHERE pac_chave = 'TIPO_MODALIDADES_EJA_REMOVER_RELATORIO'
	AND ISNULL(ent_id, @entId) = @entId
	AND pac_situacao <> 3

	IF (ISNULL(@pac_id, 0) > 0)
	BEGIN
		UPDATE ACA_ParametroAcademico
		SET pac_valor = @tme_ids
		WHERE pac_id = @pac_id
	END
	ELSE
	BEGIN
		EXEC MS_InsereParametroAcademico
			@pac_chave = 'TIPO_MODALIDADES_EJA_REMOVER_RELATORIO' -- Chave do par�metro. (Obrigat�rio)
			,@pac_valor = @tme_ids -- Valor do par�metro. (Obrigat�rio)
			,@pac_descricao = 'Modalidades de ensino que se referem � modalidade EJA para n�o aparecer nos relat�rios.' -- Descri��o do par�metro. (Obrigat�rio)
			,@pac_obrigatorio = 0 -- indica se o par�metro � obrigat�rio no sistema. (Obrigat�rio)
			,@ent_id = @entId
	END

-- Fechar transa��o	
SET XACT_ABORT OFF
COMMIT TRANSACTION