USE [PUB_DEV_SPO_CoreSSO]
GO

--Iniciar transa��o
BEGIN TRANSACTION
SET XACT_ABORT ON

	DECLARE @sisId INT = 102
	DECLARE @modId INT
	DECLARE @modIdPai INT

	-- Coloca por �ltimo o item 'Sugest�es de curr�culos'
	-- dentro do item 'Gerais'
	SELECT @modIdPai = mod_id
	FROM SYS_Modulo modu WITH(NOLOCK)
	WHERE
	sis_id = @sisId 
	AND modu.mod_nome = 'Gerais'
	AND modu.mod_situacao <> 3

	SELECT @modId = mod_id
	FROM SYS_Modulo modu WITH(NOLOCK)
	WHERE
	sis_id = @sisId 
	AND modu.mod_idPai = @modIdPai
	AND modu.mod_nome = 'Sugest�es de curr�culos'
	AND modu.mod_situacao <> 3

	UPDATE SYS_VisaoModuloMenu
	SET vmm_ordem = 
		(
			SELECT MAX(vmm.vmm_ordem) + 1
			FROM SYS_VisaoModuloMenu vmm WITH(NOLOCK)
			INNER JOIN SYS_Modulo modu WITH(NOLOCK)
				ON modu.sis_id = vmm.sis_id
				AND modu.mod_id = vmm.mod_id
				AND modu.mod_idPai = @modIdPai
				AND modu.mod_situacao <> 3
			WHERE
			vmm.vis_id = 1
			AND vmm.sis_id = @sisId
		)
	WHERE
	vis_id = 1
	AND sis_id = @sisId
	AND mod_id = @modId

	UPDATE SYS_VisaoModuloMenu
	SET vmm_ordem = 
		(
			SELECT MAX(vmm.vmm_ordem) + 1
			FROM SYS_VisaoModuloMenu vmm WITH(NOLOCK)
			INNER JOIN SYS_Modulo modu WITH(NOLOCK)
				ON modu.sis_id = vmm.sis_id
				AND modu.mod_id = vmm.mod_id
				AND modu.mod_idPai = @modIdPai
				AND modu.mod_situacao <> 3
			WHERE
			vmm.vis_id = 2
			AND vmm.sis_id = @sisId
		)
	WHERE
	vis_id = 2
	AND sis_id = @sisId
	AND mod_id = @modId

	UPDATE SYS_VisaoModuloMenu
	SET vmm_ordem = 
		(
			SELECT MAX(vmm.vmm_ordem) + 1
			FROM SYS_VisaoModuloMenu vmm WITH(NOLOCK)
			INNER JOIN SYS_Modulo modu WITH(NOLOCK)
				ON modu.sis_id = vmm.sis_id
				AND modu.mod_id = vmm.mod_id
				AND modu.mod_idPai = @modIdPai
				AND modu.mod_situacao <> 3
			WHERE
			vmm.vis_id = 3
			AND vmm.sis_id = @sisId
		)
	WHERE
	vis_id = 3
	AND sis_id = @sisId
	AND mod_id = @modId	

	-- Coloca por �ltimo o item 'Cadastro de curr�culo'
	-- dentro do item 'Configura��es'
	SELECT @modIdPai = mod_id
	FROM SYS_Modulo modu WITH(NOLOCK)
	WHERE
	sis_id = @sisId 
	AND modu.mod_nome = 'Configura��es'
	AND modu.mod_situacao <> 3

	SELECT @modId = mod_id
		FROM SYS_Modulo modu WITH(NOLOCK)
		WHERE
		sis_id = @sisId 
		AND modu.mod_idPai = @modIdPai
		AND modu.mod_nome = 'Cadastro de curr�culo'
		AND modu.mod_situacao <> 3

	UPDATE SYS_VisaoModuloMenu
	SET vmm_ordem = 
		(
			SELECT MAX(vmm.vmm_ordem) + 1
			FROM SYS_VisaoModuloMenu vmm WITH(NOLOCK)
			INNER JOIN SYS_Modulo modu WITH(NOLOCK)
				ON modu.sis_id = vmm.sis_id
				AND modu.mod_id = vmm.mod_id
				AND modu.mod_idPai = @modIdPai
				AND modu.mod_situacao <> 3
			WHERE
			vmm.vis_id = 1
			AND vmm.sis_id = @sisId
		)
	WHERE
	vis_id = 1
	AND sis_id = @sisId
	AND mod_id = @modId

	UPDATE SYS_VisaoModuloMenu
	SET vmm_ordem = 
		(
			SELECT MAX(vmm.vmm_ordem) + 1
			FROM SYS_VisaoModuloMenu vmm WITH(NOLOCK)
			INNER JOIN SYS_Modulo modu WITH(NOLOCK)
				ON modu.sis_id = vmm.sis_id
				AND modu.mod_id = vmm.mod_id
				AND modu.mod_idPai = @modIdPai
				AND modu.mod_situacao <> 3
			WHERE
			vmm.vis_id = 2
			AND vmm.sis_id = @sisId
		)
	WHERE
	vis_id = 2
	AND sis_id = @sisId
	AND mod_id = @modId

	-- Coloca por �ltimo o item 'Registro de sugest�es de curr�culo'
	-- dentro do item 'Registro de Classe'
	SELECT @modIdPai = mod_id
	FROM SYS_Modulo modu WITH(NOLOCK)
	WHERE
	sis_id = @sisId 
	AND modu.mod_nome = 'Registro de Classe'
	AND modu.mod_situacao <> 3

	SELECT @modId = mod_id
	FROM SYS_Modulo modu WITH(NOLOCK)
	WHERE
	sis_id = @sisId 
	AND modu.mod_idPai = @modIdPai
	AND modu.mod_nome = 'Registro de sugest�es de curr�culo'
	AND modu.mod_situacao <> 3

	UPDATE SYS_VisaoModuloMenu
	SET vmm_ordem = 
		(
			SELECT MAX(vmm.vmm_ordem) + 1
			FROM SYS_VisaoModuloMenu vmm WITH(NOLOCK)
			INNER JOIN SYS_Modulo modu WITH(NOLOCK)
				ON modu.sis_id = vmm.sis_id
				AND modu.mod_id = vmm.mod_id
				AND modu.mod_idPai = @modIdPai
				AND modu.mod_situacao <> 3
			WHERE
			vmm.vis_id = 1
			AND vmm.sis_id = @sisId
		)
	WHERE
	vis_id = 1
	AND sis_id = @sisId
	AND mod_id = @modId

	UPDATE SYS_VisaoModuloMenu
	SET vmm_ordem = 
		(
			SELECT MAX(vmm.vmm_ordem) + 1
			FROM SYS_VisaoModuloMenu vmm WITH(NOLOCK)
			INNER JOIN SYS_Modulo modu WITH(NOLOCK)
				ON modu.sis_id = vmm.sis_id
				AND modu.mod_id = vmm.mod_id
				AND modu.mod_idPai = @modIdPai
				AND modu.mod_situacao <> 3
			WHERE
			vmm.vis_id = 2
			AND vmm.sis_id = @sisId
		)
	WHERE
	vis_id = 2
	AND sis_id = @sisId
	AND mod_id = @modId

	UPDATE SYS_VisaoModuloMenu
	SET vmm_ordem = 
		(
			SELECT MAX(vmm.vmm_ordem) + 1
			FROM SYS_VisaoModuloMenu vmm WITH(NOLOCK)
			INNER JOIN SYS_Modulo modu WITH(NOLOCK)
				ON modu.sis_id = vmm.sis_id
				AND modu.mod_id = vmm.mod_id
				AND modu.mod_idPai = @modIdPai
				AND modu.mod_situacao <> 3
			WHERE
			vmm.vis_id = 3
			AND vmm.sis_id = @sisId
		)
	WHERE
	vis_id = 3
	AND sis_id = @sisId
	AND mod_id = @modId

	UPDATE SYS_VisaoModuloMenu
	SET vmm_ordem = 
		(
			SELECT MAX(vmm.vmm_ordem) + 1
			FROM SYS_VisaoModuloMenu vmm WITH(NOLOCK)
			INNER JOIN SYS_Modulo modu WITH(NOLOCK)
				ON modu.sis_id = vmm.sis_id
				AND modu.mod_id = vmm.mod_id
				AND modu.mod_idPai = @modIdPai
				AND modu.mod_situacao <> 3
			WHERE
			vmm.vis_id = 4
			AND vmm.sis_id = @sisId
		)
	WHERE
	vis_id = 4
	AND sis_id = @sisId
	AND mod_id = @modId

-- Fechar transa��o
SET XACT_ABORT OFF
COMMIT TRANSACTION