USE [CoreSSO]
GO

--Iniciar transa��o
BEGIN TRANSACTION
SET XACT_ABORT ON

	DECLARE @nomeSistema VARCHAR(100) = ' SGP'
	DECLARE @sis_id INT = (SELECT TOP 1 sis_id FROM SYS_Sistema AS Sis WITH(NOLOCK) WHERE Sis.sis_nome = @nomeSistema AND Sis.sis_situacao <> 3)
	DECLARE @dataAtual DATETIME = GETDATE()

	DECLARE @tbGrupos AS TABLE (
		id UNIQUEIDENTIFIER NOT NULL,
		semGrupoOrigem BIT NOT NULL,
		vis_id INT NOT NULL DEFAULT(3),
		gru_nomeOrigemCopia VARCHAR(50) NOT NULL,
		gru_nomeNovo VARCHAR(50) NOT NULL,
		chaveGrupoPadrao VARCHAR(100) NULL,
		gru_idOrigemCopia UNIQUEIDENTIFIER NULL,
		gru_idNovo UNIQUEIDENTIFIER NULL
	)

	DECLARE @tbPermissao AS TABLE (
		gru_nome VARCHAR(50) NOT NULL,
		mod_nome VARCHAR(50) NOT NULL,
		grp_consultar BIT NOT NULL,
		grp_inserir BIT NOT NULL,
		grp_alterar BIT NOT NULL,
		grp_excluir BIT NOT NULL
	)

	INSERT INTO @tbGrupos (id, semGrupoOrigem, gru_nomeOrigemCopia, gru_nomeNovo, chaveGrupoPadrao)
	VALUES 
		(NEWID(), 0, 'Secret�rio Escolar', 'Secret�rio Escolar Infantil', NULL),
		(NEWID(), 0, 'Diretor Escolar', 'Diretor Escolar Infantil Terceirizada', 'padrao_diretor_terceirizado'),
		(NEWID(), 0, 'Secret�rio Escolar', 'Secret�rio Escolar Infantil Terceirizado', 'padrao_secretario_terceirizado'),
		(NEWID(), 0, 'Docente - CJ e outros', 'Docente - CJ e outros terceirizado', 'padrao_docente_terceirizado')

	INSERT INTO @tbPermissao(gru_nome, mod_nome, grp_consultar, grp_inserir, grp_alterar, grp_excluir)
	VALUES
		--> Secret�rio Escolar Infantil - Retirar as permiss�es no Hist�rico
		('Secret�rio Escolar Infantil', 'Hist�rico escolar', 0, 0, 0, 0),
		('Secret�rio Escolar Infantil', 'Dados do aluno', 0, 0, 0, 0),
		('Secret�rio Escolar Infantil', 'Ensino fundamental', 0, 0, 0, 0),
		('Secret�rio Escolar Infantil', 'Transfer�ncia', 0, 0, 0, 0),
		('Secret�rio Escolar Infantil', 'Informa��es complementares', 0, 0, 0, 0),
		--> Secret�rio Escolar Infantil - Retirar as permiss�es para Diverg�ncias das rematr�culas
		('Secret�rio Escolar Infantil', 'Diverg�ncias das rematr�culas', 0, 0, 0, 0),

		--> Diretor Escolar Infantil Terceirizada - Incluir permiss�o de inclus�o/edi��o/consulta e exclus�o para Cadastro de Docente e Cadastro de Funcion�rios
		('Diretor Escolar Infantil Terceirizada', 'Administra��o', 1, 1, 1, 1),
		('Diretor Escolar Infantil Terceirizada', 'Docentes', 1, 1, 1, 1),
		('Diretor Escolar Infantil Terceirizada', 'Recursos humanos', 1, 1, 1, 1),
		('Diretor Escolar Infantil Terceirizada', 'Funcion�rios', 1, 1, 1, 1),
		('Diretor Escolar Infantil Terceirizada', 'Manuten��o de Docentes', 1, 1, 1, 1),
		--> Diretor Escolar Infantil Terceirizada - Incluir permiss�o de inclus�o/edi��o/consulta e exclus�o para Atribui��o de Docente
		('Diretor Escolar Infantil Terceirizada', 'Atribui��o de Docentes', 1, 1, 1, 1),
		--> Diretor Escolar Infantil Terceirizada - Retirar as permiss�es no Hist�rico
		('Diretor Escolar Infantil Terceirizada', 'Hist�rico escolar', 0, 0, 0, 0),
		('Diretor Escolar Infantil Terceirizada', 'Dados do aluno', 0, 0, 0, 0),
		('Diretor Escolar Infantil Terceirizada', 'Ensino fundamental', 0, 0, 0, 0),
		('Diretor Escolar Infantil Terceirizada', 'Transfer�ncia', 0, 0, 0, 0),
		('Diretor Escolar Infantil Terceirizada', 'Informa��es complementares', 0, 0, 0, 0),
		--> Diretor Escolar Infantil Terceirizada - Retirar as permiss�es para Diverg�ncias das rematr�culas
		('Diretor Escolar Infantil Terceirizada', 'Diverg�ncias das rematr�culas', 0, 0, 0, 0),
		--> Diretor Escolar Infantil Terceirizada - Retirar as permiss�es para Atribui��o espor�dica
		('Diretor Escolar Infantil Terceirizada', 'Atribui��o espor�dica', 0, 0, 0, 0),

		--> Secret�rio Escolar Infantil Terceirizado - Incluir permiss�o de inclus�o/edi��o/consulta e exclus�o para Cadastro de Docente e Cadastro de Funcion�rios
		('Secret�rio Escolar Infantil Terceirizado', 'Administra��o', 1, 1, 1, 1),
		('Secret�rio Escolar Infantil Terceirizado', 'Docentes', 1, 1, 1, 1),
		('Secret�rio Escolar Infantil Terceirizado', 'Recursos humanos', 1, 1, 1, 1),
		('Secret�rio Escolar Infantil Terceirizado', 'Funcion�rios', 1, 1, 1, 1),
		('Secret�rio Escolar Infantil Terceirizado', 'Manuten��o de Docentes', 1, 1, 1, 1),
		--> Secret�rio Escolar Infantil Terceirizado - Incluir permiss�o de inclus�o/edi��o/consulta e exclus�o para Atribui��o de Docente
		('Secret�rio Escolar Infantil Terceirizado', 'Atribui��o de Docentes', 1, 1, 1, 1),
		--> Secret�rio Escolar Infantil Terceirizado - Retirar as permiss�es no Hist�rico
		('Secret�rio Escolar Infantil Terceirizado', 'Hist�rico escolar', 0, 0, 0, 0),
		('Secret�rio Escolar Infantil Terceirizado', 'Dados do aluno', 0, 0, 0, 0),
		('Secret�rio Escolar Infantil Terceirizado', 'Ensino fundamental', 0, 0, 0, 0),
		('Secret�rio Escolar Infantil Terceirizado', 'Transfer�ncia', 0, 0, 0, 0),
		('Secret�rio Escolar Infantil Terceirizado', 'Informa��es complementares', 0, 0, 0, 0),
		--> Secret�rio Escolar Infantil Terceirizado - Retirar as permiss�es para Diverg�ncias das rematr�culas
		('Secret�rio Escolar Infantil Terceirizado', 'Diverg�ncias das rematr�culas', 0, 0, 0, 0),
		--> Secret�rio Escolar Infantil Terceirizado - Retirar as permiss�es para Atribui��o espor�dica
		('Secret�rio Escolar Infantil Terceirizado', 'Atribui��o espor�dica', 0, 0, 0, 0),

		--> Docente - CJ e outros terceirizado - Incluir permiss�o de inclus�o/edi��o/consulta e exclus�o para Atribui��o de Docente
		('Docente - CJ e outros terceirizado', 'Administra��o', 1, 1, 1, 1),
		('Docente - CJ e outros terceirizado', 'Docentes', 1, 1, 1, 1),
		('Docente - CJ e outros terceirizado', 'Atribui��o de Docentes', 1, 1, 1, 1),
		--> Docente - Retirar as permiss�es no Hist�rico
		('Docente - CJ e outros terceirizado', 'Hist�rico escolar', 0, 0, 0, 0),
		('Docente - CJ e outros terceirizado', 'Dados do aluno', 0, 0, 0, 0),
		('Docente - CJ e outros terceirizado', 'Ensino fundamental', 0, 0, 0, 0),
		('Docente - CJ e outros terceirizado', 'Transfer�ncia', 0, 0, 0, 0),
		('Docente - CJ e outros terceirizado', 'Informa��es complementares', 0, 0, 0, 0),
		--> Docente - Retirar as permiss�es para Diverg�ncias das rematr�culas
		('Docente - CJ e outros terceirizado', 'Diverg�ncias das rematr�culas', 0, 0, 0, 0),
		
		-- Grupos n�o terceirizados - Retirar permiss�o de inclus�o/edi��o/consulta e exclus�o para Cadastro de Docente e Cadastro de Funcion�rios
		('Secret�rio Escolar', 'Funcion�rios', 0, 0, 0, 0),
		('Secret�rio Escolar', 'Manuten��o de Docentes', 0, 0, 0, 0),
		('Diretor Escolar', 'Funcion�rios', 0, 0, 0, 0),
		('Diretor Escolar', 'Manuten��o de Docentes', 0, 0, 0, 0),
		('Docente - CJ e outros', 'Funcion�rios', 0, 0, 0, 0),
		('Docente - CJ e outros', 'Manuten��o de Docentes', 0, 0, 0, 0)

	DECLARE @id UNIQUEIDENTIFIER
	DECLARE @semGrupoOrigem BIT
	DECLARE @gru_nomeOrigemCopia VARCHAR(50)
	DECLARE @gru_nomeNovo VARCHAR(50)
	DECLARE @vis_id INT

	DECLARE cursor_objects CURSOR FOR
		SELECT id, semGrupoOrigem, gru_nomeOrigemCopia, gru_nomeNovo, vis_id
		FROM @tbGrupos

	OPEN cursor_objects
	FETCH NEXT FROM cursor_objects INTO @id, @semGrupoOrigem, @gru_nomeOrigemCopia, @gru_nomeNovo, @vis_id

	WHILE @@FETCH_STATUS = 0
	BEGIN
		DECLARE @gru_id UNIQUEIDENTIFIER = NULL
		DECLARE @gru_idNovo UNIQUEIDENTIFIER = NEWID()

		--Seleciona o ID do grupo de origem.
		SELECT @gru_id = gru_id 
		FROM SYS_Grupo AS Gru WITH(NOLOCK)
		WHERE
			Gru.sis_id = @sis_id
			AND Gru.gru_nome = LTRIM(RTRIM(@gru_nomeOrigemCopia))
			AND Gru.gru_situacao <> 3

		IF (@gru_id IS NOT NULL OR @semGrupoOrigem = 1)
		BEGIN
			IF NOT EXISTS (SELECT TOP 1 Gru.gru_id FROM SYS_Grupo AS Gru WITH(NOLOCK) WHERE Gru.sis_id = @sis_id AND Gru.gru_nome = @gru_nomeNovo AND Gru.gru_situacao <> 3)
			BEGIN
				IF (@semGrupoOrigem = 0)
				BEGIN
					--Insere o grupo
					INSERT INTO SYS_Grupo(gru_id, gru_nome, gru_situacao, gru_dataCriacao, gru_dataAlteracao, vis_id, sis_id, gru_integridade)
					SELECT
						@gru_idNovo, 
						LTRIM(RTRIM(@gru_nomeNovo)), 
						1 AS gru_situacao, 
						@dataAtual, 
						@dataAtual, 
						vis_id, 
						@sis_id, 
						0 AS gru_integridade
					FROM 
						SYS_Grupo AS Gru WITH(NOLOCK)
					WHERE
						Gru.gru_id = @gru_id
						AND Gru.sis_id = @sis_id
				END
				ELSE
				BEGIN
					INSERT INTO SYS_Grupo(gru_id, gru_nome, gru_situacao, gru_dataCriacao, gru_dataAlteracao, vis_id, sis_id, gru_integridade)
					VALUES (
						@gru_idNovo, 
						LTRIM(RTRIM(@gru_nomeNovo)), 
						1, --gru_situacao
						@dataAtual, 
						@dataAtual, 
						@vis_id, 
						@sis_id, 
						0 -- gru_integridade
					)
				END
			END
			ELSE
			BEGIN
				SET @gru_idNovo = (SELECT TOP 1 Gru.gru_id FROM SYS_Grupo AS Gru WITH(NOLOCK) WHERE Gru.sis_id = @sis_id AND Gru.gru_nome = @gru_nomeNovo AND Gru.gru_situacao <> 3)
			END

			IF (@semGrupoOrigem = 0)
			BEGIN
				-- Insere as permissoes do grupo, caso nao exista.
				INSERT INTO SYS_GrupoPermissao(gru_id, sis_id, mod_id, grp_consultar, grp_inserir, grp_alterar, grp_excluir)
				SELECT DISTINCT
					@gru_idNovo, @sis_id, mod_id, grp_consultar, grp_inserir, grp_alterar, grp_excluir 
				FROM 
					SYS_GrupoPermissao AS Grp WITH(NOLOCK)
				WHERE 
					Grp.gru_id = @gru_id
					AND Grp.sis_id = @sis_id
					AND NOT EXISTS (
						SELECT TOP 1 GrpNovo.gru_id 
						FROM SYS_GrupoPermissao AS GrpNovo WITH(NOLOCK) 
						WHERE
							GrpNovo.gru_id = @gru_idNovo
							AND GrpNovo.sis_id = @sis_id
							AND GrpNovo.mod_id = Grp.mod_id
					)
				ORDER BY
					Grp.mod_id
			END
			ELSE
			BEGIN
				INSERT INTO SYS_GrupoPermissao(gru_id, sis_id, mod_id, grp_consultar, grp_inserir, grp_alterar, grp_excluir)
				SELECT DISTINCT
					@gru_idNovo, @sis_id, mod_id, 0 AS grp_consultar, 0 AS grp_inserir, 0 AS grp_alterar, 0 AS grp_excluir 
				FROM 
					SYS_GrupoPermissao AS Grp WITH(NOLOCK)
				WHERE 
					Grp.sis_id = @sis_id
					AND NOT EXISTS (
						SELECT TOP 1 GrpNovo.gru_id 
						FROM SYS_GrupoPermissao AS GrpNovo WITH(NOLOCK) 
						WHERE
							GrpNovo.gru_id = @gru_idNovo
							AND GrpNovo.sis_id = @sis_id
							AND GrpNovo.mod_id = Grp.mod_id
					)
				ORDER BY
					Grp.mod_id
			END

			--Atualiza os ids na tabela de origem
			UPDATE @tbGrupos
			SET 
				gru_idOrigemCopia = @gru_id,
				gru_idNovo = @gru_idNovo
			WHERE
				id = @id
		END
		ELSE
		BEGIN
			PRINT 'O grupo de origem ' + @gru_nomeOrigemCopia + ' N�o existe'
		END

		FETCH NEXT FROM cursor_objects INTO @id, @semGrupoOrigem, @gru_nomeOrigemCopia, @gru_nomeNovo, @vis_id
	END

	CLOSE cursor_objects
	DEALLOCATE cursor_objects 

	-- Inserindo parametro de grupo padr�o
	INSERT INTO SYS_ParametroGrupoPerfil(pgs_id, pgs_chave, gru_id, pgs_situacao, pgs_dataCriacao, pgs_dataAlteracao)
	SELECT NEWID(), LTRIM(RTRIM(chaveGrupoPadrao)), gru_idNovo, 1 AS pgs_situacao, @dataAtual, @dataAtual
	FROM @tbGrupos G
	WHERE
		chaveGrupoPadrao IS NOT NULL
		AND NOT EXISTS (
			SELECT Pgs.pgs_id 
			FROM SYS_ParametroGrupoPerfil Pgs WITH(NOLOCK)
			WHERE
				LTRIM(RTRIM(Pgs.pgs_chave)) = LTRIM(RTRIM(chaveGrupoPadrao))
				AND Pgs.gru_id = G.gru_idNovo
				AND Pgs.pgs_situacao <> 3
		)

	--Tratando regras especificas dos grupos
	UPDATE Grp
	SET 
		Grp.grp_consultar = P.grp_consultar, 
		Grp.grp_inserir = P.grp_inserir, 
		Grp.grp_alterar = P.grp_alterar, 
		Grp.grp_excluir = P.grp_excluir
	FROM 
		@tbPermissao P 
		INNER JOIN SYS_Grupo Gru WITH(NOLOCK)
			ON Gru.gru_nome = LTRIM(RTRIM(P.gru_nome))
			AND Gru.sis_id = @sis_id
			AND Gru.gru_situacao <> 3
		INNER JOIN SYS_GrupoPermissao Grp WITH(NOLOCK)
			ON Grp.gru_id = Gru.gru_id
			AND Grp.sis_id = @sis_id
		INNER JOIN SYS_Modulo AS M WITH(NOLOCK) 
			ON Grp.sis_id = M.sis_id
			AND Grp.mod_id = M.mod_id
			AND LTRIM(RTRIM(P.mod_nome)) = LTRIM(RTRIM(M.mod_nome))
			AND M.mod_situacao <> 3

--Fechar transa��o
SET XACT_ABORT OFF
COMMIT TRANSACTION