USE [GestaoPedagogica]
GO

BEGIN TRANSACTION 
SET XACT_ABORT ON  

	DECLARE @sis_id INT, @gru_idSecretarioEscolar UNIQUEIDENTIFIER, @gru_idSecretarioEscolarTerceirizado UNIQUEIDENTIFIER

	SET @sis_id = (SELECT sis_id FROM Synonym_SYS_Sistema WHERE sis_nome = ' SGP' AND sis_situacao = 1)
	SET @gru_idSecretarioEscolar = (SELECT gru_id FROM Synonym_SYS_Grupo WHERE gru_nome = 'Secret�rio Escolar Infantil' AND gru_situacao <> 3)
	SET @gru_idSecretarioEscolarTerceirizado = (SELECT gru_id FROM Synonym_SYS_Grupo WHERE gru_nome = 'Secret�rio Escolar Infantil Terceirizado' AND gru_situacao <> 3)

	---- Insere as permiss�es nas telas
	---- Minhas turmas exceto anota��es do aluno e observa��es do fechamento
	DECLARE @mod_idDocentes INT, @modIdMinhasTurmas INT

	SET @mod_idDocentes = (SELECT mod_id FROM Synonym_SYS_Modulo WHERE sis_id = @sis_id AND mod_nome = 'Docentes' AND mod_situacao = 1)
	SET @modIdMinhasTurmas = (SELECT mod_id FROM Synonym_SYS_Modulo WHERE sis_id = @sis_id AND mod_nome = 'Minhas turmas' AND mod_idPai = @mod_idDocentes AND mod_situacao = 1)
	
	IF NOT EXISTS (SELECT mod_id FROM CFG_PermissaoModuloOperacao WHERE gru_id = @gru_idSecretarioEscolar AND sis_id = @sis_id AND mod_id = @modIdMinhasTurmas AND pmo_operacao = 15)
	BEGIN
		INSERT INTO CFG_PermissaoModuloOperacao
		(
			gru_id, 
			sis_id, 
			mod_id, 
			pmo_operacao, 
			pmo_permissaoConsulta, 
			pmo_permissaoEdicao, 
			pmo_permissaoInclusao, 
			pmo_permissaoExclusao
		)
		VALUES
		(
			@gru_idSecretarioEscolar,
			@sis_id,
			@modIdMinhasTurmas,
			15, -- Opera��o para lan�amento de frequ�ncia
			1,
			1,
			1,
			1
		)
	END
	ELSE
	BEGIN
		UPDATE CFG_PermissaoModuloOperacao
			SET pmo_permissaoConsulta = 1, 
				pmo_permissaoInclusao = 1, 
				pmo_permissaoEdicao = 1, 
				pmo_permissaoExclusao = 1
		WHERE 
			gru_id = @gru_idSecretarioEscolar AND
			sis_id = @sis_id AND
			mod_id = @modIdMinhasTurmas AND
			pmo_operacao = 15
	END

	IF NOT EXISTS (SELECT mod_id FROM CFG_PermissaoModuloOperacao WHERE gru_id = @gru_idSecretarioEscolarTerceirizado AND sis_id = @sis_id AND mod_id = @modIdMinhasTurmas AND pmo_operacao = 15)
	BEGIN
		INSERT INTO CFG_PermissaoModuloOperacao
		(
			gru_id, 
			sis_id, 
			mod_id, 
			pmo_operacao, 
			pmo_permissaoConsulta, 
			pmo_permissaoEdicao, 
			pmo_permissaoInclusao, 
			pmo_permissaoExclusao
		)
		VALUES
		(
			@gru_idSecretarioEscolarTerceirizado,
			@sis_id,
			@modIdMinhasTurmas,
			15, -- Opera��o para lan�amento de frequ�ncia
			1,
			1,
			1,
			1
		)
	END
	ELSE
	BEGIN
		UPDATE CFG_PermissaoModuloOperacao
			SET pmo_permissaoConsulta = 1, 
				pmo_permissaoInclusao = 1, 
				pmo_permissaoEdicao = 1, 
				pmo_permissaoExclusao = 1
		WHERE 
			gru_id = @gru_idSecretarioEscolarTerceirizado AND
			sis_id = @sis_id AND
			mod_id = @modIdMinhasTurmas AND
			pmo_operacao = 15
	END

-- Fechar transa��o     
SET XACT_ABORT OFF 
COMMIT TRANSACTION