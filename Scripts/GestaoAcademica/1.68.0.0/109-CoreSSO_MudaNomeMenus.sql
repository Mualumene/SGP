USE [CoreSSO]
GO

BEGIN TRANSACTION 
SET XACT_ABORT ON   

	DECLARE @sis_id INT = 102

	DECLARE @mod_idPai INT

	SET @mod_idPai = (SELECT mod_id FROM [SYS_Modulo] WHERE mod_nome = 'Documentos' and sis_id = @sis_id and mod_situacao = 1)

	IF(@mod_idPai <> NULL)
	BEGIN
		--MODULO PAI
		UPDATE m
		SET m.mod_nome = 'Relat�rios'
		FROM [SYS_Modulo] m
		WHERE m.sis_id = @sis_id
		--and m.mod_idPai = @mod_idPai
		and m.mod_id = @mod_idPai
		and m.mod_situacao = 1

		--MODULO
		UPDATE m
		SET m.mod_nome = 'Alunos'
		FROM [SYS_Modulo] m
		WHERE m.sis_id = @sis_id
		and m.mod_idPai = @mod_idPai
		and m.mod_nome = 'Documentos do aluno'
		and m.mod_situacao = 1

		--SITEMAP
		UPDATE msp
		SET msp.msm_nome = 'Alunos'
		FROM [SYS_ModuloSiteMap] msp
		WHERE msm_nome = 'Documentos do aluno'
		and sis_id = @sis_id

		--MODULO
		UPDATE m
		SET m.mod_nome = 'Docente'
		FROM [SYS_Modulo] m
		WHERE m.sis_id = @sis_id
		and m.mod_idPai = @mod_idPai
		and m.mod_nome = 'Documentos do docente'
		and m.mod_situacao = 1

		--SITEMAP
		UPDATE msp
		SET msp.msm_nome = 'Docente'
		FROM [SYS_ModuloSiteMap] msp
		WHERE msm_nome = 'Documentos do docente'
		and sis_id = @sis_id

		--MODULO
		UPDATE m
		SET m.mod_nome = 'Gestor'
		FROM [SYS_Modulo] m
		WHERE m.sis_id = @sis_id
		and m.mod_idPai = @mod_idPai
		and m.mod_nome = 'Documentos do gestor'
		and m.mod_situacao = 1

		--SITEMAP
		UPDATE msp
		SET msp.msm_nome = 'Gestor'
		FROM [SYS_ModuloSiteMap] msp
		WHERE msm_nome = 'Documentos do gestor'
		and sis_id = @sis_id

		SET @mod_idPai = (SELECT mod_id FROM [SYS_Modulo] WHERE mod_nome = 'Cadastros' and sis_id = @sis_id and mod_situacao = 1)

		IF(@mod_idPai <> NULL)
		BEGIN
			
			DECLARE @mod_id INT = (SELECT TOP 1 mod_id FROM SYS_Modulo WITH(NOLOCK) WHERE mod_nome = '�reas' AND sis_id = @sis_id AND mod_situacao <> 3)
			
			IF(@mod_id <> NULL)
			BEGIN
				UPDATE msp
				SET msp.msm_nome = 'Cadastro de links/documentos'
				FROM [SYS_ModuloSitemap] msp
				WHERE msp.msm_nome = 'Cadastro de documentos'
				and msp.sis_id = @sis_id 
				and msp.mod_id = @mod_id 
				and msp.mod_situacao = 1
				
				UPDATE msp
				SET msp.msm_nome = 'Cadastro de documentos'
				FROM [SYS_ModuloSitemap] msp
				WHERE msp.msm_nome = 'Cadastro de �reas para links e documentos.'
				and msp.sis_id = @sis_id 
				and msp.mod_id = @mod_id 
				and msp.mod_situacao = 1

				UPDATE msp
				SET msp.msm_nome = 'Busca de documentos'
				FROM [SYS_ModuloSiteMap] msp
				WHERE msm_nome = 'Busca de �reas'
				and sis_id = @sis_id
				and mod_id = @mod_id
				and msm_situacao = 1
			END
			
			--MODULO
			UPDATE m
			SET m.mod_nome = 'Documentos'
			FROM [SYS_Modulo] m
			WHERE m.sis_id = @sis_id
			and m.mod_idPai = @mod_idPai
			and m.mod_id = @mod_id
			and m.mod_situacao = 1
		END
	END
	
-- Fechar transa��o     
SET XACT_ABORT OFF 
COMMIT TRANSACTION