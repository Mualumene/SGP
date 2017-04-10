USE [CoreSSO]
GO

BEGIN TRANSACTION 
SET XACT_ABORT ON   

	DECLARE @sis_id INT = 102
	DECLARE @visaoAdm INT = 1
	DECLARE @visaoGestao INT = 2
	DECLARE @visaoUnidade INT = 3
	DECLARE @nomeSistema VARCHAR(100) = ' SGP'

	EXEC MS_InserePaginaMenu
		@nomeSistema = @nomeSistema -- Nome do sistema (obrigat�rio)
		,@nomeModuloAvo = NULL -- Nome do m�dulo av� (Opcional, apenas quando houver) 
		,@nomeModuloPai = 'Relat�rios' -- Nome do m�dulo pai (Opcional, apenas quando houver)
		,@nomeModulo = 'Atas' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMap1Nome = 'Atas'
		,@SiteMap1Url = NULL
		,@SiteMap2Nome = NULL
		,@SiteMap2Url = NULL
		,@SiteMap3Nome = NULL
		,@SiteMap3Url = NULL
		,@possuiVisaoAdm = 1 -- Indicar se possui vis�o de administador
		,@possuiVisaoGestao = 1 -- Indicar se possui vis�o de Gest�o
		,@possuiVisaoUA = 1 -- Indicar se possui vis�o de UA
		,@possuiVisaoIndividual = 0 -- Indicar se possui vis�o de individual

	EXEC MS_InserePaginaMenu
		@nomeSistema = @nomeSistema -- Nome do sistema (obrigat�rio)
		,@nomeModuloAvo = NULL -- Nome do m�dulo av� (Opcional, apenas quando houver) 
		,@nomeModuloPai = 'Relat�rios' -- Nome do m�dulo pai (Opcional, apenas quando houver)
		,@nomeModulo = 'Gr�ficos' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMap1Nome = 'Gr�ficos'
		,@SiteMap1Url = NULL
		,@SiteMap2Nome = NULL
		,@SiteMap2Url = NULL
		,@SiteMap3Nome = NULL
		,@SiteMap3Url = NULL
		,@possuiVisaoAdm = 1 -- Indicar se possui vis�o de administador
		,@possuiVisaoGestao = 1 -- Indicar se possui vis�o de Gest�o
		,@possuiVisaoUA = 1 -- Indicar se possui vis�o de UA
		,@possuiVisaoIndividual = 0 -- Indicar se possui vis�o de individual

	
	-- Mudando m�dulos de Atas para o mod_idPai novo

	DECLARE @mod_idPai INT = (SELECT mod_id FROM SYS_Modulo WHERE mod_nome = 'Atas' AND sis_id = @sis_id AND mod_situacao = 1)

	UPDATE SYS_Modulo 
	SET mod_idPai = @mod_idPai
	WHERE sis_id = @sis_id AND mod_nome = 'Ata final de resultados'

	UPDATE SYS_Modulo 
	SET mod_idPai = @mod_idPai
	WHERE sis_id = @sis_id AND mod_nome = 'Ata final de enriquecimento curricular'

	UPDATE SYS_Modulo 
	SET mod_idPai = @mod_idPai
	WHERE sis_id = @sis_id AND mod_nome = 'Ata final de resultados e de enriquecimento'

	UPDATE SYS_Modulo 
	SET mod_idPai = @mod_idPai
	WHERE sis_id = @sis_id AND mod_nome = 'Ata s�ntese dos resultados de avalia��o'

	UPDATE SYS_Modulo 
	SET mod_idPai = @mod_idPai
	WHERE sis_id = @sis_id AND mod_nome = 'Ata s�ntese de enriquecimento curricular'

	
	-- Organizando a ordem dos m�dulos 

	UPDATE SYS_VisaoModuloMenu
	SET vmm_ordem = 2
	WHERE sis_id = @sis_id
	AND vis_id = @visaoAdm
	AND mod_id = @mod_idPai

	UPDATE SYS_VisaoModuloMenu
	SET vmm_ordem = 2
	WHERE sis_id = @sis_id
	AND vis_id = @visaoGestao
	AND mod_id = @mod_idPai

	UPDATE SYS_VisaoModuloMenu
	SET vmm_ordem = 4
	WHERE sis_id = @sis_id
	AND vis_id = @visaoUnidade
	AND mod_id = @mod_idPai

	
	-- Mudando m�dulos de gr�ficos para o mod_idPai novo

	SET @mod_idPai = (SELECT mod_id FROM SYS_Modulo WHERE mod_nome = 'Gr�ficos' AND sis_id = @sis_id AND mod_situacao = 1)

	UPDATE SYS_Modulo 
	SET mod_idPai = @mod_idPai
	WHERE sis_id = @sis_id AND mod_nome = 'S�ntese da avalia��o todos os componentes (barra)'

	UPDATE SYS_Modulo 
	SET mod_idPai = @mod_idPai
	WHERE sis_id = @sis_id AND mod_nome = 'An�lise das turmas do ano por componente (coluna)'

	UPDATE SYS_Modulo 
	SET mod_idPai = @mod_idPai
	WHERE sis_id = @sis_id AND mod_nome = 'S�ntese da avalia��o por componente (pizza)'
	
	
	-- Organizando a ordem dos m�dulos 

	UPDATE SYS_VisaoModuloMenu
	SET vmm_ordem = 3
	WHERE sis_id = @sis_id
	AND vis_id = @visaoAdm
	AND mod_id = @mod_idPai

	UPDATE SYS_VisaoModuloMenu
	SET vmm_ordem = 3
	WHERE sis_id = @sis_id
	AND vis_id = @visaoGestao
	AND mod_id = @mod_idPai

	UPDATE SYS_VisaoModuloMenu
	SET vmm_ordem = 5
	WHERE sis_id = @sis_id
	AND vis_id = @visaoUnidade
	AND mod_id = @mod_idPai
	
-- Fechar transa��o     
SET XACT_ABORT OFF 
COMMIT TRANSACTION