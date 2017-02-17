USE [GestaoPedagogica]
GO

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
	
	DECLARE @tpcId INT;
	SELECT TOP 1 @tpcId = tpc_id
	FROM ACA_TipoPeriodoCalendario WITH(NOLOCK)
	WHERE tpc_nome = 'Recesso'
	IF (@tpcId = 0 OR @tpcId IS NULL)
	BEGIN
	INSERT INTO [dbo].[ACA_TipoPeriodoCalendario]
           ([tpc_nome]
           ,[tpc_ordem]
           ,[tpc_foraPeriodoLetivo]
           ,[tpc_situacao]
           ,[tpc_dataCriacao]
           ,[tpc_dataAlteracao])
     VALUES
           ('Recesso'
           ,999
           ,0
           ,1
           ,GETDATE()
           ,GETDATE())
	END

	SELECT TOP 1 @tpcId = tpc_id
	FROM ACA_TipoPeriodoCalendario WITH(NOLOCK)
	WHERE tpc_nome = 'Recesso'

	EXEC MS_InsereParametroAcademico
		@pac_chave = 'TIPO_PERIODO_CALENDARIO_RECESSO' -- Chave do par�metro. (Obrigat�rio)
		,@pac_valor = @tpcId -- Valor do par�metro. (Obrigat�rio)
		,@pac_descricao = 'Tipo de per�odo do calend�rio de recesso' -- Descri��o do par�metro. (Obrigat�rio)
		,@pac_obrigatorio = 0 -- indica se o par�metro � obrigat�rio no sistema. (Obrigat�rio)
		,@ent_id = @entId

-- Fechar transa��o     
SET XACT_ABORT OFF 
COMMIT TRANSACTION
